// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class RobotAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.category = null;
      this.action = null;
      this.attributes = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('category')) {
        this.category = initObj.category
      }
      else {
        this.category = 0;
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('attributes')) {
        this.attributes = initObj.attributes
      }
      else {
        this.attributes = [];
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotAction
    // Serialize message field [category]
    bufferOffset = _serializer.uint8(obj.category, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    // Serialize message field [attributes]
    // Serialize the length for message field [attributes]
    bufferOffset = _serializer.uint32(obj.attributes.length, buffer, bufferOffset);
    obj.attributes.forEach((val) => {
      bufferOffset = mars_common_msgs.msg.Tuple.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotAction
    let len;
    let data = new RobotAction(null);
    // Deserialize message field [category]
    data.category = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attributes]
    // Deserialize array length for message field [attributes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.attributes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.attributes[i] = mars_common_msgs.msg.Tuple.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.attributes.forEach((val) => {
      length += mars_common_msgs.msg.Tuple.getMessageSize(val);
    });
    length += object.description.length;
    return length + 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/RobotAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9d6573f0dd507d2eb40dd1e6516c59f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RobotAction(null);
    if (msg.category !== undefined) {
      resolved.category = msg.category;
    }
    else {
      resolved.category = 0
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.attributes !== undefined) {
      resolved.attributes = new Array(msg.attributes.length);
      for (let i = 0; i < resolved.attributes.length; ++i) {
        resolved.attributes[i] = mars_common_msgs.msg.Tuple.Resolve(msg.attributes[i]);
      }
    }
    else {
      resolved.attributes = []
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    return resolved;
    }
};

// Constants for message
RobotAction.Constants = {
  CATEGORY_UNDEFINED: 0,
  CATEGORY_NONE: 5,
  CATEGORY_LOAD: 10,
  CATEGORY_MANUAL_LOAD_START: 11,
  CATEGORY_MANUAL_LOAD_DONE: 12,
  CATEGORY_UNLOAD: 20,
  CATEGORY_MANUAL_UNLOAD_START: 21,
  CATEGORY_MANUAL_UNLOAD_DONE: 22,
  CATEGORY_START_CHARGING: 30,
  CATEGORY_STOP_CHARGING: 31,
}

module.exports = RobotAction;
