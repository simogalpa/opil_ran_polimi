# Message defining the Robot Agent Node status 
Header header
mars_common_msgs/Id robot_id
RobotState agv_msg
# RAN status definitions
uint8 READY = 0
uint8 MOVING = 1
uint8 STOPPED = 2
uint8 ran_status # value defined as above

