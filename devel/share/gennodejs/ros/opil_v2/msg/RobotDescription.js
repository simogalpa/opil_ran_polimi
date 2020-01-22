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
let RobotDescriptionAGV = require('./RobotDescriptionAGV.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotDescription {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.agv_msg = null;
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
        this.agv_msg = new RobotDescriptionAGV();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotDescription
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [agv_msg]
    bufferOffset = RobotDescriptionAGV.serialize(obj.agv_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotDescription
    let len;
    let data = new RobotDescription(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [agv_msg]
    data.agv_msg = RobotDescriptionAGV.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += RobotDescriptionAGV.getMessageSize(object.agv_msg);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/RobotDescription';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '820816697a26fe0826984b872430e14c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Id robot_id
    RobotDescriptionAGV agv_msg
    
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
    MSG: opil_v2/RobotDescriptionAGV
    Header header
    Id vehicle_id
    float32 left_size
    float32 right_size
    float32 front_size
    float32 rear_size
    float32 min_height
    float32 max_height
    float32 payload
    float32 max_pos_x_vel
    float32 max_neg_x_vel
    float32 max_pos_x_acc
    float32 max_neg_x_acc
    float32 max_pos_y_vel
    float32 max_neg_y_vel
    float32 max_pos_y_acc
    float32 max_neg_y_acc
    float32 max_pos_ang_vel
    float32 max_neg_ang_vel
    float32 velocity_control_sensitivity
    float32 min_turning_radius
    float32 batt_capacity
    float32 batt_max_voltage
    string vehicle_type
    string vendor 
    RobotAction[] action_capability
    
    ================================================================================
    MSG: opil_v2/RobotAction
    # definition of all the possible actionsmars_agent_physical_robot_msgs
    uint8 CATEGORY_UNDEFINED = 0
    uint8 CATEGORY_NONE = 5
    uint8 CATEGORY_LOAD = 10
    uint8 CATEGORY_MANUAL_LOAD_START = 11
    uint8 CATEGORY_MANUAL_LOAD_DONE = 12
    uint8 CATEGORY_UNLOAD = 20
    uint8 CATEGORY_MANUAL_UNLOAD_START = 21
    uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22
    uint8 CATEGORY_START_CHARGING = 30
    uint8 CATEGORY_STOP_CHARGING = 31
    # ...
    
    
    # Category of the action which has to be performed
    uint8 category
    # Defines the robot specific action which has to be performed. 
    # The specific actions must be defined by manufacturer. 
    uint8 action
    Tuple[] attributes
    # Optional description of the action. E.g.: unload left
    string description
    
    
    ================================================================================
    MSG: opil_v2/Tuple
    string type
    string name
    string value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotDescription(null);
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
      resolved.agv_msg = RobotDescriptionAGV.Resolve(msg.agv_msg)
    }
    else {
      resolved.agv_msg = new RobotDescriptionAGV()
    }

    return resolved;
    }
};

module.exports = RobotDescription;
