# Message defining the Robot / AGV status 
Header header
mars_common_msgs/Id vehicle_id
AssignmentId last_terminated_action
industrial_msgs/RobotStatus robot_status
sensor_msgs/BatteryState battery_state
geometry_msgs/Pose2D current_position
geometry_msgs/Twist current_velocity
geometry_msgs/PolygonStamped footprint
