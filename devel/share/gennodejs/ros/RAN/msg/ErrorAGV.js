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
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class ErrorAGV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_id = null;
      this.error_AGV = null;
      this.description = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('vehicle_id')) {
        this.vehicle_id = initObj.vehicle_id
      }
      else {
        this.vehicle_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('error_AGV')) {
        this.error_AGV = initObj.error_AGV
      }
      else {
        this.error_AGV = 0;
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
    // Serializes a message object of type ErrorAGV
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [error_AGV]
    bufferOffset = _serializer.uint8(obj.error_AGV, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ErrorAGV
    let len;
    let data = new ErrorAGV(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_AGV]
    data.error_AGV = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += mars_common_msgs.msg.Id.getMessageSize(object.vehicle_id);
    length += object.description.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'RAN/ErrorAGV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7e428f0a97eaf783f2ff75628d5be97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Error message from the AGV
    std_msgs/Header header
    mars_common_msgs/Id vehicle_id
    uint8 error_AGV
    string description
    
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
    const resolved = new ErrorAGV(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = mars_common_msgs.msg.Id.Resolve(msg.vehicle_id)
    }
    else {
      resolved.vehicle_id = new mars_common_msgs.msg.Id()
    }

    if (msg.error_AGV !== undefined) {
      resolved.error_AGV = msg.error_AGV;
    }
    else {
      resolved.error_AGV = 0
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

module.exports = ErrorAGV;
