// Auto-generated. Do not edit!

// (in-package mars_common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Result {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
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
    // Serializes a message object of type Result
    // Serialize message field [result]
    bufferOffset = _serializer.int8(obj.result, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Result
    let len;
    let data = new Result(null);
    // Deserialize message field [result]
    data.result = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.description.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_common_msgs/Result';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fca73f6d4e444c1fbc287204cabcd88b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Definition of possible results
    # In general:
    # - a result less zero represents an error
    # - a result equal to zero represents
    # - a result greater zero represents
    
    # < 0: Error with further information
    int8 RESULT_ERROR=-1
    
    # == 0: Success
    int8 RESULT_SUCCESS=0
    
    # > 0: Success with additional information
    int8 RESULT_SUCCESS_ADDITIONAL_INFO=1
    
    int8 result
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Result(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
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
Result.Constants = {
  RESULT_ERROR: -1,
  RESULT_SUCCESS: 0,
  RESULT_SUCCESS_ADDITIONAL_INFO: 1,
}

module.exports = Result;
