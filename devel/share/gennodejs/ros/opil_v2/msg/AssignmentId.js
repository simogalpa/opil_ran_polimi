// Auto-generated. Do not edit!

// (in-package opil_v2.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AssignmentId {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.task_id = null;
      this.action_id = null;
      this.motion_id = null;
    }
    else {
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = 0;
      }
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = 0;
      }
      if (initObj.hasOwnProperty('motion_id')) {
        this.motion_id = initObj.motion_id
      }
      else {
        this.motion_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignmentId
    // Serialize message field [task_id]
    bufferOffset = _serializer.uint32(obj.task_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = _serializer.uint32(obj.action_id, buffer, bufferOffset);
    // Serialize message field [motion_id]
    bufferOffset = _serializer.uint32(obj.motion_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignmentId
    let len;
    let data = new AssignmentId(null);
    // Deserialize message field [task_id]
    data.task_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [motion_id]
    data.motion_id = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/AssignmentId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '03abaced4ef628770599470870550be6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the definition of the ids of an Assignment
    uint32 task_id
    uint32 action_id
    uint32 motion_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignmentId(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = msg.task_id;
    }
    else {
      resolved.task_id = 0
    }

    if (msg.action_id !== undefined) {
      resolved.action_id = msg.action_id;
    }
    else {
      resolved.action_id = 0
    }

    if (msg.motion_id !== undefined) {
      resolved.motion_id = msg.motion_id;
    }
    else {
      resolved.motion_id = 0
    }

    return resolved;
    }
};

module.exports = AssignmentId;
