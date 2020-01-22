//Local imports
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "stdint.h"
#include <mars_agent_physical_robot_msgs/ActionAssignment.h>
#include <mars_agent_physical_robot_msgs/ActualState.h>
#include <mars_agent_physical_robot_msgs/AssignmentStatus.h>
#include <mars_agent_physical_robot_msgs/CancelTask.h>
#include <mars_agent_physical_robot_msgs/Position.h>
#include <mars_agent_physical_robot_msgs/MotionAssignment.h>
#include <mars_agent_physical_robot_msgs/RobotAction.h>
#include <mars_agent_physical_robot_msgs/RobotAgentProperties.h>
#include <mars_agent_physical_robot_msgs/Sequence.h>
#include <mars_agent_physical_robot_msgs/VehicleType.h>
#include <mars_agent_physical_robot_msgs/Motion.h>

#include <mars_common_msgs/Id.h>
#include <mars_common_msgs/Tuple.h>
#include <mars_common_msgs/Result.h>

#include "RAN/ActionDefinition.h"
#include "sim_msgs/AssignmentId.h"
// #include "RAN/Emergency.h"
// #include "sim_msgs/ErrorAGV.h"
#include "sim_msgs/RobotDescriptionAGV.h"
#include "RAN/Id.h"
#include "sim_msgs/RobotState.h"


//Third part libraries imports
#include <move_base_msgs/MoveBaseAction.h>
#include <nav_msgs/Odometry.h>
#include <tf/tf.h>
#include <actionlib/client/simple_action_client.h>
#include <boost/uuid/uuid.hpp>
#include <boost/uuid/uuid_generators.hpp>
#include <boost/uuid/uuid_io.hpp>


//Global system imports
#include <array>
#include <iostream>
#include <iterator>
#include <cstdlib>
#include <sstream>
#include <algorithm>
#include <vector>
#include <string>
#include <stdio.h>
#include <stdlib.h>
#include <map> //needed by eventual uuid mapper
//#include <RAN/Id.cpp>

typedef actionlib::SimpleActionClient<move_base_msgs::MoveBaseAction> MoveBaseClient;
#define DIM 16


using namespace std;

/*
 * Global variable definition
 */

  std::stringstream ss;
  // list of received action assignments
  std::vector<mars_agent_physical_robot_msgs::ActionAssignment> actionList;
  //list of received motion assignments
  std::vector<mars_agent_physical_robot_msgs::MotionAssignment> motionList;
  //list of cancelled tasks and assignments
  std::vector<sim_msgs::AssignmentId> cancelledAssignmentsList;  
  // list of active assignments in queue
  std::vector<sim_msgs::AssignmentId> queueAssignmentsList;
  
  //
  mars::common::Id robotId;
  int RANStatus;
  // used in ActualState
  mars_common_msgs::Id current_task;  
  mars_common_msgs::Id last_action;  
  mars_common_msgs::Id last_motion;  
  mars_common_msgs::Id current_action;  
  mars_common_msgs::Id current_motion;  
  // used in ActualState
  float current_x = 0.0;
  float current_y = 0.0;
  float current_theta_x = 0.0;
  float current_theta_y = 0.0;
  float current_theta_z = 0.0;
  float current_theta_w = 0.0;
  float current_x_speed = 0.0;
  float current_angular_speed = 0.0;
  
//   std::array<int, DIM> zeros INVALID_ID;

/*
*This class contains the definition of the whole communication set for the RAN
*/
class PubSub  {
	private:
		ros::NodeHandle n; 
		// from  TP
		ros::Subscriber motionSub;
		ros::Subscriber actionSub;
		ros::Subscriber taskSub;	
		// ros::Subscriber initialSub; // initial pose for the robot	
		//utility subscription
		ros::Subscriber positionSub;
		// to TP
		ros::Publisher statusPub; 
		ros::Publisher descriptionPub;		
		//ros::Publisher errorPub;	
		ros::Publisher assignmentPub; // current Assignment status 
		ros::Publisher positionPub; // current speed and position (only while in motion)
		ros::Publisher motionPub; //same as positionPub but with opilV3 standard, used for HMI
		// from AGV
		ros::Subscriber robotStatusSub; 
		ros::Subscriber robotDescriptionSub;
		//ros::Subscriber robotErrorSub;
		// to AGV
		ros::Publisher actionAGVPub;		

	public:
		
	    //definition of the ROS subscribers and publishers
		PubSub(){
			// from TP
			motionSub = n.subscribe("/robot_opil_v2/motion_channel", 1, &PubSub::motionCallback, this);
			actionSub = n.subscribe("/robot_opil_v2/action_channel", 1, &PubSub::actionCallback, this);
			taskSub = n.subscribe("/robot_opil_v2/task_management_channel", 1, &PubSub::taskCallback, this);
			// from Robot/AGV
			robotDescriptionSub = n.subscribe("/robot_opil_v2/description_channel_AGV", 1,&PubSub::publishDescriptionCallback, this);
			robotStatusSub = n.subscribe("/robot_opil_v2/status_channel_AGV", 1,&PubSub::publishStatusCallback, this);
			// robotErrorSub = n.subscribe("/robot_opil_v2/error_channel_AGV", 1,&PubSub::publishErrorRANCallback, this);
			ss << robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT);	
			// utility function		
			// positionSub = n.subscribe("/robot_"+ss.str()+"/base_pose_ground_truth", 1, &PubSub::positionCallback, this);
			positionSub = n.subscribe("/base_pose_ground_truth", 1, &PubSub::positionCallback, this);
			// to TP
			statusPub = n.advertise<mars_agent_physical_robot_msgs::ActualState>("/robot_opil_v2/status_channel", 1);
			descriptionPub = n.advertise<mars_agent_physical_robot_msgs::RobotAgentProperties>("/robot_opil_v2/description_channel", 1);
			// errorPub = n.advertise<RAN::ErrorRAN>("/robot_opil_v2/error_channel", 1);
			assignmentPub = n.advertise<mars_agent_physical_robot_msgs::AssignmentStatus>("/robot_opil_v2/assignment_channel", 1);
			positionPub = n.advertise<mars_agent_physical_robot_msgs::Position>("/robot_opil_v2/position_channel", 1);
			motionPub = n.advertise<mars_agent_physical_robot_msgs::Motion>("/robot_opil_v2/current_motion", 1);
			// to AGV
			actionAGVPub = n.advertise<RAN::ActionDefinition>("/robot_opil_v2/action_channel_AGV", 1);
		}

		// /*
		// * This function manages the Action messages.
		// * A message may also update an existing assignment
		// */
	 	void actionCallback(const mars_agent_physical_robot_msgs::ActionAssignment& msg){
		// look for an existing action with same task Id and Action Id	
			bool found = false;
			mars::common::Id msgTaskID(msg.task_id);
			mars::common::Id msgActionID(msg.action_id);
			std::vector<mars_agent_physical_robot_msgs::ActionAssignment>::iterator searchResult; 
			for(searchResult = actionList.begin(); searchResult < actionList.end() && !found; searchResult++){		
				//if(areTheyEqual(searchResult->task_id.uuid, msg.task_id.uuid) && areTheyEqual(searchResult->action_id.uuid, msg.task_id.uuid)){
					mars::common::Id searchOrderID(searchResult->task_id);
					mars::common::Id searchActionID(searchResult->action_id);
				if(msgTaskID == searchOrderID && msgActionID == searchActionID){
				//if(searchResult->task_id.uuid == msg.task_id.uuid && searchResult->action_id.uuid ==msg.action_id.uuid){
						found = true;
						//replace old action with new one
						searchResult->sequence.length = msg.sequence.length;
						searchResult->sequence.sequence_number = msg.sequence.sequence_number;
						searchResult->robot_action = msg.robot_action;
						// searchResult->header.stamp = msg.header.stamp;
						// searchResult->header.frame_id = msg.header.frame_id;
						// searchResult->header.seq = msg.header.seq;						
					}				
				}
				if(!found){	
					// add the new action to the action list				
					actionList.push_back(msg);
					sim_msgs::AssignmentId ai;
					// std::copy(msg.task_id.uuid, msg.task_id.uuid+DIM, ai.task_id)
					// std::copy(msg.action_id.uuid, msg.action_id.uuid+DIM, ai.action_id);
					ai.task_id.uuid = msg.task_id.uuid;
					ai.action_id.uuid = msg.action_id.uuid;
					ai.motion_id = mars::common::Id::createInvalidId().toMsg(); 
					// add a new entry in the Indexes list
					ROS_INFO("Aggiungo  azione alla queueAssignmentsList");
					queueAssignmentsList.push_back(ai);
					/*debug
					std::cout << "I added a new action - queue size "<< queueAssignmentsList.size() << "\n";*/
				}			
		}

	// 	/*
	// 	* This function manages the Motion messages.
	// 	* A message may also update an existing assignment
	// 	*/
		void motionCallback(const mars_agent_physical_robot_msgs::MotionAssignment& msg){
			//ROS_INFO("I am here - motion ID %d", msg.motion_id.uuid);
			//check if the robot is the right one    
				// look for an existing motion with same task Id and Motion Id	
				bool found = false;
				std::vector<mars_agent_physical_robot_msgs::MotionAssignment>::iterator searchResult; 
				for(searchResult = motionList.begin(); searchResult < motionList.end() && !found; searchResult++){	
					ROS_INFO(" %d -> %d", searchResult->motion_id.uuid, msg.motion_id.uuid);
					if(searchResult->task_id.uuid == msg.task_id.uuid && searchResult->motion_id.uuid == msg.motion_id.uuid){
						ROS_INFO("I updated the existing motion");
						found = true;
						//replace old motion with new one
 						searchResult->sequence.length = msg.sequence.length;
						searchResult->sequence.sequence_number = msg.sequence.sequence_number;						
						searchResult->header.stamp = msg.header.stamp;
						searchResult->header.frame_id = msg.header.frame_id;
						searchResult->header.seq = msg.header.seq;
						searchResult->motion_area = msg.motion_area;
						searchResult->point_id = msg.point_id;
						searchResult->point.theta = msg.point.theta;
						searchResult->point.x = msg.point.x;
						searchResult->point.y = msg.point.y;
						searchResult->max_acceleration.linear.x = msg.max_acceleration.linear.x;
						searchResult->max_acceleration.linear.y = msg.max_acceleration.linear.y;
						searchResult->max_acceleration.linear.z = msg.max_acceleration.linear.z;
						searchResult->max_acceleration.angular.x = msg.max_acceleration.angular.x;
						searchResult->max_acceleration.angular.y = msg.max_acceleration.angular.y;
						searchResult->max_acceleration.angular.z = msg.max_acceleration.angular.z;
						searchResult->max_velocity.linear.x = msg.max_velocity.linear.x;
						searchResult->max_velocity.linear.y = msg.max_velocity.linear.y;
						searchResult->max_velocity.linear.z = msg.max_velocity.linear.z;
						searchResult->max_velocity.angular.x = msg.max_velocity.angular.x;
						searchResult->max_velocity.angular.y = msg.max_velocity.angular.y;
						searchResult->max_velocity.angular.z = msg.max_velocity.angular.z;
						searchResult->is_waypoint = msg.is_waypoint;
						searchResult->use_orientation = msg.use_orientation;
						searchResult->motion_area.header.stamp = msg.motion_area.header.stamp;
						searchResult->motion_area.header.seq = msg.motion_area.header.seq;
						searchResult->motion_area.header.frame_id = msg.motion_area.header.frame_id;
						searchResult->motion_area.polygon.points = msg.motion_area.polygon.points;
					}				
				}
				if(!found){     
					// add the new motion into the motions list
					motionList.push_back(msg);					
					sim_msgs::AssignmentId ai;
					ai.task_id.uuid =msg.task_id.uuid;
					ai.action_id = mars::common::Id::createInvalidId().toMsg();
					ai.motion_id.uuid = msg.motion_id.uuid;
					// add a new entry in the Indexes list
					ROS_INFO("Aggiungo  motion alla queueAssignmentsList");
					queueAssignmentsList.push_back(ai);
					/* debug
					std::cout << "I added a new motion - queue size "<< queueAssignmentsList.size() << "\n";*/
				}					
	 	}	

	// 	/*
	// 	* This function manages the Cancel Task messages.
	// 	* It is possible to cancel:
	// 	* 1- a task, specifying only the task_id
	// 	* 2- an action, specifying task_id and action_id
    //   * 3- a motion, specifying task_id and motion_id
	// 	* It is not possible to have both action and motion ids at the same time
	// 	* 
	// 	* Note that tasks or assignments are removed from the cancelled AssignmentsList but are saved in the cancelledAssignmentList
	// 	* An unused field is identified by the value 0 (zero), therefore assignments' Ids can only start from 1 
	// 	*/
	 	void taskCallback(const mars_agent_physical_robot_msgs::CancelTask& msg){				
				// RAN::AssignmentId ai;
				// //std::copy(msg.task_id.uuid, msg.task_id.uuid+DIM, ai.task_id);
				// ai.task_id.uuid = msg.task_id.uuid;
				// ai.action_id.uuid = INVALID_ID;
				// ai.motion_id.uuid = INVALID_ID;
				// // if(msg.action_id.uuid != INVALID_ID){	
				// // 	//std::copy(msg.sction_id.id, msg.action_id.uuid+DIM, ai.action_id);
				// // 	ai.action_id.uuid = msg.action_id.uuid;	
				// // 	/* debug
				// // 	ROS_INFO("cancel action %d",ai.action_id);*/				
				// // }else{
				// // 	if(msg.motion_id.uuid != INVALID_ID){
				// // 		// mark a specific motion as cancelled
				// // 		//std::copy(msg.motion_id.uuid, msg.motion_id.uuid+DIM, ai.motion_id);
				// // 		ai.motion_id.uuid = msg.motion_id.uuid;
				// // 		/* debug
				// // 		ROS_INFO("cancel motion %d",ai.motion_id);
				// // 	}
				// // 	else{
				// // 		ROS_INFO("cancel task %d",ai.task_id);*/
				// // 	}					
				// // }
				// cancelledAssignmentsList.push_back(ai);				
				// bool found = false;
				// // look for and remove this assignment's IDs from the IDs list
				// std::vector<RAN::AssignmentId>::iterator searchResult; 
				// for(searchResult = queueAssignmentsList.begin(); searchResult < queueAssignmentsList.end() && !found ; searchResult++){		
				// 	if(searchResult->task_id.uuid == ai.task_id.uuid && searchResult->action_id.uuid == ai.action_id.uuid && searchResult->motion_id.uuid == ai.motion_id.uuid){
				// 		found = true;
				// 		queueAssignmentsList.erase(searchResult);
				// 	}
				// }//end if robot			
      }		
		
	// 	/**
	// 	* This function manages the retrieval of the position.
	// 	* 
	// 	*/
	 	void positionCallback(const nav_msgs::Odometry& msg){
			current_x = msg.pose.pose.position.x;
			current_y = msg.pose.pose.position.y;
			current_theta_x = msg.pose.pose.orientation.x;
			current_theta_y = msg.pose.pose.orientation.y;
			current_theta_z = msg.pose.pose.orientation.z;
			current_theta_w = msg.pose.pose.orientation.w;			
			current_x_speed = msg.twist.twist.linear.x;			
			current_angular_speed = msg.twist.twist.angular.z;
			// RAN IS MOVING
			// RAN_IS_MOVING = 1;
			if(RANStatus == 1 ){
				// we also send a message to the position_channel if the robot is in motion
				mars_agent_physical_robot_msgs::Position position;
				position.robot_id = robotId.toMsg();
				position.current_position.pose.position.x = current_x;
				position.current_position.pose.position.y = current_y;
				position.current_position.pose.orientation.x = current_theta_x;	
				position.current_position.pose.orientation.y = current_theta_y;	
				position.current_position.pose.orientation.z = current_theta_z;	
				position.current_position.pose.orientation.w = current_theta_w;			
				position.current_velocity.linear.x = current_x_speed;			
				position.current_velocity.angular.z = current_angular_speed;	
				//string debug
				// here start the addition for the new messages required from OPIL_V3
				mars_agent_physical_robot_msgs::Motion motion;
				motion.current_position.header.frame_id = '/map';
				motion.current_position.pose.position.x = current_x;
				motion.current_position.pose.position.y = current_y;
				motion.current_position.pose.orientation.x = current_theta_x;	
				motion.current_position.pose.orientation.y = current_theta_y;	
				motion.current_position.pose.orientation.z = current_theta_z;	
				motion.current_position.pose.orientation.w = current_theta_w;			
				motion.current_velocity.linear.x = current_x_speed;			
				motion.current_velocity.angular.z = current_angular_speed;
				ROS_INFO(" Motion, everyting fine \n");
				positionPub.publish(position);
				motionPub.publish(motion);
			}
	 	}

	// 	/*
	// 	* This function is activated each time and RobotStatus message is received - so the "/robot_opil_v2/status_channel_AGV" is used
	// 	* This function manages what happend when status data are received from the HW
	// 	*/
	 	void publishStatusCallback(const sim_msgs::RobotState& msg){
			// RAN state publishing	
			std::stringstream strStrm;
			mars_agent_physical_robot_msgs::ActualState state;
			state.header.frame_id = "map";//"base_link";
			state.header.stamp = ros::Time::now();
			ROS_INFO("%s \n", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
			state.robot_id = robotId.toMsg();
			// ROS_INFO("checking RAN status for action %d - %d - %d",msg.last_terminated_action.action_id,current_action.uuid,RANStatus);
			// here we handle how actions are terminated
			if( msg.last_terminated_action.action_id.uuid == current_action.uuid && msg.last_terminated_action.task_id.uuid == current_task.uuid && RANStatus == 2){				
				RANStatus = 0;
				ROS_INFO("RAN status changed to 0");
			}
			state.MoveBaseSimpleState = RANStatus;
			//string debug
			//ROS_INFO("@status, everything's fine \n");
			statusPub.publish(state);
	 	}


	// 	/*
	// 	* This function is activated each time and RobotDescriptionAGV message is received - so the "/robot_opil_v2/description_channel_AGV" is used
	// 	* This function manages what happend when description data are received from the HW
	// 	*/
		void publishDescriptionCallback(const sim_msgs::RobotDescriptionAGV& msg){
			mars_agent_physical_robot_msgs::RobotAgentProperties description;
			// description.header.stamp = ros::Time::now();
			// description.header.frame_id = "robot";
			description.robot_id = robotId.toMsg();
			description.type.vehicle_type = msg.vehicle_type;
			description.min_height = msg.min_height;
			description.max_height = msg.max_height;
			description.payload = msg.payload;
			// description.max_forward_velocity = std::max(msg.max_pos_x_vel, msg.max_pos_y_vel);
			// description.max_backward_velocity = std::max(msg.max_neg_x_vel, msg.max_neg_y_vel);
			// description.max_angular_velocity = std::max(msg.max_pos_ang_vel, msg.max_neg_ang_vel);
			// description.max_linear_acceleration = std::max(msg.max_pos_x_acc, msg.max_pos_y_acc);
			// description.max_linear_deceleration = std::max(msg.max_neg_x_acc, msg.max_neg_y_acc);
			description.max_pos_x_vel = msg.max_pos_x_vel;
			description.max_neg_x_vel = msg.max_neg_x_vel;
			description.max_pos_x_acc = msg.max_pos_x_acc;
			description.max_neg_x_acc = msg.max_neg_x_acc;
			description.max_pos_y_vel = msg.max_pos_y_vel;
			description.max_neg_y_vel = msg.max_neg_y_vel;
			description.max_pos_y_acc = msg.max_pos_y_acc;
			description.max_neg_y_acc = msg.max_neg_y_acc;
			// description.max_angular_acceleration = msg.max_pos_ang_acc;
			// description.max_angular_deceleration = msg.max_neg_ang_acc;
			description.max_pos_ang_vel = msg.max_pos_ang_vel;
			description.max_neg_ang_vel = msg.max_neg_ang_vel;
			description.max_pos_ang_acc = msg.max_pos_ang_acc;
			description.max_neg_ang_acc = msg.max_neg_ang_acc;
			description.min_turning_radius = msg.min_turning_radius;
			description.action_capability = msg.action_capability;
			// description.robot_actions.category = msg.action_capability.category;
			// description.robot_actions.action = msg.action_capability.action;
			// description.robot_actions.attributes = msg.action_capability.attributes;
			// description.robot_actions.description = msg.action_capability.description;
			// description.agv_msg = msg;

			//robot description publishing	
			//string debug
			//ROS_INFO("@description, everything's fine \n");
			descriptionPub.publish(description);
	 	}	
		
	// 	/*
	// 	* This function is activated each time an error occurs on the RAN or an ErrorAGV message is received  - so the the "/robot_opil_v2/error_AGV_channel" is used
	// 	* This function sends data about errors to the OCB
	// 	*/
	// 	void publishErrorRANCallback(const RAN::ErrorAGV& err){
	// 		RAN::ErrorRAN error;
	// 		error.agv_error.description = err.description;
	// 		error.agv_error.vehicle_id.id = err.vehicle_id.id;
	// 		error.agv_error.error_AGV = err.error_AGV;
	// 		error.robot_id.id = robotId;
	// 		error.error_RAN = 5;
	// 		error.description = "forward error";
	// 		errorPub.publish(error);
	// 	}


	// 	/*
	// 	* This function publishes an action to the AGV
	// 	*/
		void publishActionToAGV(const mars_agent_physical_robot_msgs::ActionAssignment& actionRAN){
			// action description is incapsulated and sent to the AGV
			RAN::ActionDefinition action2AGV;
	 		//action2AGV.header.frame_id= actionRAN.header.frame_id;
	 		//action2AGV.header.seq = actionRAN.header.seq;
	 		action2AGV.action = actionRAN.robot_action;
	 		action2AGV.robot_id.uuid = actionRAN.robot_id.uuid;
	 		action2AGV.action_id.uuid = actionRAN.action_id.uuid;
	 		action2AGV.task_id.uuid = actionRAN.task_id.uuid;
	 		action2AGV.robot_id.description = actionRAN.robot_id.description;
	 		action2AGV.task_id.description = actionRAN.task_id.description;	
	 		action2AGV.action_id.description = actionRAN.action_id.description;

	 		// send it to the AGV
	 		actionAGVPub.publish(action2AGV);
	 	}

};// end class


/*
* This function returns true if there is in the cancelledAssignmenstList
*/
// bool findInCancelledList(int task, int action, int motion){
// 	bool found = false;
// 	std::vector<RAN::AssignmentId>::iterator searchResult; 
// 	for(searchResult = cancelledAssignmentsList.begin(); searchResult < cancelledAssignmentsList.end() && !found ; searchResult++){
// 		/* debug
// 		ROS_INFO("I'm here %d - %d - %d --- %d - %d - %d ", task,action,motion,searchResult->task_id,searchResult->action_id,searchResult->motion_id);*/
// 		if(searchResult->task_id == task && searchResult->action_id == action && searchResult->motion_id == motion){
// 			found = true;
// 		}
// 	}
// 	return found;
// }


/*
 * Main function
 * For each task - following the ID order -  we first execute all the motions and then the actions
 */
 int main(int argc, char **argv){
 	bool new_task = false;
	//*************** INITIALIZATION *************************** 
	// set up robot ID - that should arrive as a parameter
	//RANStatus = 1;  //PORCATA, POI TOGLILA
	if(argc < 2){
		ROS_ERROR("Robot ID MUST be specified!");
		return -1;	
	}
	// start ROS node
	ros::init(argc, argv, "robot_agent");   
	ros::NodeHandle nH = ros::NodeHandle("~");
	std::string robotIdParam;
	nH.getParam("robot_id", robotIdParam);
	robotId.initialize(robotIdParam, "", mars::common::Id::UUIDCreationType::CREATE_FROM_UUID);	
	ROS_INFO("Hello, I am %s",robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
	ROS_INFO("%s \n", robotIdParam.c_str()); 
	// global variable initialization	
	current_task = mars::common::Id::createInvalidId().toMsg();
	last_motion = mars::common::Id::createInvalidId().toMsg();
	current_motion = mars::common::Id::createInvalidId().toMsg();
	last_action = mars::common::Id::createInvalidId().toMsg();
	current_action = mars::common::Id::createInvalidId().toMsg();
	// initialize publishers and subscribers
	PubSub pubSubList;
	//open the movebase service
	MoveBaseClient ac("/move_base", true);
	//wait for the action server to come up
	while(!ac.waitForServer(ros::Duration(5.0))){
		ROS_INFO(" robot %s : Waiting for the move_base action server to come up", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
		ROS_INFO(" robot %s : Waiting for the move_base action server to come up", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
	}	
	ROS_INFO(" robot %s : Initialized channels",robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());	
	ros::spinOnce();  
	ros::Rate loop_rate(1);	
	// cycle variable definition and initialization
	mars_common_msgs::Id taskId;
	while(queueAssignmentsList.size() < 1){
		ros::Duration(1).sleep();
		ros::spinOnce();
	}
	taskId = queueAssignmentsList.at(0).task_id; // first task id assigned
	queueAssignmentsList.erase(queueAssignmentsList.begin()); //deletion of the first element
	// motionSequenceIndex defines the position in a sequence of the current motion 
	int motionSequenceIndex = 1; 
	// actionSequenceIndex defines the position in a sequence of the current action 
	int actionSequenceIndex = 1; 
	bool motionCompleted = false;   
	// motionIndex defines which motions are we working on
	int motionIndex = 0;
	// actionIndex defines which action are we working on
	int actionIndex = 0;
	// motionDimension counts the completed motions
	int motionDimension = 0;
	// actionDimension counts the completed actions
	int actionDimension = 0;
	bool goalSent=false;	
	//************************** START ********************************************
	while(ros::ok()){
		/* debug 
		std::vector<RAN::AssignmentId>::iterator searchResult; 
		for(searchResult = queueAssignmentsList.begin(); searchResult < queueAssignmentsList.end(); searchResult++){
			std::cout << " T:  " << searchResult->task_id << " - A: " << searchResult->action_id << " - M: " << searchResult->motion_id <<"\n";					
		}*/		
		if (new_task &&  (queueAssignmentsList.size() >0)){
			ROS_INFO("RAN -  Incremento il task ");
			taskId = queueAssignmentsList.at(0).task_id; // first task id assigned 
			//queueAssignmentsList.erase(queueAssignmentsList.begin()); //deletion of the first element
			new_task = false;
		}
		current_task = taskId;
		ROS_INFO("RAN - robot %s is working  on task %s  with status %d \n", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str(), mars::common::Id(taskId).getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str(),RANStatus);
		if(motionList.size() == motionDimension && actionList.size() == actionDimension){
			// all tasks completed or no task given
			RANStatus = 0;
			ROS_INFO("robot status = 0 1");
			/*debug
			ROS_INFO(" robot %d : Waiting for assignments",robotId);
			*/
			ROS_INFO("\n task id: %d  action dimension: %d motion dimension: %d motion sequence index: %d action sequence index: %d ", 
				taskId.uuid[0], actionDimension, motionDimension, motionSequenceIndex, actionSequenceIndex);
		}
		else{			
		//************MOTION***************************************************
		   
			ROS_INFO("Motion list [%lu], Action list [%lu] , Queue List[%lu]",motionList.size(),actionList.size(), queueAssignmentsList.size());
			/*debug */
			while(motionIndex < motionList.size() && !motionCompleted){				
				//robot navigation
				if (motionList[motionIndex].task_id.uuid == taskId.uuid && motionSequenceIndex == motionList[motionIndex].sequence.sequence_number){
					//if the motion is cancelled or the task is cancelled
					current_motion = motionList[motionIndex].motion_id;
					current_action = mars::common::Id::createInvalidId().toMsg();
					// if(findInCancelledList(motionList[motionIndex].task_id.uuid,0,motionList[motionIndex].motion_id.uuid) ||
					//    findInCancelledList(motionList[motionIndex].task_id.uuid,0,0)){						
					// 	//if cancelled, move to the next motion, but before check if this is the last motion of the sequence						
					// 	last_motion.id = current_motion.id;
					// 	motionDimension++;
					// 	if(motionSequenceIndex == motionList[motionIndex].sequence.length){
					// 		motionCompleted = true;
					// 		motionSequenceIndex=1;
					// 	}
					// 	motionSequenceIndex++;
					// 	goalSent=false;
					// }
					// else{
						/* debug
						ROS_INFO(" task id: %d \n assignment id: %d \n sequence number: %d \n action dimension: %d \n motion dimension: %d", 
						motionList[motionIndex].task_id.uuid, motionList[motionIndex].point_id.id, motionList[motionIndex].sequence.sequence_number, actionDimension, motionDimension);*/
						
						RANStatus = 1;			
						move_base_msgs::MoveBaseGoal goal;
						//we'll send a goal to the robot in absolute coordinates
						goal.target_pose.header.frame_id = "/map";
						goal.target_pose.header.stamp = ros::Time::now();
						goal.target_pose.pose.position.x = motionList[motionIndex].point.x;
						goal.target_pose.pose.position.y = motionList[motionIndex].point.y;
						goal.target_pose.pose.position.z = 0.0;
						if(motionList[motionIndex].use_orientation){ //degrees
							goal.target_pose.pose.orientation.x = 0.0;
							goal.target_pose.pose.orientation.y = 0.0;					
							goal.target_pose.pose.orientation.z = sin(motionList[motionIndex].point.theta/2);
							goal.target_pose.pose.orientation.w = cos(motionList[motionIndex].point.theta/2);
						}
						else{
							// quaternions
							goal.target_pose.pose.orientation.x = 0.0;
							goal.target_pose.pose.orientation.y = 0.0;
							goal.target_pose.pose.orientation.z = 0.0;
							goal.target_pose.pose.orientation.w = 1.0; 
						}
						if(!goalSent){
							ac.sendGoal(goal);
							goalSent=true;
							/*debug
							ROS_INFO("robot %d : Sending goal in state %s",robotId,ac.getState().toString().c_str());*/
						}		
						if(ac.getState() == actionlib::SimpleClientGoalState::SUCCEEDED){
							ROS_INFO("robot %s : Hooray", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
							// I have done my job, so I move to the next element of the sequence, unless this is the last element of the sequence
							last_motion = current_motion;
							motionDimension++;
							if (queueAssignmentsList.size() > 0)
							{
								queueAssignmentsList.erase(queueAssignmentsList.begin()); // remove the assignment after completion
							} 
							RANStatus = 0; 
							ROS_INFO("robot state = 0");
							if(motionSequenceIndex == motionList[motionIndex].sequence.length){								
								motionCompleted = true;
								motionSequenceIndex=1;
								current_motion = mars::common::Id::createInvalidId().toMsg();
							}
							motionSequenceIndex++;
							goalSent=false; 
						}else{
							//ROS_INFO("robot %d : Movebase in %s state", robotId, ac.getState().toString().c_str());
							RANStatus = 1;							
						} 	     	
					// }// endif not cancelled task
				}//endif task and sequence ok
				motionIndex++;
				ros::spinOnce();
			}//end while motion index
			motionIndex = 0;			
			//motions for the current task are completed
         //RANStatus = 0;
	    //********* ACTIONS *********************************************			
			while(actionIndex < actionList.size() && motionCompleted){				
				//ROS_INFO("robot %d : performing an action",robotId);
				//action management
				if (actionList[actionIndex].task_id.uuid == taskId.uuid && actionSequenceIndex == actionList[actionIndex].sequence.sequence_number){
					//if the task had been cancelled
					// if(findInCancelledList(actionList[actionIndex].task_id.uuid, actionList[actionIndex].action_id.uuid,0) || findInCancelledList(actionList[actionIndex].task_id.uuid,0,0)){					
					// 	taskId++;
					// 	//reset and move to next task
					// 	motionSequenceIndex = 1; 
					// 	actionSequenceIndex = 1; 
					// 	motionCompleted = false;											
					// 	motionIndex = 0;
					// 	actionIndex = 0;
					// }
					// else{
						current_action = actionList[actionIndex].action_id;
						current_motion = mars::common::Id::createInvalidId().toMsg();
						RANStatus = 2;
						//send to robot						
						
						//ROS_INFO(" task id: %d \n assignment id: %d \n sequence number: %d \n action dimension: %d \n motion dimension: %d",actionList[actionIndex].task_id.uuid, actionList[actionIndex].action_id.uuid, actionList[actionIndex].sequence.sequence_number, actionDimension, motionDimension);
						
		            // ACTION handling 
						// publish action data to the AGV				
						pubSubList.publishActionToAGV(actionList[actionIndex]);
						// wait until its status changes - this happens when the AGV tells us that the current action had been completed
						while(RANStatus == 2){
							// just wait							
							ros::Duration(1).sleep();
							ros::spinOnce();
						}					
						// status has changed -> action done
						actionDimension++;
						if (queueAssignmentsList.size() >0)
						{
							queueAssignmentsList.erase(queueAssignmentsList.begin()); // remove the assignment after completion
						}
						ROS_INFO("New len of queueAssignmentsList : %d" , queueAssignmentsList.size());
						//ROS_INFO("robot %d : done performing action %d",robotId, current_action.id);
						//RANStatus = 0;					
						if(actionSequenceIndex == actionList[actionIndex].sequence.length){						
							// moving to next task 
							ROS_INFO("robot %s : Ended task %s", robotId.getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str(), mars::common::Id(taskId).getUUIDAsString(mars::common::Id::UUIDFormat::HEXDEC_SPLIT).c_str());
							//reset and move to next task
							//queueAssignmentsList.erase(queueAssignmentsList.begin()); //deletion of the first element
							//taskId = queueAssignmentsList.at(0).task_id; // first task id assigned -------- ERRORE???
							//queueAssignmentsList.erase(queueAssignmentsList.begin()); //deletion of the first element
							new_task = true ; //a new task can be 
							motionSequenceIndex = 1; 
							actionSequenceIndex = 1; 
							motionCompleted = false; 						 
							motionIndex = 0;
							actionIndex = 0;
						}
						else{
							//move to the next action in the sequence
							actionSequenceIndex++;					
						}
					//}// endif not canceled task	
				}//endif task and sequence ok
				last_action = current_action;
				current_action = mars::common::Id::createInvalidId().toMsg();
				actionIndex++;
				ros::spinOnce();
			}//end while action index
			actionIndex = 0;
			RANStatus = 0;	
			ROS_INFO("Robot status = 0 2");			
		}//endelse not empty
      //RANStatus = 0;	
		//ROS_INFO("Robot status = 0 2");	
		ros::spinOnce();
		loop_rate.sleep();				
	}//end while ROS
	return 0;
}
// end of program

