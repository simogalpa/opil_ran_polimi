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
let RobotAction = require('./RobotAction.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotDescriptionAGV {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.vehicle_id = null;
      this.left_size = null;
      this.right_size = null;
      this.front_size = null;
      this.rear_size = null;
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
      this.velocity_control_sensitivity = null;
      this.min_turning_radius = null;
      this.batt_capacity = null;
      this.batt_max_voltage = null;
      this.vehicle_type = null;
      this.vendor = null;
      this.action_capability = null;
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
        this.vehicle_id = new Id();
      }
      if (initObj.hasOwnProperty('left_size')) {
        this.left_size = initObj.left_size
      }
      else {
        this.left_size = 0.0;
      }
      if (initObj.hasOwnProperty('right_size')) {
        this.right_size = initObj.right_size
      }
      else {
        this.right_size = 0.0;
      }
      if (initObj.hasOwnProperty('front_size')) {
        this.front_size = initObj.front_size
      }
      else {
        this.front_size = 0.0;
      }
      if (initObj.hasOwnProperty('rear_size')) {
        this.rear_size = initObj.rear_size
      }
      else {
        this.rear_size = 0.0;
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
      if (initObj.hasOwnProperty('vehicle_type')) {
        this.vehicle_type = initObj.vehicle_type
      }
      else {
        this.vehicle_type = '';
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
    // Serializes a message object of type RobotDescriptionAGV
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [vehicle_id]
    bufferOffset = Id.serialize(obj.vehicle_id, buffer, bufferOffset);
    // Serialize message field [left_size]
    bufferOffset = _serializer.float32(obj.left_size, buffer, bufferOffset);
    // Serialize message field [right_size]
    bufferOffset = _serializer.float32(obj.right_size, buffer, bufferOffset);
    // Serialize message field [front_size]
    bufferOffset = _serializer.float32(obj.front_size, buffer, bufferOffset);
    // Serialize message field [rear_size]
    bufferOffset = _serializer.float32(obj.rear_size, buffer, bufferOffset);
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
    // Serialize message field [velocity_control_sensitivity]
    bufferOffset = _serializer.float32(obj.velocity_control_sensitivity, buffer, bufferOffset);
    // Serialize message field [min_turning_radius]
    bufferOffset = _serializer.float32(obj.min_turning_radius, buffer, bufferOffset);
    // Serialize message field [batt_capacity]
    bufferOffset = _serializer.float32(obj.batt_capacity, buffer, bufferOffset);
    // Serialize message field [batt_max_voltage]
    bufferOffset = _serializer.float32(obj.batt_max_voltage, buffer, bufferOffset);
    // Serialize message field [vehicle_type]
    bufferOffset = _serializer.string(obj.vehicle_type, buffer, bufferOffset);
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
    //deserializes a message object of type RobotDescriptionAGV
    let len;
    let data = new RobotDescriptionAGV(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [vehicle_id]
    data.vehicle_id = Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_size]
    data.left_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [right_size]
    data.right_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [front_size]
    data.front_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rear_size]
    data.rear_size = _deserializer.float32(buffer, bufferOffset);
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
    // Deserialize message field [velocity_control_sensitivity]
    data.velocity_control_sensitivity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_turning_radius]
    data.min_turning_radius = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batt_capacity]
    data.batt_capacity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [batt_max_voltage]
    data.batt_max_voltage = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_type]
    data.vehicle_type = _deserializer.string(buffer, bufferOffset);
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
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Id.getMessageSize(object.vehicle_id);
    length += object.vehicle_type.length;
    length += object.vendor.length;
    object.action_capability.forEach((val) => {
      length += RobotAction.getMessageSize(val);
    });
    return length + 96;
  }

  static datatype() {
    // Returns string type for a message object
    return 'opil_v2/RobotDescriptionAGV';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '800c3c6d6616acec91eaf106544798b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    Id vehicle_id
    float32 left_size
    float32 right_size
    float32 front_size
    float32 rear_size
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
    float32 velocity_control_sensitivity
    float32 min_turning_radius
    float32 batt_capacity
    float32 batt_max_voltage
    string vehicle_type
    string vendor 
    RobotAction[] action_capability
    
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
    MSG: opil_v2/RobotAction
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
    Tuple[] attributes
    # Optional description of the action. E.g.: unload left
    string description
    
    
    ================================================================================
    MSG: opil_v2/Tuple
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
    const resolved = new RobotDescriptionAGV(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.vehicle_id !== undefined) {
      resolved.vehicle_id = Id.Resolve(msg.vehicle_id)
    }
    else {
      resolved.vehicle_id = new Id()
    }

    if (msg.left_size !== undefined) {
      resolved.left_size = msg.left_size;
    }
    else {
      resolved.left_size = 0.0
    }

    if (msg.right_size !== undefined) {
      resolved.right_size = msg.right_size;
    }
    else {
      resolved.right_size = 0.0
    }

    if (msg.front_size !== undefined) {
      resolved.front_size = msg.front_size;
    }
    else {
      resolved.front_size = 0.0
    }

    if (msg.rear_size !== undefined) {
      resolved.rear_size = msg.rear_size;
    }
    else {
      resolved.rear_size = 0.0
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

    if (msg.vehicle_type !== undefined) {
      resolved.vehicle_type = msg.vehicle_type;
    }
    else {
      resolved.vehicle_type = ''
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

module.exports = RobotDescriptionAGV;
