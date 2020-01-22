// Auto-generated. Do not edit!

// (in-package RAN.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let mars_agent_physical_robot_msgs = _finder('mars_agent_physical_robot_msgs');
let mars_common_msgs = _finder('mars_common_msgs');

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
        this.robot_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new mars_agent_physical_robot_msgs.msg.RobotAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionDefinition
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = mars_agent_physical_robot_msgs.msg.RobotAction.serialize(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionDefinition
    let len;
    let data = new ActionDefinition(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = mars_agent_physical_robot_msgs.msg.RobotAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.action_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.task_id);
    length += mars_agent_physical_robot_msgs.msg.RobotAction.getMessageSize(object.action);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RAN/ActionDefinition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4212812993a8c69496c8685c459e242';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the definition of an Action
    std_msgs/Header header
    mars_common_msgs/Id robot_id
    mars_common_msgs/Id action_id
    mars_common_msgs/Id task_id
    #definition of the action
    mars_agent_physical_robot_msgs/RobotAction action
    
    
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
    MSG: mars_common_msgs/Id
    # Universally Unique Identifier (UUID)
    # A UUID is a 128-bit number used to identify information in computer systems. 
    # The term globally unique identifier (GUID) is also used. 
    # More information: https://en.wikipedia.org/wiki/Universally_unique_identifier
    uint8[16] uuid
    
    # optional description of the id
    # description can be:
    #   - a name
    #   - what is descriped by the id
    #   - etc.
    string description
    
    ================================================================================
    MSG: mars_agent_physical_robot_msgs/RobotAction
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
    mars_common_msgs/Tuple[] attributes
    # Optional description of the action. E.g.: unload left
    string description
    
    
    ================================================================================
    MSG: mars_common_msgs/Tuple
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
      resolved.robot_id = mars_common_msgs.msg.Id.Resolve(msg.robot_id)
    }
    else {
      resolved.robot_id = new mars_common_msgs.msg.Id()
    }

    if (msg.action_id !== undefined) {
      resolved.action_id = mars_common_msgs.msg.Id.Resolve(msg.action_id)
    }
    else {
      resolved.action_id = new mars_common_msgs.msg.Id()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = mars_common_msgs.msg.Id.Resolve(msg.task_id)
    }
    else {
      resolved.task_id = new mars_common_msgs.msg.Id()
    }

    if (msg.action !== undefined) {
      resolved.action = mars_agent_physical_robot_msgs.msg.RobotAction.Resolve(msg.action)
    }
    else {
      resolved.action = new mars_agent_physical_robot_msgs.msg.RobotAction()
    }

    return resolved;
    }
};

module.exports = ActionDefinition;
