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
let RobotAction = require('./RobotAction.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ActionDefinition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.action_id = null;
      this.task_id = null;
      this.action = null;
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
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = new Id();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = new Id();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new RobotAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionDefinition
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = Id.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = RobotAction.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionDefinition
    let len;
    let data = new ActionDefinition(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = RobotAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += Id.getMessageSize(object.action_id);
    length += Id.getMessageSize(object.task_id);
    length += RobotAction.getMessageSize(object.action);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/ActionDefinition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '251964ecde4dcc6d2653784d4aa1be70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the definition of an Action
    std_msgs/Header header
    Id robot_id
    Id action_id
    Id task_id
    #definition of the action
    RobotAction action
    
    
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
    const resolved = new ActionDefinition(null);
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

    if (msg.action_id !== undefined) {
      resolved.action_id = Id.Resolve(msg.action_id)
    }
    else {
      resolved.action_id = new Id()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = Id.Resolve(msg.task_id)
    }
    else {
      resolved.task_id = new Id()
    }

    if (msg.action !== undefined) {
      resolved.action = RobotAction.Resolve(msg.action)
    }
    else {
      resolved.action = new RobotAction()
    }

    return resolved;
    }
};

module.exports = ActionDefinition;
