// Auto-generated. Do not edit!

// (in-package RAN.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class Emergency {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.command = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = 0;
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
    // Serializes a message object of type Emergency
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [command]
    bufferOffset = _serializer.uint8(obj.command, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Emergency
    let len;
    let data = new Emergency(null);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [command]
    data.command = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    length += object.description.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RAN/Emergency';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15039e86619bd710ab69714ec41122a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Emergency message
    mars_common_msgs/Id robot_id
    uint8 STOP = 0
    uint8 RESTART = 1
    uint8 command
    string description
    
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
    const resolved = new Emergency(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = mars_common_msgs.msg.Id.Resolve(msg.robot_id)
    }
    else {
      resolved.robot_id = new mars_common_msgs.msg.Id()
    }

    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = 0
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
Emergency.Constants = {
  STOP: 0,
  RESTART: 1,
}

module.exports = Emergency;
