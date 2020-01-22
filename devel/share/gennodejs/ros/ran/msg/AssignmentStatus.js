// Auto-generated. Do not edit!

// (in-package ran.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Id = require('./Id.js');
let AssignmentId = require('./AssignmentId.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class AssignmentStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.current_task_id = null;
      this.current_motion_id = null;
      this.current_action_id = null;
      this.last_finished_motion = null;
      this.last_finished_action = null;
      this.assignment_queue = null;
      this.footprint = null;
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
      if (initObj.hasOwnProperty('current_task_id')) {
        this.current_task_id = initObj.current_task_id
      }
      else {
        this.current_task_id = new Id();
      }
      if (initObj.hasOwnProperty('current_motion_id')) {
        this.current_motion_id = initObj.current_motion_id
      }
      else {
        this.current_motion_id = new Id();
      }
      if (initObj.hasOwnProperty('current_action_id')) {
        this.current_action_id = initObj.current_action_id
      }
      else {
        this.current_action_id = new Id();
      }
      if (initObj.hasOwnProperty('last_finished_motion')) {
        this.last_finished_motion = initObj.last_finished_motion
      }
      else {
        this.last_finished_motion = new Id();
      }
      if (initObj.hasOwnProperty('last_finished_action')) {
        this.last_finished_action = initObj.last_finished_action
      }
      else {
        this.last_finished_action = new Id();
      }
      if (initObj.hasOwnProperty('assignment_queue')) {
        this.assignment_queue = initObj.assignment_queue
      }
      else {
        this.assignment_queue = [];
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = new geometry_msgs.msg.PolygonStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AssignmentStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [current_task_id]
    bufferOffset = Id.serialize(obj.current_task_id, buffer, bufferOffset);
    // Serialize message field [current_motion_id]
    bufferOffset = Id.serialize(obj.current_motion_id, buffer, bufferOffset);
    // Serialize message field [current_action_id]
    bufferOffset = Id.serialize(obj.current_action_id, buffer, bufferOffset);
    // Serialize message field [last_finished_motion]
    bufferOffset = Id.serialize(obj.last_finished_motion, buffer, bufferOffset);
    // Serialize message field [last_finished_action]
    bufferOffset = Id.serialize(obj.last_finished_action, buffer, bufferOffset);
    // Serialize message field [assignment_queue]
    // Serialize the length for message field [assignment_queue]
    bufferOffset = _serializer.uint32(obj.assignment_queue.length, buffer, bufferOffset);
    obj.assignment_queue.forEach((val) => {
      bufferOffset = AssignmentId.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [footprint]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.footprint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignmentStatus
    let len;
    let data = new AssignmentStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_task_id]
    data.current_task_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_motion_id]
    data.current_motion_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_action_id]
    data.current_action_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_finished_motion]
    data.last_finished_motion = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_finished_action]
    data.last_finished_action = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [assignment_queue]
    // Deserialize array length for message field [assignment_queue]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.assignment_queue = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.assignment_queue[i] = AssignmentId.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [footprint]
    data.footprint = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.robot_id);
    length += Id.getMessageSize(object.current_task_id);
    length += Id.getMessageSize(object.current_motion_id);
    length += Id.getMessageSize(object.current_action_id);
    length += Id.getMessageSize(object.last_finished_motion);
    length += Id.getMessageSize(object.last_finished_action);
    length += 12 * object.assignment_queue.length;
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.footprint);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ran/AssignmentStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcb703123a6ab6a630050f9c05aea956';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    Id robot_id
    Id current_task_id
    Id current_motion_id
    Id current_action_id
    Id last_finished_motion
    Id last_finished_action
    AssignmentId[] assignment_queue
    # string assignment_queue
    geometry_msgs/PolygonStamped footprint
    
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
    MSG: ran/Id
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
    MSG: ran/AssignmentId
    # Message for the definition of the ids of an Assignment
    uint32 task_id
    uint32 action_id
    uint32 motion_id
    
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AssignmentStatus(null);
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

    if (msg.current_task_id !== undefined) {
      resolved.current_task_id = Id.Resolve(msg.current_task_id)
    }
    else {
      resolved.current_task_id = new Id()
    }

    if (msg.current_motion_id !== undefined) {
      resolved.current_motion_id = Id.Resolve(msg.current_motion_id)
    }
    else {
      resolved.current_motion_id = new Id()
    }

    if (msg.current_action_id !== undefined) {
      resolved.current_action_id = Id.Resolve(msg.current_action_id)
    }
    else {
      resolved.current_action_id = new Id()
    }

    if (msg.last_finished_motion !== undefined) {
      resolved.last_finished_motion = Id.Resolve(msg.last_finished_motion)
    }
    else {
      resolved.last_finished_motion = new Id()
    }

    if (msg.last_finished_action !== undefined) {
      resolved.last_finished_action = Id.Resolve(msg.last_finished_action)
    }
    else {
      resolved.last_finished_action = new Id()
    }

    if (msg.assignment_queue !== undefined) {
      resolved.assignment_queue = new Array(msg.assignment_queue.length);
      for (let i = 0; i < resolved.assignment_queue.length; ++i) {
        resolved.assignment_queue[i] = AssignmentId.Resolve(msg.assignment_queue[i]);
      }
    }
    else {
      resolved.assignment_queue = []
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = geometry_msgs.msg.PolygonStamped.Resolve(msg.footprint)
    }
    else {
      resolved.footprint = new geometry_msgs.msg.PolygonStamped()
    }

    return resolved;
    }
};

module.exports = AssignmentStatus;
