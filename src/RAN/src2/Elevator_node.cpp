//Local imports
#include "ros/ros.h"
#include "std_msgs/String.h"
#include "stdint.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"
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

#include <mars_common_msgs/Id.h>
#include <mars_common_msgs/Tuple.h>
#include <mars_common_msgs/Result.h>

#include <RAN/ActionDefinition.h>
#include <RAN/AssignmentId.h>
// #include <RAN_msgs/Emergency.h>
// #include <RAN_msgs/ErrorAGV.h>
#include <RAN/RobotDescriptionAGV.h>
#include <RAN/RobotState.h>
#include <RAN/ElevatorStatus.h>

#include "RAN/Id.h"
#include "RAN/Elevator.h"

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

using namespace std;

// il nodo prevede che le azioni arrivino una per volta solo al completamento della precedente, non è previsto un concatenamento di azioni, di questo si deve occupare il RAN
/*
 * Global variable definition
 */
 int status = 0; // 0: wait || 1 :performing action
 RAN::ElevatorStatus elevatorStatusGlobal;
 mars_common_msgs::Id  actualAction;
 mars_common_msgs::Id   task_id;
 mars_common_msgs::Id  vehicle_id;


 
 
// Class containing all the objects to manages the topic connections
void waitelevator(int)  ;
void callelevator(int)  ;
void closeelevator();
void fakeaction();
ros::ServiceClient elevatorClient; // = nh.serviceClient<RAN::Elevator>("/lcr_1/elevator_request");




class PubSub{
    private:
        ros::NodeHandle n; 
        ros::Subscriber actionSub;
        ros::Publisher actionStatusPub;
        ros::Publisher teleportPub;
        
        
    public:
    	
        
    //methods
    void init(){
        actionSub = n.subscribe("/robot_opil_v2/action_channel_AGV",1, &PubSub::actionCallback, this );
        actionStatusPub = n.advertise<RAN::RobotState>("/robot_opil_v2/status_channel_AGV",1);
        teleportPub = n.advertise<geometry_msgs::PoseWithCovarianceStamped>("/initialpose" ,1);
       //Non serve il canaleperchè il servizio restituisce già la risposta corretta sul funzionamento 
        // elevatorStatusSub = n.subscribe("/lcr_1/elevator_status", 1, &PubSub::elevatorStatusCallback, this);
       
        //the service to manages the elevtor calls has to be addded 
       
       
    }

    void fakeaction(){
        cout << "Fake action called \n";
        status = 0; 
    }

    void actionCallback(const RAN::ActionDefinition& msg){ // !!!!!!! va modificata aggiungendo una coda alla quale appendo le azioni per gestire l'arrivo di azioni multiple
        std::stringstream streamss;
        cout << "\n Recieved action :\t";
        actualAction.uuid = msg.action_id.uuid;
        task_id.uuid = msg.task_id.uuid;
        vehicle_id.uuid = msg.robot_id.uuid;
        streamss << msg.action.attributes[0].value ; 
        int category ; 
        streamss >> category;
        cout << " Action category:\t " << msg.action.category << "\t Value: " << category << "   \n";
        switch (msg.action.category)
        /*{ // this is the real switch 
            case 40:
                status = 1;
                PubSub::statusUpdate();
                waitelevator(category);
                break;
            case 41:
                status = 1;
                PubSub::statusUpdate();
                callelevator(category);
                break;
            case 42:
                status = 1;
                PubSub::statusUpdate();
                closeelevator();
                break;
            case 60:
                status=1;
                PubSub::statusUpdate();
                fakeaction();
            default:
                break;  
        }*/
        { // only for debug 
            case 40:
                status = 1;
                cout << "Action 40 \n";
                PubSub::statusUpdate();
                fakeaction();
                break;
            case 41:
                status = 1;
                cout << "Action 41 \n";
                PubSub::statusUpdate();
                fakeaction();
                break;
            case 42:
                status = 1;
                cout << "Action 42 \n";
                PubSub::statusUpdate();
                fakeaction();
                break;
            case 50:
            	status = 1; 
            	cout << "Action Teleport \n";
            	PubSub::statusUpdate();
            	//fakeaction();
            	teleport(std::stof(msg.action.attributes[0].value),std::stof(msg.action.attributes[1].value),std::stof(msg.action.attributes[2].value),std::stof(msg.action.attributes[3].value),std::stof(msg.action.attributes[4].value),std::stof(msg.action.attributes[5].value),std::stof(msg.action.attributes[6].value));
            	break;
            case 60:
                status=0;
                cout << "Action 60 \n";
                PubSub::statusUpdate();
                fakeaction();
            default:
                break;  
        }

        PubSub::statusUpdate();
    }

    void statusUpdate(){
        if (status == 0)
        {
            //cout << "status statusUpdate pubblished";
            RAN::RobotState status; 
            status.header.stamp= ros::Time::now();
            status.vehicle_id.uuid = vehicle_id.uuid;
            status.last_terminated_action.action_id.uuid = actualAction.uuid;
            status.last_terminated_action.task_id.uuid = task_id.uuid;
            actionStatusPub.publish(status);
        }
    } 

    void teleport(float x, float y, float z, float ox, float oy, float oz, float ow){
	geometry_msgs::PoseWithCovarianceStamped msg;
	msg.header.frame_id = "/map";
	msg.pose.pose.position.x = x;
	msg.pose.pose.position.y = y;
	msg.pose.pose.position.z = z;
	msg.pose.pose.orientation.x = ox;
	msg.pose.pose.orientation.y = oy;
	msg.pose.pose.orientation.z = oz;
	msg.pose.pose.orientation.w = ow;
	teleportPub.publish(msg);
	status = 0; 
}
};// end class



void waitelevator(int floor){
            cout << "I'm wainting for the elevator to reach floor" << floor;
            //to wait the elevator we use the same function used to call il since two consecutive call are ignored but the service will wait for the elevator to reach the correct floor
            RAN::Elevator msg;
            msg.request.action = "goto";
            msg.request.desired_floor = floor;
            if (elevatorClient.call(msg)){
                cout << "Elevator is at desired floor";
            }
            else{
                cout << "ELEVATOR ERROR ---  " << msg.response.message;
            }
            status = 0;
        };
void callelevator(int floor){
            cout << "I'll call the elevator at floor " << floor << "\n";
            cout << "Elevator is at floor -- Opening doors \n";
            cout << "Doors open \n" ;
            RAN::Elevator msg;
            msg.request.action = "goto";
            msg.request.desired_floor = floor;
            if (elevatorClient.call(msg)){
                cout << "Elevator is at desired floor";
            }
            else{
                cout << "ELEVATOR ERROR ---  " << msg.response.message;
            }
            status = 0;
        };
void closeelevator(){
            cout << "Closing doors \n";
            cout << "Door closed \n";
            //aggiungere la funzione che fa effettivamente le cose
            RAN::Elevator msg;
            msg.request.action = "close";
            if (elevatorClient.call(msg)){
                cout << "Elevator is at desired floor";
            }
            else{
                cout << "ELEVATOR ERROR ---  " << msg.response.message;
            }
            status= 0 ;
        };



int main(int argc, char **argv)
{
    ros::init(argc, argv, "action_elevator_node");  
    ros::NodeHandle nh; 
    elevatorClient = nh.serviceClient<RAN::Elevator>("/lcr_1/elevator_request");
    PubSub pubSubList; // an istance of class PubSub to be used from other functions
    pubSubList.init();
    ros::Rate loop_rate(1);	
    while (ros::ok())
    {
        ros::spinOnce();
        loop_rate.sleep();
        pubSubList.statusUpdate();
        //cout << "Loop \n";
    }
    
    return 0;
}







 
 
