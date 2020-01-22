// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Sequence = require('./Sequence.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class MotionAssignment {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.point_id = null;
      this.task_id = null;
      this.motion_id = null;
      this.point = null;
      this.is_waypoint = null;
      this.use_orientation = null;
      this.max_velocity = null;
      this.max_acceleration = null;
      this.motion_area = null;
      this.sequence = null;
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
        this.robot_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('point_id')) {
        this.point_id = initObj.point_id
      }
      else {
        this.point_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('task_id')) {
        this.task_id = initObj.task_id
      }
      else {
        this.task_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('motion_id')) {
        this.motion_id = initObj.motion_id
      }
      else {
        this.motion_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Pose2D();
      }
      if (initObj.hasOwnProperty('is_waypoint')) {
        this.is_waypoint = initObj.is_waypoint
      }
      else {
        this.is_waypoint = false;
      }
      if (initObj.hasOwnProperty('use_orientation')) {
        this.use_orientation = initObj.use_orientation
      }
      else {
        this.use_orientation = false;
      }
      if (initObj.hasOwnProperty('max_velocity')) {
        this.max_velocity = initObj.max_velocity
      }
      else {
        this.max_velocity = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('max_acceleration')) {
        this.max_acceleration = initObj.max_acceleration
      }
      else {
        this.max_acceleration = new geometry_msgs.msg.Accel();
      }
      if (initObj.hasOwnProperty('motion_area')) {
        this.motion_area = initObj.motion_area
      }
      else {
        this.motion_area = new geometry_msgs.msg.PolygonStamped();
      }
      if (initObj.hasOwnProperty('sequence')) {
        this.sequence = initObj.sequence
      }
      else {
        this.sequence = new Sequence();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotionAssignment
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [point_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.point_id, buffer, bufferOffset);
    // Serialize message field [task_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.task_id, buffer, bufferOffset);
    // Serialize message field [motion_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.motion_id, buffer, bufferOffset);
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Pose2D.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [is_waypoint]
    bufferOffset = _serializer.bool(obj.is_waypoint, buffer, bufferOffset);
    // Serialize message field [use_orientation]
    bufferOffset = _serializer.bool(obj.use_orientation, buffer, bufferOffset);
    // Serialize message field [max_velocity]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.max_velocity, buffer, bufferOffset);
    // Serialize message field [max_acceleration]
    bufferOffset = geometry_msgs.msg.Accel.serialize(obj.max_acceleration, buffer, bufferOffset);
    // Serialize message field [motion_area]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.motion_area, buffer, bufferOffset);
    // Serialize message field [sequence]
    bufferOffset = Sequence.serialize(obj.sequence, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotionAssignment
    let len;
    let data = new MotionAssignment(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [point_id]
    data.point_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [task_id]
    data.task_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_id]
    data.motion_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Pose2D.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_waypoint]
    data.is_waypoint = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [use_orientation]
    data.use_orientation = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [max_velocity]
    data.max_velocity = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [max_acceleration]
    data.max_acceleration = geometry_msgs.msg.Accel.deserialize(buffer, bufferOffset);
    // Deserialize message field [motion_area]
    data.motion_area = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [sequence]
    data.sequence = Sequence.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.point_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.task_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.motion_id);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.motion_area);
    return length + 130;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/MotionAssignment';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4c5a46f20a838c5a572e0f81ed1d96f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message concerning the assignment of a new Motion command
    Header header
    mars_common_msgs/Id robot_id
    mars_common_msgs/Id point_id
    mars_common_msgs/Id task_id
    mars_common_msgs/Id motion_id
    geometry_msgs/Pose2D point
    # TRUE if the point is a waypoint, FALSE if it is a goal
    bool is_waypoint
    # TRUE if the theta of the point has to be considered
    bool use_orientation
    geometry_msgs/Twist max_velocity
    geometry_msgs/Accel max_acceleration
    # defines the area in which the robot can move
    geometry_msgs/PolygonStamped motion_area
    # the position of the assignment in the sequence
    Sequence sequence
    
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
    
    ================================================================================
    MSG: geometry_msgs/Pose2D
    # Deprecated
    # Please use the full 3D pose.
    
    # In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.
    
    # If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.
    
    
    # This expresses a position and orientation on a 2D manifold.
    
    float64 x
    float64 y
    float64 theta
    
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
    ================================================================================
    MSG: geometry_msgs/Accel
    # This expresses acceleration in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
    ================================================================================
    MSG: geometry_msgs/Polygon
    #A specification of a polygon where the first and last points are assumed to be connected
    Point32[] points
    
    ================================================================================
    MSG: geometry_msgs/Point32
    # This contains the position of a point in free space(with 32 bits of precision).
    # It is recommeded to use Point wherever possible instead of Point32.  
    # 
    # This recommendation is to promote interoperability.  
    #
    # This message is designed to take up less space when sending
    # lots of points at once, as in the case of a PointCloud.  
    
    float32 x
    float32 y
    float32 z
    ================================================================================
    MSG: mars_agent_physical_robot_msgs/Sequence
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
    const resolved = new MotionAssignment(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_id !== undefined) {
      resolved.robot_id = mars_common_msgs.msg.Id.Resolve(msg.robot_id)
    }
    else {
      resolved.robot_id = new mars_common_msgs.msg.Id()
    }

    if (msg.point_id !== undefined) {
      resolved.point_id = mars_common_msgs.msg.Id.Resolve(msg.point_id)
    }
    else {
      resolved.point_id = new mars_common_msgs.msg.Id()
    }

    if (msg.task_id !== undefined) {
      resolved.task_id = mars_common_msgs.msg.Id.Resolve(msg.task_id)
    }
    else {
      resolved.task_id = new mars_common_msgs.msg.Id()
    }

    if (msg.motion_id !== undefined) {
      resolved.motion_id = mars_common_msgs.msg.Id.Resolve(msg.motion_id)
    }
    else {
      resolved.motion_id = new mars_common_msgs.msg.Id()
    }

    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Pose2D.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Pose2D()
    }

    if (msg.is_waypoint !== undefined) {
      resolved.is_waypoint = msg.is_waypoint;
    }
    else {
      resolved.is_waypoint = false
    }

    if (msg.use_orientation !== undefined) {
      resolved.use_orientation = msg.use_orientation;
    }
    else {
      resolved.use_orientation = false
    }

    if (msg.max_velocity !== undefined) {
      resolved.max_velocity = geometry_msgs.msg.Twist.Resolve(msg.max_velocity)
    }
    else {
      resolved.max_velocity = new geometry_msgs.msg.Twist()
    }

    if (msg.max_acceleration !== undefined) {
      resolved.max_acceleration = geometry_msgs.msg.Accel.Resolve(msg.max_acceleration)
    }
    else {
      resolved.max_acceleration = new geometry_msgs.msg.Accel()
    }

    if (msg.motion_area !== undefined) {
      resolved.motion_area = geometry_msgs.msg.PolygonStamped.Resolve(msg.motion_area)
    }
    else {
      resolved.motion_area = new geometry_msgs.msg.PolygonStamped()
    }

    if (msg.sequence !== undefined) {
      resolved.sequence = Sequence.Resolve(msg.sequence)
    }
    else {
      resolved.sequence = new Sequence()
    }

    return resolved;
    }
};

module.exports = MotionAssignment;
