// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Sequence = require('./Sequence.js');
let RobotAction = require('./RobotAction.js');
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class ActionAssignment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.action_id = null;
      this.task_id = null;
      this.sequence = null;
      this.robot_action = null;
    }
    else {
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
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = new Sequence();
      }
      if (initObj.hasOwnProperty('robot_action')) {
        this.robot_action = initObj.robot_action
      }
      else {
        this.robot_action = new RobotAction();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActionAssignment
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = Sequence.serialize(obj.sequence, buffer, bufferOffset);
    // Serialize message field [robot_action]
    bufferOffset = RobotAction.serialize(obj.robot_action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActionAssignment
    let len;
    let data = new ActionAssignment(null);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = Sequence.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_action]
    data.robot_action = RobotAction.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.action_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.task_id);
    length += RobotAction.getMessageSize(object.robot_action);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/ActionAssignment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'efed3373da3eca18595f4459a9e9b329';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the definition of an Action
    mars_common_msgs/Id robot_id
    mars_common_msgs/Id action_id
    mars_common_msgs/Id task_id
    # Position of the action within the order
    Sequence sequence
    RobotAction robot_action
    
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
    MSG: mars_agent_physical_robot_msgs/Sequence
    # Message for defining a sequence.
    
    # Actual position in the sequence. The sequence starts at 1! 
    int32 sequence_number
    # Overall lenght of the sequence
    int32 length
    
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
    const resolved = new ActionAssignment(null);
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

    if (msg.sequence !== undefined) {
      resolved.sequence = Sequence.Resolve(msg.sequence)
    }
    else {
      resolved.sequence = new Sequence()
    }

    if (msg.robot_action !== undefined) {
      resolved.robot_action = RobotAction.Resolve(msg.robot_action)
    }
    else {
      resolved.robot_action = new RobotAction()
    }

    return resolved;
    }
};

module.exports = ActionAssignment;
