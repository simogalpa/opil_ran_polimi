// Auto-generated. Do not edit!

// (in-package sim_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mars_common_msgs = _finder('mars_common_msgs');

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
        this.task_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('action_id')) {
        this.action_id = initObj.action_id
      }
      else {
        this.action_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('motion_id')) {
        this.motion_id = initObj.motion_id
      }
      else {
        this.motion_id = new mars_common_msgs.msg.Id();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignmentId
    // Serialize message field [task_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [action_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.action_id, buffer, bufferOffset);
    // Serialize message field [motion_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.motion_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignmentId
    let len;
    let data = new AssignmentId(null);
    // Deserialize message field [task_id]
    data.task_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [action_id]
    data.action_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_id]
    data.motion_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mars_common_msgs.msg.Id.getMessageSize(object.task_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.action_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.motion_id);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sim_msgs/AssignmentId';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4202b775afdccaf886a80f2adcd776fa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the definition of the ids of an Assignment
    mars_common_msgs/Id task_id
    mars_common_msgs/Id action_id
    mars_common_msgs/Id motion_id
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignmentId(null);
    if (msg.task_id !== undefined) {
      resolved.task_id = mars_common_msgs.msg.Id.Resolve(msg.task_id)
    }
    else {
      resolved.task_id = new mars_common_msgs.msg.Id()
    }

    if (msg.action_id !== undefined) {
      resolved.action_id = mars_common_msgs.msg.Id.Resolve(msg.action_id)
    }
    else {
      resolved.action_id = new mars_common_msgs.msg.Id()
    }

    if (msg.motion_id !== undefined) {
      resolved.motion_id = mars_common_msgs.msg.Id.Resolve(msg.motion_id)
    }
    else {
      resolved.motion_id = new mars_common_msgs.msg.Id()
    }

    return resolved;
    }
};

module.exports = AssignmentId;
