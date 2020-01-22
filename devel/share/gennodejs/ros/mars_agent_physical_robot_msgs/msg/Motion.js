// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Motion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_position = null;
      this.current_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('current_position')) {
        this.current_position = initObj.current_position
      }
      else {
        this.current_position = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('current_velocity')) {
        this.current_velocity = initObj.current_velocity
      }
      else {
        this.current_velocity = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motion
    // Serialize message field [current_position]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.current_position, buffer, bufferOffset);
    // Serialize message field [current_velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.current_velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motion
    let len;
    let data = new Motion(null);
    // Deserialize message field [current_position]
    data.current_position = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_velocity]
    data.current_velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.current_position);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/Motion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9adb824f5607bc0f252b799bfabd28e3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped current_position
    geometry_msgs/Twist current_velocity
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motion(null);
    if (msg.current_position !== undefined) {
      resolved.current_position = geometry_msgs.msg.PoseStamped.Resolve(msg.current_position)
    }
    else {
      resolved.current_position = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.current_velocity !== undefined) {
      resolved.current_velocity = geometry_msgs.msg.Twist.Resolve(msg.current_velocity)
    }
    else {
      resolved.current_velocity = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = Motion;
