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

class wcs_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.virtual_object_version_id = null;
      this.mission_id = null;
      this.wcs_adapter_ros_header = null;
      this.status = null;
      this.error_type = null;
      this.error_id = null;
      this.error_header = null;
    }
    else {
      if (initObj.hasOwnProperty('virtual_object_version_id')) {
        this.virtual_object_version_id = initObj.virtual_object_version_id
      }
      else {
        this.virtual_object_version_id = 0;
      }
      if (initObj.hasOwnProperty('mission_id')) {
        this.mission_id = initObj.mission_id
      }
      else {
        this.mission_id = '';
      }
      if (initObj.hasOwnProperty('wcs_adapter_ros_header')) {
        this.wcs_adapter_ros_header = initObj.wcs_adapter_ros_header
      }
      else {
        this.wcs_adapter_ros_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('error_type')) {
        this.error_type = initObj.error_type
      }
      else {
        this.error_type = 0;
      }
      if (initObj.hasOwnProperty('error_id')) {
        this.error_id = initObj.error_id
      }
      else {
        this.error_id = '';
      }
      if (initObj.hasOwnProperty('error_header')) {
        this.error_header = initObj.error_header
      }
      else {
        this.error_header = new std_msgs.msg.Header();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type wcs_status
    // Serialize message field [virtual_object_version_id]
    bufferOffset = _serializer.int32(obj.virtual_object_version_id, buffer, bufferOffset);
    // Serialize message field [mission_id]
    bufferOffset = _serializer.string(obj.mission_id, buffer, bufferOffset);
    // Serialize message field [wcs_adapter_ros_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.wcs_adapter_ros_header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [error_type]
    bufferOffset = _serializer.int8(obj.error_type, buffer, bufferOffset);
    // Serialize message field [error_id]
    bufferOffset = _serializer.string(obj.error_id, buffer, bufferOffset);
    // Serialize message field [error_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.error_header, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type wcs_status
    let len;
    let data = new wcs_status(null);
    // Deserialize message field [virtual_object_version_id]
    data.virtual_object_version_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_id]
    data.mission_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wcs_adapter_ros_header]
    data.wcs_adapter_ros_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_type]
    data.error_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_id]
    data.error_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_header]
    data.error_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mission_id.length;
    length += std_msgs.msg.Header.getMessageSize(object.wcs_adapter_ros_header);
    length += object.error_id.length;
    length += std_msgs.msg.Header.getMessageSize(object.error_header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_shared/wcs_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4fe2a2cc15ab59605464b4b1259d9135';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 virtual_object_version_id
    string mission_id
    Header wcs_adapter_ros_header
    int8 status
    int8 error_type #0 no error
    string error_id
    Header error_header
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
    const resolved = new wcs_status(null);
    if (msg.virtual_object_version_id !== undefined) {
      resolved.virtual_object_version_id = msg.virtual_object_version_id;
    }
    else {
      resolved.virtual_object_version_id = 0
    }

    if (msg.mission_id !== undefined) {
      resolved.mission_id = msg.mission_id;
    }
    else {
      resolved.mission_id = ''
    }

    if (msg.wcs_adapter_ros_header !== undefined) {
      resolved.wcs_adapter_ros_header = std_msgs.msg.Header.Resolve(msg.wcs_adapter_ros_header)
    }
    else {
      resolved.wcs_adapter_ros_header = new std_msgs.msg.Header()
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.error_type !== undefined) {
      resolved.error_type = msg.error_type;
    }
    else {
      resolved.error_type = 0
    }

    if (msg.error_id !== undefined) {
      resolved.error_id = msg.error_id;
    }
    else {
      resolved.error_id = ''
    }

    if (msg.error_header !== undefined) {
      resolved.error_header = std_msgs.msg.Header.Resolve(msg.error_header)
    }
    else {
      resolved.error_header = new std_msgs.msg.Header()
    }

    return resolved;
    }
};

module.exports = wcs_status;
