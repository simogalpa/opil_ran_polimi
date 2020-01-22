// Auto-generated. Do not edit!

// (in-package RAN.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ElevatorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.complete_opened_doors = null;
      this.complete_closed_doors = null;
      this.busy = null;
      this.zero_floor = null;
      this.first_floor = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('complete_opened_doors')) {
        this.complete_opened_doors = initObj.complete_opened_doors
      }
      else {
        this.complete_opened_doors = false;
      }
      if (initObj.hasOwnProperty('complete_closed_doors')) {
        this.complete_closed_doors = initObj.complete_closed_doors
      }
      else {
        this.complete_closed_doors = false;
      }
      if (initObj.hasOwnProperty('busy')) {
        this.busy = initObj.busy
      }
      else {
        this.busy = false;
      }
      if (initObj.hasOwnProperty('zero_floor')) {
        this.zero_floor = initObj.zero_floor
      }
      else {
        this.zero_floor = false;
      }
      if (initObj.hasOwnProperty('first_floor')) {
        this.first_floor = initObj.first_floor
      }
      else {
        this.first_floor = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ElevatorStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [complete_opened_doors]
    bufferOffset = _serializer.bool(obj.complete_opened_doors, buffer, bufferOffset);
    // Serialize message field [complete_closed_doors]
    bufferOffset = _serializer.bool(obj.complete_closed_doors, buffer, bufferOffset);
    // Serialize message field [busy]
    bufferOffset = _serializer.bool(obj.busy, buffer, bufferOffset);
    // Serialize message field [zero_floor]
    bufferOffset = _serializer.bool(obj.zero_floor, buffer, bufferOffset);
    // Serialize message field [first_floor]
    bufferOffset = _serializer.bool(obj.first_floor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ElevatorStatus
    let len;
    let data = new ElevatorStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [complete_opened_doors]
    data.complete_opened_doors = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [complete_closed_doors]
    data.complete_closed_doors = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [busy]
    data.busy = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [zero_floor]
    data.zero_floor = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [first_floor]
    data.first_floor = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RAN/ElevatorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07c4ee4aed76536c26fd414cd95d5817';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    bool complete_opened_doors
    bool complete_closed_doors
    bool busy
    bool zero_floor
    bool first_floor
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
    const resolved = new ElevatorStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.complete_opened_doors !== undefined) {
      resolved.complete_opened_doors = msg.complete_opened_doors;
    }
    else {
      resolved.complete_opened_doors = false
    }

    if (msg.complete_closed_doors !== undefined) {
      resolved.complete_closed_doors = msg.complete_closed_doors;
    }
    else {
      resolved.complete_closed_doors = false
    }

    if (msg.busy !== undefined) {
      resolved.busy = msg.busy;
    }
    else {
      resolved.busy = false
    }

    if (msg.zero_floor !== undefined) {
      resolved.zero_floor = msg.zero_floor;
    }
    else {
      resolved.zero_floor = false
    }

    if (msg.first_floor !== undefined) {
      resolved.first_floor = msg.first_floor;
    }
    else {
      resolved.first_floor = false
    }

    return resolved;
    }
};

module.exports = ElevatorStatus;
