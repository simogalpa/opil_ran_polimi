DEPENDENCIES
In order to enable the RAN to work, the following requirement has to be met:
	- the machine must run an Ubuntu distribution (we recommend 16.04)
Moreover, the following software has to be installed: 
	- ROS (http://wiki.ros.org/ROS/Installation)
		There are various dependencies with ROS packages that has to be installed. 
		You should be able to install all required packages with the following command:
			sudo apt-get install ros-kinetic-desktop-full
			sudo apt-get install ros-kinetic-navigation
			sudo apt-get install ros-kinetic-industrial-msgs		
	You should create a simple workplace, following this tutorial http://wiki.ros.org/catkin/Tutorials/create_a_workspace 
	- FIROS (https://github.com/iml130/firos)		
	- a FIWARE Orion Context Broker server has to run - probably on a different machine

STARTING THE ROBOT
You just need to execute  one of the *.launch file present in the folder. BE SURE FIWARE-OCB IS UP.
The .launch files define the whole starting procedure, setting all the necessary connections between all various ROS  packages used in the module. 
	- single_robot.launch -> starts the nodes allowing the control of a single RAN and its simulation environment
	- single_robot_with_AGV_sim.launch -> starts the nodes allowing the control of a single RAN and its simulation environment; in addition it also simulates the AGV, so it sends messages in the AGV-RAN topics (allows the receiving of RAN state and Robot decsripion messages)

In order to launch the file, open the terminal and type:  roslaunch single_robot.launch

SOURCE FILE REPOSITORY
The repository contains various folders: config, FIROS config, include, map, msg, src plus some files.
The config folder contains the configuration of various navigation parameters ( like the costmaps used for the robot navigation).
FIROS config folder contains the file for the configuration of FIROS – so the communication between the RAN and the Orion Context Broker.
The include folder is just automatically created by catkin.
The map folder contains the definition and configuration of the simulation environment.
The msg folder contains the definition of the messages that are exchanged.
The src folder contains the source code for the module.
The amcl_config_#.xml files contains the parameters for the proper configuration of the navigation stack. 
CMakeList and package files define the structure of the package. They are used when catkin builds the project.
.launch files are defined in the previous section

The ros_entrypoint.sh file is needed for the setup with Docker and not useful for the Source setup


INSTALLATION
Create the folder opil_v1 into the ROS workspace with catkin - it will appear under catkin_ws.
In order to do so, you can run the following command once you are into catkin_ws/src:
	catkin_create_pkg opil_v2 
Copy the content of the deliverable folder (not the folder itself) into the newly created opil_v2 folder
Open a terminal on the workspace directory, type catkin_make and submit

FIROS CONFIGURATION
In  the FIROS config/config.json  file modify the following fields:
	- contextbroker.address : set it to the address of the machine running FIWARE
	- interface: set it to your network adapter name.
    all previous data can be found running an ifconfig command
Edit the aforesaid parameters of the FIROS-config folder, then copy the files inside into the config folder hosted in the FIROS directory in your ROS workspace.

