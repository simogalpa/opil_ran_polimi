//Local imports
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "stdint.h"

#include <mars_agent_physical_robot_msgs/VehicleType.h>

#include <mars_common_msgs/Id.h>
#include <mars_common_msgs/Tuple.h>
#include <mars_common_msgs/Result.h>

#include "RAN/ActionDefinition.h"
#include "sim_msgs/AssignmentId.h"
// #include "RAN/Emergency.h"
// #include "sim_msgs/ErrorAGV.h"
// #include "RAN/ErrorRAN.h"
#include "sim_msgs/RobotDescriptionAGV.h"
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

class PubSub  {
	private:
        ros::NodeHandle n; 
		// I need these to simulate the AGV behaviour
		ros::Timer timer_description;
		ros::Timer timer_status;
		ros::Timer timer_error;
		// test publishers that will simulate the AGV
		ros::Publisher AGVStateSim;
		ros::Publisher AGVDescriptionSim;

	public:
		
	    //definition of the ROS subscribers and publishers
		PubSub(){
			// I need these to simulate the AGV behaviour
			timer_status = n.createTimer(ros::Duration(1), &PubSub::publishRobotStatusCallback, this);
			timer_description = n.createTimer(ros::Duration(60), &PubSub::publishRobotDescriptionCallback, this);	
			timer_error = n.createTimer(ros::Duration(180), &PubSub::publishErrorAGVCallback, this);	
			AGVStateSim = n.advertise<sim_msgs::RobotState>("/robot_opil_v2/status_channel_AGV1", 1);
			AGVDescriptionSim = n.advertise<sim_msgs::RobotDescriptionAGV>("/robot_opil_v2/description_channel_AGV", 1);	
			// AGVErrorSim = n.advertise<RAN::ErrorAGV>("/robot_opil_v2/error_channel_AGV", 1);	
		}

	// 	/*
	// 	* simulation
	// 	* This function simulates the AGV behaviour in sending its status
	// 	*/
		void publishRobotStatusCallback(const ros::TimerEvent& e){
			// Robot state publishing	
			//aggiungere i campi di motion?
			sim_msgs::RobotState state;
			state.header.frame_id = "robot";//"base_link";
			state.header.stamp = ros::Time::now();
			// state.vehicle_id = robotId.toMsg();
			// if(current_action.uuid != empty_uuid){
			// state.last_terminated_action.action_id.uuid = current_action.uuid;
			// state.last_terminated_action.motion_id.uuid = INVALID_ID;
			// state.last_terminated_action.task_id.uuid= current_task.uuid;
			// }		
			AGVStateSim.publish(state);
	 	}

	// 	/*
	// 	* simulation
	// 	* This function simulates the AGV behaviour in sending its description
	// 	*/
	 	void publishRobotDescriptionCallback(const ros::TimerEvent& e){
			sim_msgs::RobotDescriptionAGV description;
            description.left_size = 0.5;
            description.right_size = 0.5;
            description.front_size = 0.5;
            description.rear_size = 0.5;
            description.min_height = 0.5;
            description.max_height = 1.0;
            description.payload = 30.0;
            description.max_pos_x_vel = 1.0;
            description.max_neg_x_vel = 0.5;
            description.max_pos_x_acc = 0.5;
            description.max_neg_x_acc = 0.25;
            description.max_pos_y_vel = 0.25;
            description.max_neg_y_vel = 0.125;
            description.max_pos_y_acc = 0.25;
            description.max_neg_y_acc = 0.125;
            description.max_pos_ang_vel = 1.0;
            description.max_neg_ang_vel = 0.5;
            description.max_pos_ang_acc = 0.5;
            description.max_neg_ang_acc = 0.25;
            description.velocity_control_sensitivity = 1.0;
            description.min_turning_radius = 0.5;
            description.batt_capacity = 12.5;
            description.batt_max_voltage = 12.5;
            description.vehicle_type = 1;
            description.vendor = "";
			//string debug
			// ROS_INFO("Sono arrivato in RobotDescriptionCallback \n");
			//robot description publishing	
			//string debug
			//ROS_INFO("@description from AGV, everything's fine \n");
			AGVDescriptionSim.publish(description);
		}	

	// 	/*
	// 	* simulation
	// 	* This function simulates an error on the AGV
	// 	*/
	 	void publishErrorAGVCallback(const ros::TimerEvent& e){
	// 		RAN::ErrorAGV error;
	// 		error.description = "simulated error";
	// 		error.error_AGV = 4;
	// 		error.vehicle_id.id = 1234;
	// 		AGVErrorSim.publish(error);
		}

};

 int main(int argc, char **argv){
//************************** START ********************************************
	ros::init(argc, argv, "sim_agent"); 
	PubSub pubSubList; 
	while(ros::ok()){
		ros::spinOnce();
		ros::Duration(0.2).sleep();
    }
 }
