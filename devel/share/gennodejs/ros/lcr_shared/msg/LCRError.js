// Auto-generated. Do not edit!

// (in-package lcr_shared.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LCRError {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.error_type = null;
      this.error_ID = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('error_type')) {
        this.error_type = initObj.error_type
      }
      else {
        this.error_type = 0;
      }
      if (initObj.hasOwnProperty('error_ID')) {
        this.error_ID = initObj.error_ID
      }
      else {
        this.error_ID = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LCRError
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [error_type]
    bufferOffset = _serializer.int8(obj.error_type, buffer, bufferOffset);
    // Serialize message field [error_ID]
    bufferOffset = _serializer.string(obj.error_ID, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LCRError
    let len;
    let data = new LCRError(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_type]
    data.error_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_ID]
    data.error_ID = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.error_ID.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_shared/LCRError';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9ea424d468e73498cf04a232a99c43e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int8 error_type #in ordine decrescente di gravita' 1-2-3-4
    string error_ID
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LCRError(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.error_type !== undefined) {
      resolved.error_type = msg.error_type;
    }
    else {
      resolved.error_type = 0
    }

    if (msg.error_ID !== undefined) {
      resolved.error_ID = msg.error_ID;
    }
    else {
      resolved.error_ID = ''
    }

    return resolved;
    }
};

module.exports = LCRError;
