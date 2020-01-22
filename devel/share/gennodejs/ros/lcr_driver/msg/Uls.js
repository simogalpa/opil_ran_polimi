// Auto-generated. Do not edit!

// (in-package lcr_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Uls {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.measures = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('measures')) {
        this.measures = initObj.measures
      }
      else {
        this.measures = new Array(6).fill(new geometry_msgs.msg.Pose());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Uls
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [measures] has the right length
    if (obj.measures.length !== 6) {
      throw new Error('Unable to serialize array field measures - length must be 6')
    }
    // Serialize message field [measures]
    obj.measures.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Uls
    let len;
    let data = new Uls(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [measures]
    len = 6;
    data.measures = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.measures[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 336;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_driver/Uls';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c8ed7d4d3b258a49ae30b36a4e353dda';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Pose[6] measures # array of data
    float64 range_max=1.5
    float64 range_min=0.4
    float64 beam=1.39626 #80° in Rad
    
    
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Uls(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.measures !== undefined) {
      resolved.measures = new Array(6)
      for (let i = 0; i < resolved.measures.length; ++i) {
        if (msg.measures.length > i) {
          resolved.measures[i] = geometry_msgs.msg.Pose.Resolve(msg.measures[i]);
        }
        else {
          resolved.measures[i] = new geometry_msgs.msg.Pose();
        }
      }
    }
    else {
      resolved.measures = new Array(6).fill(new geometry_msgs.msg.Pose())
    }

    return resolved;
    }
};

// Constants for message
Uls.Constants = {
  RANGE_MAX: 1.5,
  RANGE_MIN: 0.4,
  BEAM: 1.39626,
}

module.exports = Uls;
