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
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class AssignmentStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_task_id = null;
      this.current_motion_id = null;
      this.current_action_id = null;
      this.last_finished_motion = null;
      this.last_finished_action = null;
      this.footprint = null;
    }
    else {
      if (initObj.hasOwnProperty('current_task_id')) {
        this.current_task_id = initObj.current_task_id
      }
      else {
        this.current_task_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('current_motion_id')) {
        this.current_motion_id = initObj.current_motion_id
      }
      else {
        this.current_motion_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('current_action_id')) {
        this.current_action_id = initObj.current_action_id
      }
      else {
        this.current_action_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('last_finished_motion')) {
        this.last_finished_motion = initObj.last_finished_motion
      }
      else {
        this.last_finished_motion = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('last_finished_action')) {
        this.last_finished_action = initObj.last_finished_action
      }
      else {
        this.last_finished_action = new mars_common_msgs.msg.Id();
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
    // Serialize message field [current_task_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.current_task_id, buffer, bufferOffset);
    // Serialize message field [current_motion_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.current_motion_id, buffer, bufferOffset);
    // Serialize message field [current_action_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.current_action_id, buffer, bufferOffset);
    // Serialize message field [last_finished_motion]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.last_finished_motion, buffer, bufferOffset);
    // Serialize message field [last_finished_action]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.last_finished_action, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.footprint, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AssignmentStatus
    let len;
    let data = new AssignmentStatus(null);
    // Deserialize message field [current_task_id]
    data.current_task_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_motion_id]
    data.current_motion_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [current_action_id]
    data.current_action_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_finished_motion]
    data.last_finished_motion = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [last_finished_action]
    data.last_finished_action = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mars_common_msgs.msg.Id.getMessageSize(object.current_task_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.current_motion_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.current_action_id);
    length += mars_common_msgs.msg.Id.getMessageSize(object.last_finished_motion);
    length += mars_common_msgs.msg.Id.getMessageSize(object.last_finished_action);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.footprint);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/AssignmentStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51331f0d54af7e13d2a0c817444fec5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mars_common_msgs/Id current_task_id
    mars_common_msgs/Id current_motion_id
    mars_common_msgs/Id current_action_id
    mars_common_msgs/Id last_finished_motion
    mars_common_msgs/Id last_finished_action
    geometry_msgs/PolygonStamped footprint
    
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
    MSG: geometry_msgs/PolygonStamped
    # This represents a Polygon with reference coordinate frame and timestamp
    Header header
    Polygon polygon
    
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
    if (msg.current_task_id !== undefined) {
      resolved.current_task_id = mars_common_msgs.msg.Id.Resolve(msg.current_task_id)
    }
    else {
      resolved.current_task_id = new mars_common_msgs.msg.Id()
    }

    if (msg.current_motion_id !== undefined) {
      resolved.current_motion_id = mars_common_msgs.msg.Id.Resolve(msg.current_motion_id)
    }
    else {
      resolved.current_motion_id = new mars_common_msgs.msg.Id()
    }

    if (msg.current_action_id !== undefined) {
      resolved.current_action_id = mars_common_msgs.msg.Id.Resolve(msg.current_action_id)
    }
    else {
      resolved.current_action_id = new mars_common_msgs.msg.Id()
    }

    if (msg.last_finished_motion !== undefined) {
      resolved.last_finished_motion = mars_common_msgs.msg.Id.Resolve(msg.last_finished_motion)
    }
    else {
      resolved.last_finished_motion = new mars_common_msgs.msg.Id()
    }

    if (msg.last_finished_action !== undefined) {
      resolved.last_finished_action = mars_common_msgs.msg.Id.Resolve(msg.last_finished_action)
    }
    else {
      resolved.last_finished_action = new mars_common_msgs.msg.Id()
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
