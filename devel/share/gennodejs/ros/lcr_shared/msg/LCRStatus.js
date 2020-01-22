// Auto-generated. Do not edit!

// (in-package lcr_shared.msg)


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

class LCRStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.virtual_object_version_id = null;
      this.mission_id = null;
      this.wcs_adapter_ros_header = null;
      this.status = null;
      this.tag_seen = null;
      this.position = null;
      this.yaw = null;
      this.navigation_header = null;
      this.error_type = null;
      this.error_id = null;
      this.error_header = null;
      this.emergenza = null;
      this.bump_front = null;
      this.bump_rear = null;
      this.fall_front = null;
      this.fall_rear = null;
      this.motore_dx_fail = null;
      this.motore_sx_fail = null;
      this.errore_int_1 = null;
      this.errore_int_2 = null;
      this.battery_fail = null;
      this.battery_power = null;
      this.recharge_found = null;
      this.recharge_on = null;
      this.recharge_ok = null;
      this.hardware_status_header = null;
      this.serial_ok = null;
      this.serial_info = null;
      this.serial_header = null;
      this.laser_ok = null;
      this.laser_info = null;
      this.laser_header = null;
      this.planner_status = null;
      this.planner_info = null;
      this.controller_status = null;
      this.nextNode = null;
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
      if (initObj.hasOwnProperty('tag_seen')) {
        this.tag_seen = initObj.tag_seen
      }
      else {
        this.tag_seen = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('navigation_header')) {
        this.navigation_header = initObj.navigation_header
      }
      else {
        this.navigation_header = new std_msgs.msg.Header();
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
      if (initObj.hasOwnProperty('emergenza')) {
        this.emergenza = initObj.emergenza
      }
      else {
        this.emergenza = false;
      }
      if (initObj.hasOwnProperty('bump_front')) {
        this.bump_front = initObj.bump_front
      }
      else {
        this.bump_front = false;
      }
      if (initObj.hasOwnProperty('bump_rear')) {
        this.bump_rear = initObj.bump_rear
      }
      else {
        this.bump_rear = false;
      }
      if (initObj.hasOwnProperty('fall_front')) {
        this.fall_front = initObj.fall_front
      }
      else {
        this.fall_front = false;
      }
      if (initObj.hasOwnProperty('fall_rear')) {
        this.fall_rear = initObj.fall_rear
      }
      else {
        this.fall_rear = false;
      }
      if (initObj.hasOwnProperty('motore_dx_fail')) {
        this.motore_dx_fail = initObj.motore_dx_fail
      }
      else {
        this.motore_dx_fail = false;
      }
      if (initObj.hasOwnProperty('motore_sx_fail')) {
        this.motore_sx_fail = initObj.motore_sx_fail
      }
      else {
        this.motore_sx_fail = false;
      }
      if (initObj.hasOwnProperty('errore_int_1')) {
        this.errore_int_1 = initObj.errore_int_1
      }
      else {
        this.errore_int_1 = false;
      }
      if (initObj.hasOwnProperty('errore_int_2')) {
        this.errore_int_2 = initObj.errore_int_2
      }
      else {
        this.errore_int_2 = false;
      }
      if (initObj.hasOwnProperty('battery_fail')) {
        this.battery_fail = initObj.battery_fail
      }
      else {
        this.battery_fail = false;
      }
      if (initObj.hasOwnProperty('battery_power')) {
        this.battery_power = initObj.battery_power
      }
      else {
        this.battery_power = 0;
      }
      if (initObj.hasOwnProperty('recharge_found')) {
        this.recharge_found = initObj.recharge_found
      }
      else {
        this.recharge_found = false;
      }
      if (initObj.hasOwnProperty('recharge_on')) {
        this.recharge_on = initObj.recharge_on
      }
      else {
        this.recharge_on = false;
      }
      if (initObj.hasOwnProperty('recharge_ok')) {
        this.recharge_ok = initObj.recharge_ok
      }
      else {
        this.recharge_ok = false;
      }
      if (initObj.hasOwnProperty('hardware_status_header')) {
        this.hardware_status_header = initObj.hardware_status_header
      }
      else {
        this.hardware_status_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('serial_ok')) {
        this.serial_ok = initObj.serial_ok
      }
      else {
        this.serial_ok = false;
      }
      if (initObj.hasOwnProperty('serial_info')) {
        this.serial_info = initObj.serial_info
      }
      else {
        this.serial_info = 0;
      }
      if (initObj.hasOwnProperty('serial_header')) {
        this.serial_header = initObj.serial_header
      }
      else {
        this.serial_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('laser_ok')) {
        this.laser_ok = initObj.laser_ok
      }
      else {
        this.laser_ok = false;
      }
      if (initObj.hasOwnProperty('laser_info')) {
        this.laser_info = initObj.laser_info
      }
      else {
        this.laser_info = 0;
      }
      if (initObj.hasOwnProperty('laser_header')) {
        this.laser_header = initObj.laser_header
      }
      else {
        this.laser_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('planner_status')) {
        this.planner_status = initObj.planner_status
      }
      else {
        this.planner_status = '';
      }
      if (initObj.hasOwnProperty('planner_info')) {
        this.planner_info = initObj.planner_info
      }
      else {
        this.planner_info = 0;
      }
      if (initObj.hasOwnProperty('controller_status')) {
        this.controller_status = initObj.controller_status
      }
      else {
        this.controller_status = '';
      }
      if (initObj.hasOwnProperty('nextNode')) {
        this.nextNode = initObj.nextNode
      }
      else {
        this.nextNode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LCRStatus
    // Serialize message field [virtual_object_version_id]
    bufferOffset = _serializer.int32(obj.virtual_object_version_id, buffer, bufferOffset);
    // Serialize message field [mission_id]
    bufferOffset = _serializer.string(obj.mission_id, buffer, bufferOffset);
    // Serialize message field [wcs_adapter_ros_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.wcs_adapter_ros_header, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int8(obj.status, buffer, bufferOffset);
    // Serialize message field [tag_seen]
    bufferOffset = _serializer.int32(obj.tag_seen, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [navigation_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.navigation_header, buffer, bufferOffset);
    // Serialize message field [error_type]
    bufferOffset = _serializer.int8(obj.error_type, buffer, bufferOffset);
    // Serialize message field [error_id]
    bufferOffset = _serializer.string(obj.error_id, buffer, bufferOffset);
    // Serialize message field [error_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.error_header, buffer, bufferOffset);
    // Serialize message field [emergenza]
    bufferOffset = _serializer.bool(obj.emergenza, buffer, bufferOffset);
    // Serialize message field [bump_front]
    bufferOffset = _serializer.bool(obj.bump_front, buffer, bufferOffset);
    // Serialize message field [bump_rear]
    bufferOffset = _serializer.bool(obj.bump_rear, buffer, bufferOffset);
    // Serialize message field [fall_front]
    bufferOffset = _serializer.bool(obj.fall_front, buffer, bufferOffset);
    // Serialize message field [fall_rear]
    bufferOffset = _serializer.bool(obj.fall_rear, buffer, bufferOffset);
    // Serialize message field [motore_dx_fail]
    bufferOffset = _serializer.bool(obj.motore_dx_fail, buffer, bufferOffset);
    // Serialize message field [motore_sx_fail]
    bufferOffset = _serializer.bool(obj.motore_sx_fail, buffer, bufferOffset);
    // Serialize message field [errore_int_1]
    bufferOffset = _serializer.bool(obj.errore_int_1, buffer, bufferOffset);
    // Serialize message field [errore_int_2]
    bufferOffset = _serializer.bool(obj.errore_int_2, buffer, bufferOffset);
    // Serialize message field [battery_fail]
    bufferOffset = _serializer.bool(obj.battery_fail, buffer, bufferOffset);
    // Serialize message field [battery_power]
    bufferOffset = _serializer.int32(obj.battery_power, buffer, bufferOffset);
    // Serialize message field [recharge_found]
    bufferOffset = _serializer.bool(obj.recharge_found, buffer, bufferOffset);
    // Serialize message field [recharge_on]
    bufferOffset = _serializer.bool(obj.recharge_on, buffer, bufferOffset);
    // Serialize message field [recharge_ok]
    bufferOffset = _serializer.bool(obj.recharge_ok, buffer, bufferOffset);
    // Serialize message field [hardware_status_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.hardware_status_header, buffer, bufferOffset);
    // Serialize message field [serial_ok]
    bufferOffset = _serializer.bool(obj.serial_ok, buffer, bufferOffset);
    // Serialize message field [serial_info]
    bufferOffset = _serializer.int8(obj.serial_info, buffer, bufferOffset);
    // Serialize message field [serial_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.serial_header, buffer, bufferOffset);
    // Serialize message field [laser_ok]
    bufferOffset = _serializer.bool(obj.laser_ok, buffer, bufferOffset);
    // Serialize message field [laser_info]
    bufferOffset = _serializer.int8(obj.laser_info, buffer, bufferOffset);
    // Serialize message field [laser_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.laser_header, buffer, bufferOffset);
    // Serialize message field [planner_status]
    bufferOffset = _serializer.string(obj.planner_status, buffer, bufferOffset);
    // Serialize message field [planner_info]
    bufferOffset = _serializer.int8(obj.planner_info, buffer, bufferOffset);
    // Serialize message field [controller_status]
    bufferOffset = _serializer.string(obj.controller_status, buffer, bufferOffset);
    // Serialize message field [nextNode]
    bufferOffset = _serializer.int32(obj.nextNode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LCRStatus
    let len;
    let data = new LCRStatus(null);
    // Deserialize message field [virtual_object_version_id]
    data.virtual_object_version_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mission_id]
    data.mission_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [wcs_adapter_ros_header]
    data.wcs_adapter_ros_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tag_seen]
    data.tag_seen = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [navigation_header]
    data.navigation_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [error_type]
    data.error_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [error_id]
    data.error_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [error_header]
    data.error_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [emergenza]
    data.emergenza = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bump_front]
    data.bump_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [bump_rear]
    data.bump_rear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall_front]
    data.fall_front = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [fall_rear]
    data.fall_rear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motore_dx_fail]
    data.motore_dx_fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [motore_sx_fail]
    data.motore_sx_fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [errore_int_1]
    data.errore_int_1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [errore_int_2]
    data.errore_int_2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_fail]
    data.battery_fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_power]
    data.battery_power = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [recharge_found]
    data.recharge_found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [recharge_on]
    data.recharge_on = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [recharge_ok]
    data.recharge_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hardware_status_header]
    data.hardware_status_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [serial_ok]
    data.serial_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [serial_info]
    data.serial_info = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [serial_header]
    data.serial_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [laser_ok]
    data.laser_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [laser_info]
    data.laser_info = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [laser_header]
    data.laser_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [planner_status]
    data.planner_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [planner_info]
    data.planner_info = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [controller_status]
    data.controller_status = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [nextNode]
    data.nextNode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.mission_id.length;
    length += std_msgs.msg.Header.getMessageSize(object.wcs_adapter_ros_header);
    length += std_msgs.msg.Header.getMessageSize(object.navigation_header);
    length += object.error_id.length;
    length += std_msgs.msg.Header.getMessageSize(object.error_header);
    length += std_msgs.msg.Header.getMessageSize(object.hardware_status_header);
    length += std_msgs.msg.Header.getMessageSize(object.serial_header);
    length += std_msgs.msg.Header.getMessageSize(object.laser_header);
    length += object.planner_status.length;
    length += object.controller_status.length;
    return length + 116;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_shared/LCRStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a0b17cfb00f69212db580b1be903bfd6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 virtual_object_version_id
    string mission_id
    Header wcs_adapter_ros_header
    
    #Possibili valori di status 
    int8 SHUTDOWN = 0 #robot in fase di arresto o riavvio
    int8 POWERED = 1  #tasto power premuto
    int8 SYNCHRONIZING = 2 #arrivata richiesta di sincronizzazione
    int8 LOCALIZING = 3 #in fase di setup. Il tasto run è premuto ma il robot non è stato ancora localizzato.
    int8 RUN = 4 #robot localizzato e funzionante, il comando del robot è in carico alla GUI Onit.
    int8 LOST = 5 #robot perso
    int8 CHARGING = 6 #robot in fase di ricarica
    int8 LOCALIZATION_REQUIRED = 7 #il robot deve essere localizzato con un tag
    int8 ECO = 8 #modalità eco attiva
    int8 STATUS_SIZE = 9 #delimiter of status size
    
    # informazioni aggiuntive per il WCS adapter: *_info
    int8 RUNNING = 0
    int8 RESTART = 1
    int8 STOPPED = 2
    
    int8 status
    int32 tag_seen # -1 , nessun tag visto, altrimenti id tag
    geometry_msgs/Pose position
    float64 yaw
    Header navigation_header
    
    int8 error_type #0 no error
    string error_id
    Header error_header
    
    bool emergenza #bottone premuto
    bool bump_front
    bool bump_rear
    bool fall_front
    bool fall_rear
    bool motore_dx_fail #surriscaldamento o corto
    bool motore_sx_fail #surriscaldamento o corto
    bool errore_int_1 #errore elettronico irrecuperabile
    bool errore_int_2 #errore elettronico irrecuperabile
    bool battery_fail #tensione di batteria troppo bassa
    int32 battery_power #percentuale
    bool recharge_found
    bool recharge_on
    bool recharge_ok
    Header hardware_status_header
    
    bool serial_ok
    int8 serial_info
    Header serial_header
    
    bool laser_ok
    int8 laser_info
    Header laser_header
    
    string planner_status
    int8 planner_info
    
    string controller_status
    int32 nextNode
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
    const resolved = new LCRStatus(null);
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

    if (msg.tag_seen !== undefined) {
      resolved.tag_seen = msg.tag_seen;
    }
    else {
      resolved.tag_seen = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Pose.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Pose()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.navigation_header !== undefined) {
      resolved.navigation_header = std_msgs.msg.Header.Resolve(msg.navigation_header)
    }
    else {
      resolved.navigation_header = new std_msgs.msg.Header()
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

    if (msg.emergenza !== undefined) {
      resolved.emergenza = msg.emergenza;
    }
    else {
      resolved.emergenza = false
    }

    if (msg.bump_front !== undefined) {
      resolved.bump_front = msg.bump_front;
    }
    else {
      resolved.bump_front = false
    }

    if (msg.bump_rear !== undefined) {
      resolved.bump_rear = msg.bump_rear;
    }
    else {
      resolved.bump_rear = false
    }

    if (msg.fall_front !== undefined) {
      resolved.fall_front = msg.fall_front;
    }
    else {
      resolved.fall_front = false
    }

    if (msg.fall_rear !== undefined) {
      resolved.fall_rear = msg.fall_rear;
    }
    else {
      resolved.fall_rear = false
    }

    if (msg.motore_dx_fail !== undefined) {
      resolved.motore_dx_fail = msg.motore_dx_fail;
    }
    else {
      resolved.motore_dx_fail = false
    }

    if (msg.motore_sx_fail !== undefined) {
      resolved.motore_sx_fail = msg.motore_sx_fail;
    }
    else {
      resolved.motore_sx_fail = false
    }

    if (msg.errore_int_1 !== undefined) {
      resolved.errore_int_1 = msg.errore_int_1;
    }
    else {
      resolved.errore_int_1 = false
    }

    if (msg.errore_int_2 !== undefined) {
      resolved.errore_int_2 = msg.errore_int_2;
    }
    else {
      resolved.errore_int_2 = false
    }

    if (msg.battery_fail !== undefined) {
      resolved.battery_fail = msg.battery_fail;
    }
    else {
      resolved.battery_fail = false
    }

    if (msg.battery_power !== undefined) {
      resolved.battery_power = msg.battery_power;
    }
    else {
      resolved.battery_power = 0
    }

    if (msg.recharge_found !== undefined) {
      resolved.recharge_found = msg.recharge_found;
    }
    else {
      resolved.recharge_found = false
    }

    if (msg.recharge_on !== undefined) {
      resolved.recharge_on = msg.recharge_on;
    }
    else {
      resolved.recharge_on = false
    }

    if (msg.recharge_ok !== undefined) {
      resolved.recharge_ok = msg.recharge_ok;
    }
    else {
      resolved.recharge_ok = false
    }

    if (msg.hardware_status_header !== undefined) {
      resolved.hardware_status_header = std_msgs.msg.Header.Resolve(msg.hardware_status_header)
    }
    else {
      resolved.hardware_status_header = new std_msgs.msg.Header()
    }

    if (msg.serial_ok !== undefined) {
      resolved.serial_ok = msg.serial_ok;
    }
    else {
      resolved.serial_ok = false
    }

    if (msg.serial_info !== undefined) {
      resolved.serial_info = msg.serial_info;
    }
    else {
      resolved.serial_info = 0
    }

    if (msg.serial_header !== undefined) {
      resolved.serial_header = std_msgs.msg.Header.Resolve(msg.serial_header)
    }
    else {
      resolved.serial_header = new std_msgs.msg.Header()
    }

    if (msg.laser_ok !== undefined) {
      resolved.laser_ok = msg.laser_ok;
    }
    else {
      resolved.laser_ok = false
    }

    if (msg.laser_info !== undefined) {
      resolved.laser_info = msg.laser_info;
    }
    else {
      resolved.laser_info = 0
    }

    if (msg.laser_header !== undefined) {
      resolved.laser_header = std_msgs.msg.Header.Resolve(msg.laser_header)
    }
    else {
      resolved.laser_header = new std_msgs.msg.Header()
    }

    if (msg.planner_status !== undefined) {
      resolved.planner_status = msg.planner_status;
    }
    else {
      resolved.planner_status = ''
    }

    if (msg.planner_info !== undefined) {
      resolved.planner_info = msg.planner_info;
    }
    else {
      resolved.planner_info = 0
    }

    if (msg.controller_status !== undefined) {
      resolved.controller_status = msg.controller_status;
    }
    else {
      resolved.controller_status = ''
    }

    if (msg.nextNode !== undefined) {
      resolved.nextNode = msg.nextNode;
    }
    else {
      resolved.nextNode = 0
    }

    return resolved;
    }
};

// Constants for message
LCRStatus.Constants = {
  SHUTDOWN: 0,
  POWERED: 1,
  SYNCHRONIZING: 2,
  LOCALIZING: 3,
  RUN: 4,
  LOST: 5,
  CHARGING: 6,
  LOCALIZATION_REQUIRED: 7,
  ECO: 8,
  STATUS_SIZE: 9,
  RUNNING: 0,
  RESTART: 1,
  STOPPED: 2,
}

module.exports = LCRStatus;
