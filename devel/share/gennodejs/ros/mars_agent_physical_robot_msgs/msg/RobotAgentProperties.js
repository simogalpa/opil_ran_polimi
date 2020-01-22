// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let VehicleType = require('./VehicleType.js');
let RobotAction = require('./RobotAction.js');
let geometry_msgs = _finder('geometry_msgs');
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class RobotAgentProperties {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.type = null;
      this.footprint = null;
      this.min_height = null;
      this.max_height = null;
      this.payload = null;
      this.max_pos_x_vel = null;
      this.max_neg_x_vel = null;
      this.max_pos_x_acc = null;
      this.max_neg_x_acc = null;
      this.max_pos_y_vel = null;
      this.max_neg_y_vel = null;
      this.max_pos_y_acc = null;
      this.max_neg_y_acc = null;
      this.max_pos_ang_vel = null;
      this.max_neg_ang_vel = null;
      this.max_pos_ang_acc = null;
      this.max_neg_ang_acc = null;
      this.velocity_control_sensitivity = null;
      this.min_turning_radius = null;
      this.batt_capacity = null;
      this.batt_max_voltage = null;
      this.weight = null;
      this.vendor = null;
      this.action_capability = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = new mars_common_msgs.msg.Id();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = new VehicleType();
      }
      if (initObj.hasOwnProperty('footprint')) {
        this.footprint = initObj.footprint
      }
      else {
        this.footprint = new geometry_msgs.msg.PolygonStamped();
      }
      if (initObj.hasOwnProperty('min_height')) {
        this.min_height = initObj.min_height
      }
      else {
        this.min_height = 0.0;
      }
      if (initObj.hasOwnProperty('max_height')) {
        this.max_height = initObj.max_height
      }
      else {
        this.max_height = 0.0;
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_x_vel')) {
        this.max_pos_x_vel = initObj.max_pos_x_vel
      }
      else {
        this.max_pos_x_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_x_vel')) {
        this.max_neg_x_vel = initObj.max_neg_x_vel
      }
      else {
        this.max_neg_x_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_x_acc')) {
        this.max_pos_x_acc = initObj.max_pos_x_acc
      }
      else {
        this.max_pos_x_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_x_acc')) {
        this.max_neg_x_acc = initObj.max_neg_x_acc
      }
      else {
        this.max_neg_x_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_y_vel')) {
        this.max_pos_y_vel = initObj.max_pos_y_vel
      }
      else {
        this.max_pos_y_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_y_vel')) {
        this.max_neg_y_vel = initObj.max_neg_y_vel
      }
      else {
        this.max_neg_y_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_y_acc')) {
        this.max_pos_y_acc = initObj.max_pos_y_acc
      }
      else {
        this.max_pos_y_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_y_acc')) {
        this.max_neg_y_acc = initObj.max_neg_y_acc
      }
      else {
        this.max_neg_y_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_ang_vel')) {
        this.max_pos_ang_vel = initObj.max_pos_ang_vel
      }
      else {
        this.max_pos_ang_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_ang_vel')) {
        this.max_neg_ang_vel = initObj.max_neg_ang_vel
      }
      else {
        this.max_neg_ang_vel = 0.0;
      }
      if (initObj.hasOwnProperty('max_pos_ang_acc')) {
        this.max_pos_ang_acc = initObj.max_pos_ang_acc
      }
      else {
        this.max_pos_ang_acc = 0.0;
      }
      if (initObj.hasOwnProperty('max_neg_ang_acc')) {
        this.max_neg_ang_acc = initObj.max_neg_ang_acc
      }
      else {
        this.max_neg_ang_acc = 0.0;
      }
      if (initObj.hasOwnProperty('velocity_control_sensitivity')) {
        this.velocity_control_sensitivity = initObj.velocity_control_sensitivity
      }
      else {
        this.velocity_control_sensitivity = 0.0;
      }
      if (initObj.hasOwnProperty('min_turning_radius')) {
        this.min_turning_radius = initObj.min_turning_radius
      }
      else {
        this.min_turning_radius = 0.0;
      }
      if (initObj.hasOwnProperty('batt_capacity')) {
        this.batt_capacity = initObj.batt_capacity
      }
      else {
        this.batt_capacity = 0.0;
      }
      if (initObj.hasOwnProperty('batt_max_voltage')) {
        this.batt_max_voltage = initObj.batt_max_voltage
      }
      else {
        this.batt_max_voltage = 0.0;
      }
      if (initObj.hasOwnProperty('weight')) {
        this.weight = initObj.weight
      }
      else {
        this.weight = 0.0;
      }
      if (initObj.hasOwnProperty('vendor')) {
        this.vendor = initObj.vendor
      }
      else {
        this.vendor = '';
      }
      if (initObj.hasOwnProperty('action_capability')) {
        this.action_capability = initObj.action_capability
      }
      else {
        this.action_capability = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotAgentProperties
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = VehicleType.serialize(obj.type, buffer, bufferOffset);
    // Serialize message field [footprint]
    bufferOffset = geometry_msgs.msg.PolygonStamped.serialize(obj.footprint, buffer, bufferOffset);
    // Serialize message field [min_height]
    bufferOffset = _serializer.float32(obj.min_height, buffer, bufferOffset);
    // Serialize message field [max_height]
    bufferOffset = _serializer.float32(obj.max_height, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _serializer.float32(obj.payload, buffer, bufferOffset);
    // Serialize message field [max_pos_x_vel]
    bufferOffset = _serializer.float32(obj.max_pos_x_vel, buffer, bufferOffset);
    // Serialize message field [max_neg_x_vel]
    bufferOffset = _serializer.float32(obj.max_neg_x_vel, buffer, bufferOffset);
    // Serialize message field [max_pos_x_acc]
    bufferOffset = _serializer.float32(obj.max_pos_x_acc, buffer, bufferOffset);
    // Serialize message field [max_neg_x_acc]
    bufferOffset = _serializer.float32(obj.max_neg_x_acc, buffer, bufferOffset);
    // Serialize message field [max_pos_y_vel]
    bufferOffset = _serializer.float32(obj.max_pos_y_vel, buffer, bufferOffset);
    // Serialize message field [max_neg_y_vel]
    bufferOffset = _serializer.float32(obj.max_neg_y_vel, buffer, bufferOffset);
    // Serialize message field [max_pos_y_acc]
    bufferOffset = _serializer.float32(obj.max_pos_y_acc, buffer, bufferOffset);
    // Serialize message field [max_neg_y_acc]
    bufferOffset = _serializer.float32(obj.max_neg_y_acc, buffer, bufferOffset);
    // Serialize message field [max_pos_ang_vel]
    bufferOffset = _serializer.float32(obj.max_pos_ang_vel, buffer, bufferOffset);
    // Serialize message field [max_neg_ang_vel]
    bufferOffset = _serializer.float32(obj.max_neg_ang_vel, buffer, bufferOffset);
    // Serialize message field [max_pos_ang_acc]
    bufferOffset = _serializer.float32(obj.max_pos_ang_acc, buffer, bufferOffset);
    // Serialize message field [max_neg_ang_acc]
    bufferOffset = _serializer.float32(obj.max_neg_ang_acc, buffer, bufferOffset);
    // Serialize message field [velocity_control_sensitivity]
    bufferOffset = _serializer.float32(obj.velocity_control_sensitivity, buffer, bufferOffset);
    // Serialize message field [min_turning_radius]
    bufferOffset = _serializer.float32(obj.min_turning_radius, buffer, bufferOffset);
    // Serialize message field [batt_capacity]
    bufferOffset = _serializer.float32(obj.batt_capacity, buffer, bufferOffset);
    // Serialize message field [batt_max_voltage]
    bufferOffset = _serializer.float32(obj.batt_max_voltage, buffer, bufferOffset);
    // Serialize message field [weight]
    bufferOffset = _serializer.float32(obj.weight, buffer, bufferOffset);
    // Serialize message field [vendor]
    bufferOffset = _serializer.string(obj.vendor, buffer, bufferOffset);
    // Serialize message field [action_capability]
    // Serialize the length for message field [action_capability]
    bufferOffset = _serializer.uint32(obj.action_capability.length, buffer, bufferOffset);
    obj.action_capability.forEach((val) => {
      bufferOffset = RobotAction.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotAgentProperties
    let len;
    let data = new RobotAgentProperties(null);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = VehicleType.deserialize(buffer, bufferOffset);
    // Deserialize message field [footprint]
    data.footprint = geometry_msgs.msg.PolygonStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [min_height]
    data.min_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_height]
    data.max_height = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_x_vel]
    data.max_pos_x_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_x_vel]
    data.max_neg_x_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_x_acc]
    data.max_pos_x_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_x_acc]
    data.max_neg_x_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_y_vel]
    data.max_pos_y_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_y_vel]
    data.max_neg_y_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_y_acc]
    data.max_pos_y_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_y_acc]
    data.max_neg_y_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_ang_vel]
    data.max_pos_ang_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_ang_vel]
    data.max_neg_ang_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_pos_ang_acc]
    data.max_pos_ang_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_neg_ang_acc]
    data.max_neg_ang_acc = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [velocity_control_sensitivity]
    data.velocity_control_sensitivity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_turning_radius]
    data.min_turning_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batt_capacity]
    data.batt_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batt_max_voltage]
    data.batt_max_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [weight]
    data.weight = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vendor]
    data.vendor = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action_capability]
    // Deserialize array length for message field [action_capability]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.action_capability = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.action_capability[i] = RobotAction.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    length += geometry_msgs.msg.PolygonStamped.getMessageSize(object.footprint);
    length += object.vendor.length;
    object.action_capability.forEach((val) => {
      length += RobotAction.getMessageSize(val);
    });
    return length + 89;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/RobotAgentProperties';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44f789db54776ca317c570895c1f3583';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    mars_common_msgs/Id robot_id
    VehicleType type
    geometry_msgs/PolygonStamped footprint
    float32 min_height
    float32 max_height
    float32 payload
    float32 max_pos_x_vel
    float32 max_neg_x_vel
    float32 max_pos_x_acc
    float32 max_neg_x_acc
    float32 max_pos_y_vel
    float32 max_neg_y_vel
    float32 max_pos_y_acc
    float32 max_neg_y_acc
    float32 max_pos_ang_vel
    float32 max_neg_ang_vel
    float32 max_pos_ang_acc
    float32 max_neg_ang_acc
    float32 velocity_control_sensitivity
    float32 min_turning_radius
    float32 batt_capacity
    float32 batt_max_voltage
    float32 weight
    string vendor 
    RobotAction[] action_capability
    
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
    MSG: mars_agent_physical_robot_msgs/VehicleType
    # supported vehicle_types
    uint8 VEHICLE_TYPE_UNKNOWN=0
    # TODO:add correct vehicle_types!
    uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1
    uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2
    
    # type of the vehicle
    uint8 vehicle_type
    
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
    ================================================================================
    MSG: mars_agent_physical_robot_msgs/RobotAction
    # definition of all the possible actionsmars_agent_physical_robot_msgs
    uint8 CATEGORY_UNDEFINED = 0
    uint8 CATEGORY_NONE = 5
    uint8 CATEGORY_LOAD = 10
    uint8 CATEGORY_MANUAL_LOAD_START = 11
    uint8 CATEGORY_MANUAL_LOAD_DONE = 12
    uint8 CATEGORY_UNLOAD = 20
    uint8 CATEGORY_MANUAL_UNLOAD_START = 21
    uint8 CATEGORY_MANUAL_UNLOAD_DONE = 22
    uint8 CATEGORY_START_CHARGING = 30
    uint8 CATEGORY_STOP_CHARGING = 31
    # ...
    
    
    # Category of the action which has to be performed
    uint8 category
    # Defines the robot specific action which has to be performed. 
    # The specific actions must be defined by manufacturer. 
    uint8 action
    mars_common_msgs/Tuple[] attributes
    # Optional description of the action. E.g.: unload left
    string description
    
    
    ================================================================================
    MSG: mars_common_msgs/Tuple
    string type
    string name
    string value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotAgentProperties(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = mars_common_msgs.msg.Id.Resolve(msg.robot_id)
    }
    else {
      resolved.robot_id = new mars_common_msgs.msg.Id()
    }

    if (msg.type !== undefined) {
      resolved.type = VehicleType.Resolve(msg.type)
    }
    else {
      resolved.type = new VehicleType()
    }

    if (msg.footprint !== undefined) {
      resolved.footprint = geometry_msgs.msg.PolygonStamped.Resolve(msg.footprint)
    }
    else {
      resolved.footprint = new geometry_msgs.msg.PolygonStamped()
    }

    if (msg.min_height !== undefined) {
      resolved.min_height = msg.min_height;
    }
    else {
      resolved.min_height = 0.0
    }

    if (msg.max_height !== undefined) {
      resolved.max_height = msg.max_height;
    }
    else {
      resolved.max_height = 0.0
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = 0.0
    }

    if (msg.max_pos_x_vel !== undefined) {
      resolved.max_pos_x_vel = msg.max_pos_x_vel;
    }
    else {
      resolved.max_pos_x_vel = 0.0
    }

    if (msg.max_neg_x_vel !== undefined) {
      resolved.max_neg_x_vel = msg.max_neg_x_vel;
    }
    else {
      resolved.max_neg_x_vel = 0.0
    }

    if (msg.max_pos_x_acc !== undefined) {
      resolved.max_pos_x_acc = msg.max_pos_x_acc;
    }
    else {
      resolved.max_pos_x_acc = 0.0
    }

    if (msg.max_neg_x_acc !== undefined) {
      resolved.max_neg_x_acc = msg.max_neg_x_acc;
    }
    else {
      resolved.max_neg_x_acc = 0.0
    }

    if (msg.max_pos_y_vel !== undefined) {
      resolved.max_pos_y_vel = msg.max_pos_y_vel;
    }
    else {
      resolved.max_pos_y_vel = 0.0
    }

    if (msg.max_neg_y_vel !== undefined) {
      resolved.max_neg_y_vel = msg.max_neg_y_vel;
    }
    else {
      resolved.max_neg_y_vel = 0.0
    }

    if (msg.max_pos_y_acc !== undefined) {
      resolved.max_pos_y_acc = msg.max_pos_y_acc;
    }
    else {
      resolved.max_pos_y_acc = 0.0
    }

    if (msg.max_neg_y_acc !== undefined) {
      resolved.max_neg_y_acc = msg.max_neg_y_acc;
    }
    else {
      resolved.max_neg_y_acc = 0.0
    }

    if (msg.max_pos_ang_vel !== undefined) {
      resolved.max_pos_ang_vel = msg.max_pos_ang_vel;
    }
    else {
      resolved.max_pos_ang_vel = 0.0
    }

    if (msg.max_neg_ang_vel !== undefined) {
      resolved.max_neg_ang_vel = msg.max_neg_ang_vel;
    }
    else {
      resolved.max_neg_ang_vel = 0.0
    }

    if (msg.max_pos_ang_acc !== undefined) {
      resolved.max_pos_ang_acc = msg.max_pos_ang_acc;
    }
    else {
      resolved.max_pos_ang_acc = 0.0
    }

    if (msg.max_neg_ang_acc !== undefined) {
      resolved.max_neg_ang_acc = msg.max_neg_ang_acc;
    }
    else {
      resolved.max_neg_ang_acc = 0.0
    }

    if (msg.velocity_control_sensitivity !== undefined) {
      resolved.velocity_control_sensitivity = msg.velocity_control_sensitivity;
    }
    else {
      resolved.velocity_control_sensitivity = 0.0
    }

    if (msg.min_turning_radius !== undefined) {
      resolved.min_turning_radius = msg.min_turning_radius;
    }
    else {
      resolved.min_turning_radius = 0.0
    }

    if (msg.batt_capacity !== undefined) {
      resolved.batt_capacity = msg.batt_capacity;
    }
    else {
      resolved.batt_capacity = 0.0
    }

    if (msg.batt_max_voltage !== undefined) {
      resolved.batt_max_voltage = msg.batt_max_voltage;
    }
    else {
      resolved.batt_max_voltage = 0.0
    }

    if (msg.weight !== undefined) {
      resolved.weight = msg.weight;
    }
    else {
      resolved.weight = 0.0
    }

    if (msg.vendor !== undefined) {
      resolved.vendor = msg.vendor;
    }
    else {
      resolved.vendor = ''
    }

    if (msg.action_capability !== undefined) {
      resolved.action_capability = new Array(msg.action_capability.length);
      for (let i = 0; i < resolved.action_capability.length; ++i) {
        resolved.action_capability[i] = RobotAction.Resolve(msg.action_capability[i]);
      }
    }
    else {
      resolved.action_capability = []
    }

    return resolved;
    }
};

module.exports = RobotAgentProperties;
