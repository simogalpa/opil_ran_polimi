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
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class CancelTask {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.task_id = null;
      this.action_id = null;
      this.motion_id = null;
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
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = new Id();
      }
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = new Id();
      }
      if (initObj.hasOwnProperty('motion_id')) {
        this.motion_id = initObj.motion_id
      }
      else {
        this.motion_id = new Id();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CancelTask
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = Id.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [motion_id]
    bufferOffset = Id.serialize(obj.motion_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CancelTask
    let len;
    let data = new CancelTask(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_id]
    data.motion_id = Id.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += Id.getMessageSize(object.task_id);
    length += Id.getMessageSize(object.action_id);
    length += Id.getMessageSize(object.motion_id);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/CancelTask';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40a0b6cb455a9001a19467ac472b07a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for deleting a task
    Header header
    Id robot_id
    # task ID instead of action id because the message deletes the whole task
    # the task is a sequence of motions and actions
    Id task_id
    Id action_id
    Id motion_id
    
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
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CancelTask(null);
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

    if (msg.task_id !== undefined) {
      resolved.task_id = Id.Resolve(msg.task_id)
    }
    else {
      resolved.task_id = new Id()
    }

    if (msg.action_id !== undefined) {
      resolved.action_id = Id.Resolve(msg.action_id)
    }
    else {
      resolved.action_id = new Id()
    }

    if (msg.motion_id !== undefined) {
      resolved.motion_id = Id.Resolve(msg.motion_id)
    }
    else {
      resolved.motion_id = new Id()
    }

    return resolved;
    }
};

module.exports = CancelTask;
