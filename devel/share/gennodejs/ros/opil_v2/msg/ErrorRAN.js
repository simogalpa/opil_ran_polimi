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
let ErrorAGV = require('./ErrorAGV.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ErrorRAN {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.error_RAN = null;
      this.description = null;
      this.agv_error = null;
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
      if (initObj.hasOwnProperty('error_RAN')) {
        this.error_RAN = initObj.error_RAN
      }
      else {
        this.error_RAN = 0;
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('agv_error')) {
        this.agv_error = initObj.agv_error
      }
      else {
        this.agv_error = new ErrorAGV();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ErrorRAN
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [error_RAN]
    bufferOffset = _serializer.uint8(obj.error_RAN, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [agv_error]
    bufferOffset = ErrorAGV.serialize(obj.agv_error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorRAN
    let len;
    let data = new ErrorRAN(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_RAN]
    data.error_RAN = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [agv_error]
    data.agv_error = ErrorAGV.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += object.description.length;
    length += ErrorAGV.getMessageSize(object.agv_error);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/ErrorRAN';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64923603d670371b84825165fc533575';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error message from the RAN
    std_msgs/Header header
    Id robot_id
    uint8 error_RAN
    string description
    ErrorAGV agv_error
    
    
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
    
    
    ================================================================================
    MSG: opil_v2/ErrorAGV
    # Error message from the AGV
    std_msgs/Header header
    Id vehicle_id
    uint8 error_AGV
    string description
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ErrorRAN(null);
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

    if (msg.error_RAN !== undefined) {
      resolved.error_RAN = msg.error_RAN;
    }
    else {
      resolved.error_RAN = 0
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.agv_error !== undefined) {
      resolved.agv_error = ErrorAGV.Resolve(msg.agv_error)
    }
    else {
      resolved.agv_error = new ErrorAGV()
    }

    return resolved;
    }
};

module.exports = ErrorRAN;
