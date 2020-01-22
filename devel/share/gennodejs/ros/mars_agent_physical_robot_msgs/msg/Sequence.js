// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Sequence {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sequence_number = null;
      this.length = null;
    }
    else {
      if (initObj.hasOwnProperty('sequence_number')) {
        this.sequence_number = initObj.sequence_number
      }
      else {
        this.sequence_number = 0;
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Sequence
    // Serialize message field [sequence_number]
    bufferOffset = _serializer.int32(obj.sequence_number, buffer, bufferOffset);
    // Serialize message field [length]
    bufferOffset = _serializer.int32(obj.length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Sequence
    let len;
    let data = new Sequence(null);
    // Deserialize message field [sequence_number]
    data.sequence_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [length]
    data.length = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/Sequence';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2a41f13649a83eba6bc20a688c3cb1f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for defining a sequence.
    
    # Actual position in the sequence. The sequence starts at 1! 
    int32 sequence_number
    # Overall lenght of the sequence
    int32 length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Sequence(null);
    if (msg.sequence_number !== undefined) {
      resolved.sequence_number = msg.sequence_number;
    }
    else {
      resolved.sequence_number = 0
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0
    }

    return resolved;
    }
};

module.exports = Sequence;
