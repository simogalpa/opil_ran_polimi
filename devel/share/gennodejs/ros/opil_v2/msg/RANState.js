// Auto-generated. Do not edit!

// (in-package opil_v2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Id = require('./Id.js');
let RobotState = require('./RobotState.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RANState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.agv_msg = null;
      this.ran_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = new Id();
      }
      if (initObj.hasOwnProperty('agv_msg')) {
        this.agv_msg = initObj.agv_msg
      }
      else {
        this.agv_msg = new RobotState();
      }
      if (initObj.hasOwnProperty('ran_status')) {
        this.ran_status = initObj.ran_status
      }
      else {
        this.ran_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RANState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [agv_msg]
    bufferOffset = RobotState.serialize(obj.agv_msg, buffer, bufferOffset);
    // Serialize message field [ran_status]
    bufferOffset = _serializer.uint8(obj.ran_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RANState
    let len;
    let data = new RANState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [agv_msg]
    data.agv_msg = RobotState.deserialize(buffer, bufferOffset);
    // Deserialize message field [ran_status]
    data.ran_status = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += RobotState.getMessageSize(object.agv_msg);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/RANState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2dc33cda2b4054bb83982ac7e5fc4fb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message defining the Robot Agent Node status 
    Header header
    Id robot_id
    RobotState agv_msg
    # RAN status definitions
    uint8 READY = 0
    uint8 MOVING = 1
    uint8 STOPPED = 2
    uint8 ran_status # value defined as above
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    ================================================================================
    MSG: opil_v2/Id
    # Message for defining IDs
    # numeric ID
    uint32 id
    
    # optional description of the id
    # description can be:
    #   - a name
    #   - what is descriped by the id
    #   - etc.
    
    string description
    
    
    ================================================================================
    MSG: opil_v2/RobotState
    # Message defining the Robot / AGV status 
    Header header
    Id vehicle_id
    AssignmentId last_terminated_action
    industrial_msgs/RobotStatus robot_status
    sensor_msgs/BatteryState battery_state
    geometry_msgs/Pose2D current_position
    geometry_msgs/Twist current_velocity
    geometry_msgs/PolygonStamped footprint
    
    ================================================================================
    MSG: opil_v2/AssignmentId
    # Message for the definition of the ids of an Assignment
    uint32 task_id
    uint32 action_id
    uint32 motion_id
    
    ================================================================================
    MSG: industrial_msgs/RobotStatus
    # The RobotStatus message contains low level status information 
    # that is specific to an industrial robot controller
    
    # The header frame ID is not used
    Header header
    
    # The robot mode captures the operating mode of the robot.  When in
    # manual, remote motion is not possible.
    industrial_msgs/RobotMode mode
    
    # Estop status: True if robot is e-stopped.  The drives are disabled
    # and motion is not possible.  The e-stop condition must be acknowledged
    # and cleared before any motion can begin.
    industrial_msgs/TriState e_stopped
    
    # Drive power status: True if drives are powered.  Motion commands will 
    # automatically enable the drives if required.  Drive power is not requred
    # for possible motion
    industrial_msgs/TriState drives_powered
    
    # Motion enabled: True if robot motion is possible.
    industrial_msgs/TriState motion_possible
    
    # Motion status: True if robot is in motion, otherwise false
    industrial_msgs/TriState in_motion
    
    # Error status: True if there is an error condition on the robot. Motion may
    # or may not be affected (see motion_possible)
    industrial_msgs/TriState in_error
    
    # Error code: Vendor specific error code (non zero indicates error)
    int32 error_code
    
    ================================================================================
    MSG: industrial_msgs/RobotMode
    # The Robot mode message encapsulates the mode/teach state of the robot
    # Typically this is controlled by the pendant key switch, but not always
    
    int8 val
    
    # enumerated values
    int8 UNKNOWN=-1                 # Unknown or unavailable         
    int8 MANUAL=1 			 # Teach OR manual mode
    int8 AUTO=2                     # Automatic mode
    
    
    ================================================================================
    MSG: industrial_msgs/TriState
    # The tri-state captures boolean values with the additional state of unknown
    
    int8 val
    
    # enumerated values
    
    # Unknown or unavailable 
    int8 UNKNOWN=-1  
    
    # High state                       
    int8 TRUE=1
    int8 ON=1
    int8 ENABLED=1
    int8 HIGH=1
    int8 CLOSED=1
    
    # Low state
    int8 FALSE=0
    int8 OFF=0
    int8 DISABLED=0
    int8 LOW=0
    int8 OPEN=0
    
    
    ================================================================================
    MSG: sensor_msgs/BatteryState
    
    # Constants are chosen to match the enums in the linux kernel
    # defined in include/linux/power_supply.h as of version 3.7
    # The one difference is for style reasons the constants are
    # all uppercase not mixed case.
    
    # Power supply status constants
    uint8 POWER_SUPPLY_STATUS_UNKNOWN = 0
    uint8 POWER_SUPPLY_STATUS_CHARGING = 1
    uint8 POWER_SUPPLY_STATUS_DISCHARGING = 2
    uint8 POWER_SUPPLY_STATUS_NOT_CHARGING = 3
    uint8 POWER_SUPPLY_STATUS_FULL = 4
    
    # Power supply health constants
    uint8 POWER_SUPPLY_HEALTH_UNKNOWN = 0
    uint8 POWER_SUPPLY_HEALTH_GOOD = 1
    uint8 POWER_SUPPLY_HEALTH_OVERHEAT = 2
    uint8 POWER_SUPPLY_HEALTH_DEAD = 3
    uint8 POWER_SUPPLY_HEALTH_OVERVOLTAGE = 4
    uint8 POWER_SUPPLY_HEALTH_UNSPEC_FAILURE = 5
    uint8 POWER_SUPPLY_HEALTH_COLD = 6
    uint8 POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE = 7
    uint8 POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE = 8
    
    # Power supply technology (chemistry) constants
    uint8 POWER_SUPPLY_TECHNOLOGY_UNKNOWN = 0
    uint8 POWER_SUPPLY_TECHNOLOGY_NIMH = 1
    uint8 POWER_SUPPLY_TECHNOLOGY_LION = 2
    uint8 POWER_SUPPLY_TECHNOLOGY_LIPO = 3
    uint8 POWER_SUPPLY_TECHNOLOGY_LIFE = 4
    uint8 POWER_SUPPLY_TECHNOLOGY_NICD = 5
    uint8 POWER_SUPPLY_TECHNOLOGY_LIMN = 6
    
    Header  header
    float32 voltage          # Voltage in Volts (Mandatory)
    float32 current          # Negative when discharging (A)  (If unmeasured NaN)
    float32 charge           # Current charge in Ah  (If unmeasured NaN)
    float32 capacity         # Capacity in Ah (last full capacity)  (If unmeasured NaN)
    float32 design_capacity  # Capacity in Ah (design capacity)  (If unmeasured NaN)
    float32 percentage       # Charge percentage on 0 to 1 range  (If unmeasured NaN)
    uint8   power_supply_status     # The charging status as reported. Values defined above
    uint8   power_supply_health     # The battery health metric. Values defined above
    uint8   power_supply_technology # The battery chemistry. Values defined above
    bool    present          # True if the battery is present
    
    float32[] cell_voltage   # An array of individual cell voltages for each cell in the pack
                             # If individual voltages unknown but number of cells known set each to NaN
    string location          # The location into which the battery is inserted. (slot number or plug)
    string serial_number     # The best approximation of the battery serial number
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RANState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = Id.Resolve(msg.robot_id)
    }
    else {
      resolved.robot_id = new Id()
    }

    if (msg.agv_msg !== undefined) {
      resolved.agv_msg = RobotState.Resolve(msg.agv_msg)
    }
    else {
      resolved.agv_msg = new RobotState()
    }

    if (msg.ran_status !== undefined) {
      resolved.ran_status = msg.ran_status;
    }
    else {
      resolved.ran_status = 0
    }

    return resolved;
    }
};

// Constants for message
RANState.Constants = {
  READY: 0,
  MOVING: 1,
  STOPPED: 2,
}

module.exports = RANState;
