// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehicleType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_type = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_type')) {
        this.vehicle_type = initObj.vehicle_type
      }
      else {
        this.vehicle_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehicleType
    // Serialize message field [vehicle_type]
    bufferOffset = _serializer.uint8(obj.vehicle_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehicleType
    let len;
    let data = new VehicleType(null);
    // Deserialize message field [vehicle_type]
    data.vehicle_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/VehicleType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9f648c084537d153d8f0e336521e728';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # supported vehicle_types
    uint8 VEHICLE_TYPE_UNKNOWN=0
    # TODO:add correct vehicle_types!
    uint8 VEHICLE_TYPE_SUPPLY_VEHICLE=1
    uint8 VEHICLE_TYPE_ASSEMBLY_VEHICLE=2
    
    # type of the vehicle
    uint8 vehicle_type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehicleType(null);
    if (msg.vehicle_type !== undefined) {
      resolved.vehicle_type = msg.vehicle_type;
    }
    else {
      resolved.vehicle_type = 0
    }

    return resolved;
    }
};

// Constants for message
VehicleType.Constants = {
  VEHICLE_TYPE_UNKNOWN: 0,
  VEHICLE_TYPE_SUPPLY_VEHICLE: 1,
  VEHICLE_TYPE_ASSEMBLY_VEHICLE: 2,
}

module.exports = VehicleType;
