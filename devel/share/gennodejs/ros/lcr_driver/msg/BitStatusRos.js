// Auto-generated. Do not edit!

// (in-package lcr_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BitStatusRos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.st_Ros_BumpFront = null;
      this.st_Ros_BumpRear = null;
      this.st_Ros_FallFront = null;
      this.st_Ros_FallRear = null;
      this.st_Ros_Emergenza = null;
      this.st_Ros_ErrInt1 = null;
      this.st_Ros_ErrInt2 = null;
      this.st_Ros_Mot_DX_Fail = null;
      this.st_Ros_Mot_SX_Fail = null;
      this.st_Ros_Recharge_Found = null;
      this.st_Ros_Recharge_On = null;
      this.st_Ros_Recharge_Ok = null;
      this.st_Ros_BatteryFail = null;
      this.NofBitStatusRos = null;
    }
    else {
      if (initObj.hasOwnProperty('st_Ros_BumpFront')) {
        this.st_Ros_BumpFront = initObj.st_Ros_BumpFront
      }
      else {
        this.st_Ros_BumpFront = false;
      }
      if (initObj.hasOwnProperty('st_Ros_BumpRear')) {
        this.st_Ros_BumpRear = initObj.st_Ros_BumpRear
      }
      else {
        this.st_Ros_BumpRear = false;
      }
      if (initObj.hasOwnProperty('st_Ros_FallFront')) {
        this.st_Ros_FallFront = initObj.st_Ros_FallFront
      }
      else {
        this.st_Ros_FallFront = false;
      }
      if (initObj.hasOwnProperty('st_Ros_FallRear')) {
        this.st_Ros_FallRear = initObj.st_Ros_FallRear
      }
      else {
        this.st_Ros_FallRear = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Emergenza')) {
        this.st_Ros_Emergenza = initObj.st_Ros_Emergenza
      }
      else {
        this.st_Ros_Emergenza = false;
      }
      if (initObj.hasOwnProperty('st_Ros_ErrInt1')) {
        this.st_Ros_ErrInt1 = initObj.st_Ros_ErrInt1
      }
      else {
        this.st_Ros_ErrInt1 = false;
      }
      if (initObj.hasOwnProperty('st_Ros_ErrInt2')) {
        this.st_Ros_ErrInt2 = initObj.st_Ros_ErrInt2
      }
      else {
        this.st_Ros_ErrInt2 = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Mot_DX_Fail')) {
        this.st_Ros_Mot_DX_Fail = initObj.st_Ros_Mot_DX_Fail
      }
      else {
        this.st_Ros_Mot_DX_Fail = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Mot_SX_Fail')) {
        this.st_Ros_Mot_SX_Fail = initObj.st_Ros_Mot_SX_Fail
      }
      else {
        this.st_Ros_Mot_SX_Fail = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Recharge_Found')) {
        this.st_Ros_Recharge_Found = initObj.st_Ros_Recharge_Found
      }
      else {
        this.st_Ros_Recharge_Found = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Recharge_On')) {
        this.st_Ros_Recharge_On = initObj.st_Ros_Recharge_On
      }
      else {
        this.st_Ros_Recharge_On = false;
      }
      if (initObj.hasOwnProperty('st_Ros_Recharge_Ok')) {
        this.st_Ros_Recharge_Ok = initObj.st_Ros_Recharge_Ok
      }
      else {
        this.st_Ros_Recharge_Ok = false;
      }
      if (initObj.hasOwnProperty('st_Ros_BatteryFail')) {
        this.st_Ros_BatteryFail = initObj.st_Ros_BatteryFail
      }
      else {
        this.st_Ros_BatteryFail = false;
      }
      if (initObj.hasOwnProperty('NofBitStatusRos')) {
        this.NofBitStatusRos = initObj.NofBitStatusRos
      }
      else {
        this.NofBitStatusRos = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BitStatusRos
    // Serialize message field [st_Ros_BumpFront]
    bufferOffset = _serializer.bool(obj.st_Ros_BumpFront, buffer, bufferOffset);
    // Serialize message field [st_Ros_BumpRear]
    bufferOffset = _serializer.bool(obj.st_Ros_BumpRear, buffer, bufferOffset);
    // Serialize message field [st_Ros_FallFront]
    bufferOffset = _serializer.bool(obj.st_Ros_FallFront, buffer, bufferOffset);
    // Serialize message field [st_Ros_FallRear]
    bufferOffset = _serializer.bool(obj.st_Ros_FallRear, buffer, bufferOffset);
    // Serialize message field [st_Ros_Emergenza]
    bufferOffset = _serializer.bool(obj.st_Ros_Emergenza, buffer, bufferOffset);
    // Serialize message field [st_Ros_ErrInt1]
    bufferOffset = _serializer.bool(obj.st_Ros_ErrInt1, buffer, bufferOffset);
    // Serialize message field [st_Ros_ErrInt2]
    bufferOffset = _serializer.bool(obj.st_Ros_ErrInt2, buffer, bufferOffset);
    // Serialize message field [st_Ros_Mot_DX_Fail]
    bufferOffset = _serializer.bool(obj.st_Ros_Mot_DX_Fail, buffer, bufferOffset);
    // Serialize message field [st_Ros_Mot_SX_Fail]
    bufferOffset = _serializer.bool(obj.st_Ros_Mot_SX_Fail, buffer, bufferOffset);
    // Serialize message field [st_Ros_Recharge_Found]
    bufferOffset = _serializer.bool(obj.st_Ros_Recharge_Found, buffer, bufferOffset);
    // Serialize message field [st_Ros_Recharge_On]
    bufferOffset = _serializer.bool(obj.st_Ros_Recharge_On, buffer, bufferOffset);
    // Serialize message field [st_Ros_Recharge_Ok]
    bufferOffset = _serializer.bool(obj.st_Ros_Recharge_Ok, buffer, bufferOffset);
    // Serialize message field [st_Ros_BatteryFail]
    bufferOffset = _serializer.bool(obj.st_Ros_BatteryFail, buffer, bufferOffset);
    // Serialize message field [NofBitStatusRos]
    bufferOffset = _serializer.bool(obj.NofBitStatusRos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BitStatusRos
    let len;
    let data = new BitStatusRos(null);
    // Deserialize message field [st_Ros_BumpFront]
    data.st_Ros_BumpFront = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_BumpRear]
    data.st_Ros_BumpRear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_FallFront]
    data.st_Ros_FallFront = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_FallRear]
    data.st_Ros_FallRear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Emergenza]
    data.st_Ros_Emergenza = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_ErrInt1]
    data.st_Ros_ErrInt1 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_ErrInt2]
    data.st_Ros_ErrInt2 = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Mot_DX_Fail]
    data.st_Ros_Mot_DX_Fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Mot_SX_Fail]
    data.st_Ros_Mot_SX_Fail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Recharge_Found]
    data.st_Ros_Recharge_Found = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Recharge_On]
    data.st_Ros_Recharge_On = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_Recharge_Ok]
    data.st_Ros_Recharge_Ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [st_Ros_BatteryFail]
    data.st_Ros_BatteryFail = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [NofBitStatusRos]
    data.NofBitStatusRos = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_driver/BitStatusRos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2253552a57ac1bef3af9f6d07aaff730';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool st_Ros_BumpFront
    bool st_Ros_BumpRear
    bool st_Ros_FallFront
    bool st_Ros_FallRear
    bool st_Ros_Emergenza
    bool st_Ros_ErrInt1
    bool st_Ros_ErrInt2
    bool st_Ros_Mot_DX_Fail
    bool st_Ros_Mot_SX_Fail
    bool st_Ros_Recharge_Found
    bool st_Ros_Recharge_On
    bool st_Ros_Recharge_Ok
    bool st_Ros_BatteryFail
    bool NofBitStatusRos
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BitStatusRos(null);
    if (msg.st_Ros_BumpFront !== undefined) {
      resolved.st_Ros_BumpFront = msg.st_Ros_BumpFront;
    }
    else {
      resolved.st_Ros_BumpFront = false
    }

    if (msg.st_Ros_BumpRear !== undefined) {
      resolved.st_Ros_BumpRear = msg.st_Ros_BumpRear;
    }
    else {
      resolved.st_Ros_BumpRear = false
    }

    if (msg.st_Ros_FallFront !== undefined) {
      resolved.st_Ros_FallFront = msg.st_Ros_FallFront;
    }
    else {
      resolved.st_Ros_FallFront = false
    }

    if (msg.st_Ros_FallRear !== undefined) {
      resolved.st_Ros_FallRear = msg.st_Ros_FallRear;
    }
    else {
      resolved.st_Ros_FallRear = false
    }

    if (msg.st_Ros_Emergenza !== undefined) {
      resolved.st_Ros_Emergenza = msg.st_Ros_Emergenza;
    }
    else {
      resolved.st_Ros_Emergenza = false
    }

    if (msg.st_Ros_ErrInt1 !== undefined) {
      resolved.st_Ros_ErrInt1 = msg.st_Ros_ErrInt1;
    }
    else {
      resolved.st_Ros_ErrInt1 = false
    }

    if (msg.st_Ros_ErrInt2 !== undefined) {
      resolved.st_Ros_ErrInt2 = msg.st_Ros_ErrInt2;
    }
    else {
      resolved.st_Ros_ErrInt2 = false
    }

    if (msg.st_Ros_Mot_DX_Fail !== undefined) {
      resolved.st_Ros_Mot_DX_Fail = msg.st_Ros_Mot_DX_Fail;
    }
    else {
      resolved.st_Ros_Mot_DX_Fail = false
    }

    if (msg.st_Ros_Mot_SX_Fail !== undefined) {
      resolved.st_Ros_Mot_SX_Fail = msg.st_Ros_Mot_SX_Fail;
    }
    else {
      resolved.st_Ros_Mot_SX_Fail = false
    }

    if (msg.st_Ros_Recharge_Found !== undefined) {
      resolved.st_Ros_Recharge_Found = msg.st_Ros_Recharge_Found;
    }
    else {
      resolved.st_Ros_Recharge_Found = false
    }

    if (msg.st_Ros_Recharge_On !== undefined) {
      resolved.st_Ros_Recharge_On = msg.st_Ros_Recharge_On;
    }
    else {
      resolved.st_Ros_Recharge_On = false
    }

    if (msg.st_Ros_Recharge_Ok !== undefined) {
      resolved.st_Ros_Recharge_Ok = msg.st_Ros_Recharge_Ok;
    }
    else {
      resolved.st_Ros_Recharge_Ok = false
    }

    if (msg.st_Ros_BatteryFail !== undefined) {
      resolved.st_Ros_BatteryFail = msg.st_Ros_BatteryFail;
    }
    else {
      resolved.st_Ros_BatteryFail = false
    }

    if (msg.NofBitStatusRos !== undefined) {
      resolved.NofBitStatusRos = msg.NofBitStatusRos;
    }
    else {
      resolved.NofBitStatusRos = false
    }

    return resolved;
    }
};

module.exports = BitStatusRos;
