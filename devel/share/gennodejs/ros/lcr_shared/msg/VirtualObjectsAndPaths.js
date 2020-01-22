// Auto-generated. Do not edit!

// (in-package lcr_shared.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VirtualObjectsAndPaths {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.version = null;
      this.virtualObjects_Id = null;
      this.virtualObjects_Name = null;
      this.virtualObjects_ObjectType = null;
      this.virtualObjects_PositionX = null;
      this.virtualObjects_PositionY = null;
      this.virtualObjects_Rotation = null;
      this.virtualObjects_ShapeType = null;
      this.paths_Id = null;
      this.paths_CurvePointX = null;
      this.paths_CurvePointY = null;
      this.paths_Direction = null;
      this.paths_EndPoint = null;
      this.paths_Name = null;
      this.paths_PathType = null;
      this.paths_StartPoint = null;
    }
    else {
      if (initObj.hasOwnProperty('version')) {
        this.version = initObj.version
      }
      else {
        this.version = 0;
      }
      if (initObj.hasOwnProperty('virtualObjects_Id')) {
        this.virtualObjects_Id = initObj.virtualObjects_Id
      }
      else {
        this.virtualObjects_Id = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_Name')) {
        this.virtualObjects_Name = initObj.virtualObjects_Name
      }
      else {
        this.virtualObjects_Name = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_ObjectType')) {
        this.virtualObjects_ObjectType = initObj.virtualObjects_ObjectType
      }
      else {
        this.virtualObjects_ObjectType = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_PositionX')) {
        this.virtualObjects_PositionX = initObj.virtualObjects_PositionX
      }
      else {
        this.virtualObjects_PositionX = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_PositionY')) {
        this.virtualObjects_PositionY = initObj.virtualObjects_PositionY
      }
      else {
        this.virtualObjects_PositionY = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_Rotation')) {
        this.virtualObjects_Rotation = initObj.virtualObjects_Rotation
      }
      else {
        this.virtualObjects_Rotation = [];
      }
      if (initObj.hasOwnProperty('virtualObjects_ShapeType')) {
        this.virtualObjects_ShapeType = initObj.virtualObjects_ShapeType
      }
      else {
        this.virtualObjects_ShapeType = [];
      }
      if (initObj.hasOwnProperty('paths_Id')) {
        this.paths_Id = initObj.paths_Id
      }
      else {
        this.paths_Id = [];
      }
      if (initObj.hasOwnProperty('paths_CurvePointX')) {
        this.paths_CurvePointX = initObj.paths_CurvePointX
      }
      else {
        this.paths_CurvePointX = [];
      }
      if (initObj.hasOwnProperty('paths_CurvePointY')) {
        this.paths_CurvePointY = initObj.paths_CurvePointY
      }
      else {
        this.paths_CurvePointY = [];
      }
      if (initObj.hasOwnProperty('paths_Direction')) {
        this.paths_Direction = initObj.paths_Direction
      }
      else {
        this.paths_Direction = [];
      }
      if (initObj.hasOwnProperty('paths_EndPoint')) {
        this.paths_EndPoint = initObj.paths_EndPoint
      }
      else {
        this.paths_EndPoint = [];
      }
      if (initObj.hasOwnProperty('paths_Name')) {
        this.paths_Name = initObj.paths_Name
      }
      else {
        this.paths_Name = [];
      }
      if (initObj.hasOwnProperty('paths_PathType')) {
        this.paths_PathType = initObj.paths_PathType
      }
      else {
        this.paths_PathType = [];
      }
      if (initObj.hasOwnProperty('paths_StartPoint')) {
        this.paths_StartPoint = initObj.paths_StartPoint
      }
      else {
        this.paths_StartPoint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VirtualObjectsAndPaths
    // Serialize message field [version]
    bufferOffset = _serializer.int32(obj.version, buffer, bufferOffset);
    // Serialize message field [virtualObjects_Id]
    bufferOffset = _arraySerializer.int32(obj.virtualObjects_Id, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_Name]
    bufferOffset = _arraySerializer.string(obj.virtualObjects_Name, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_ObjectType]
    bufferOffset = _arraySerializer.int8(obj.virtualObjects_ObjectType, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_PositionX]
    bufferOffset = _arraySerializer.int32(obj.virtualObjects_PositionX, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_PositionY]
    bufferOffset = _arraySerializer.int32(obj.virtualObjects_PositionY, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_Rotation]
    bufferOffset = _arraySerializer.float64(obj.virtualObjects_Rotation, buffer, bufferOffset, null);
    // Serialize message field [virtualObjects_ShapeType]
    bufferOffset = _arraySerializer.int8(obj.virtualObjects_ShapeType, buffer, bufferOffset, null);
    // Serialize message field [paths_Id]
    bufferOffset = _arraySerializer.int32(obj.paths_Id, buffer, bufferOffset, null);
    // Serialize message field [paths_CurvePointX]
    bufferOffset = _arraySerializer.int32(obj.paths_CurvePointX, buffer, bufferOffset, null);
    // Serialize message field [paths_CurvePointY]
    bufferOffset = _arraySerializer.int32(obj.paths_CurvePointY, buffer, bufferOffset, null);
    // Serialize message field [paths_Direction]
    bufferOffset = _arraySerializer.int32(obj.paths_Direction, buffer, bufferOffset, null);
    // Serialize message field [paths_EndPoint]
    bufferOffset = _arraySerializer.int32(obj.paths_EndPoint, buffer, bufferOffset, null);
    // Serialize message field [paths_Name]
    bufferOffset = _arraySerializer.string(obj.paths_Name, buffer, bufferOffset, null);
    // Serialize message field [paths_PathType]
    bufferOffset = _arraySerializer.int8(obj.paths_PathType, buffer, bufferOffset, null);
    // Serialize message field [paths_StartPoint]
    bufferOffset = _arraySerializer.int32(obj.paths_StartPoint, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VirtualObjectsAndPaths
    let len;
    let data = new VirtualObjectsAndPaths(null);
    // Deserialize message field [version]
    data.version = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [virtualObjects_Id]
    data.virtualObjects_Id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_Name]
    data.virtualObjects_Name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_ObjectType]
    data.virtualObjects_ObjectType = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_PositionX]
    data.virtualObjects_PositionX = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_PositionY]
    data.virtualObjects_PositionY = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_Rotation]
    data.virtualObjects_Rotation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [virtualObjects_ShapeType]
    data.virtualObjects_ShapeType = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [paths_Id]
    data.paths_Id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [paths_CurvePointX]
    data.paths_CurvePointX = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [paths_CurvePointY]
    data.paths_CurvePointY = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [paths_Direction]
    data.paths_Direction = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [paths_EndPoint]
    data.paths_EndPoint = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [paths_Name]
    data.paths_Name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [paths_PathType]
    data.paths_PathType = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [paths_StartPoint]
    data.paths_StartPoint = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.virtualObjects_Id.length;
    object.virtualObjects_Name.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.virtualObjects_ObjectType.length;
    length += 4 * object.virtualObjects_PositionX.length;
    length += 4 * object.virtualObjects_PositionY.length;
    length += 8 * object.virtualObjects_Rotation.length;
    length += object.virtualObjects_ShapeType.length;
    length += 4 * object.paths_Id.length;
    length += 4 * object.paths_CurvePointX.length;
    length += 4 * object.paths_CurvePointY.length;
    length += 4 * object.paths_Direction.length;
    length += 4 * object.paths_EndPoint.length;
    object.paths_Name.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.paths_PathType.length;
    length += 4 * object.paths_StartPoint.length;
    return length + 64;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lcr_shared/VirtualObjectsAndPaths';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '20a0913958c29e6abb9bdb538fd57fdd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 version
    
    int8 OBJECTTYPE_TAG = -3
    int8 OBJECTTYPE_RECHARGE_WAYPOINT = -2
    int8 OBJECTTYPE_NONE = -1
    int8 OBJECTTYPE_OBSTACLE = 0
    int8 OBJECTTYPE_CHARGEPOINT = 1
    int8 OBJECTTYPE_CHECKPOINT = 2
    int8 OBJECTTYPE_SPEED_LIMIT_ZONE = 3
    int8 OBJECTTYPE_NO_DISTANCE_ZONE = 4
    
    int8 SHAPETYPE_NONE = -1
    int8 SHAPETYPE_LINE = 0
    int8 SHAPETYPE_RECTANGLE = 1
    int8 SHAPETYPE_CIRCLE = 2
    int8 SHAPETYPE_POLYGON = 3
    
    int32[] virtualObjects_Id
    string[] virtualObjects_Name
    int8[] virtualObjects_ObjectType
    int32[] virtualObjects_PositionX
    int32[] virtualObjects_PositionY
    float64[] virtualObjects_Rotation
    int8[] virtualObjects_ShapeType
    
    int8 PATHTYPE_LINEPATH = 0
    int8 PATHTYPE_CURVEPATH = 1
    
    int8 PATHDIRECTION_TWO_WAY = 0
    int8 PATHDIRECTION_FROM_A_TO_B = 1
    int8 PATHDIRECTION_FROM_B_TO_A = 2
    int8 PATHDIRECTION_ALTERNATING_ONE_WAY = 3
    
    int32[] paths_Id
    int32[] paths_CurvePointX
    int32[] paths_CurvePointY
    int32[] paths_Direction
    int32[] paths_EndPoint
    string[] paths_Name
    int8[] paths_PathType
    int32[] paths_StartPoint
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VirtualObjectsAndPaths(null);
    if (msg.version !== undefined) {
      resolved.version = msg.version;
    }
    else {
      resolved.version = 0
    }

    if (msg.virtualObjects_Id !== undefined) {
      resolved.virtualObjects_Id = msg.virtualObjects_Id;
    }
    else {
      resolved.virtualObjects_Id = []
    }

    if (msg.virtualObjects_Name !== undefined) {
      resolved.virtualObjects_Name = msg.virtualObjects_Name;
    }
    else {
      resolved.virtualObjects_Name = []
    }

    if (msg.virtualObjects_ObjectType !== undefined) {
      resolved.virtualObjects_ObjectType = msg.virtualObjects_ObjectType;
    }
    else {
      resolved.virtualObjects_ObjectType = []
    }

    if (msg.virtualObjects_PositionX !== undefined) {
      resolved.virtualObjects_PositionX = msg.virtualObjects_PositionX;
    }
    else {
      resolved.virtualObjects_PositionX = []
    }

    if (msg.virtualObjects_PositionY !== undefined) {
      resolved.virtualObjects_PositionY = msg.virtualObjects_PositionY;
    }
    else {
      resolved.virtualObjects_PositionY = []
    }

    if (msg.virtualObjects_Rotation !== undefined) {
      resolved.virtualObjects_Rotation = msg.virtualObjects_Rotation;
    }
    else {
      resolved.virtualObjects_Rotation = []
    }

    if (msg.virtualObjects_ShapeType !== undefined) {
      resolved.virtualObjects_ShapeType = msg.virtualObjects_ShapeType;
    }
    else {
      resolved.virtualObjects_ShapeType = []
    }

    if (msg.paths_Id !== undefined) {
      resolved.paths_Id = msg.paths_Id;
    }
    else {
      resolved.paths_Id = []
    }

    if (msg.paths_CurvePointX !== undefined) {
      resolved.paths_CurvePointX = msg.paths_CurvePointX;
    }
    else {
      resolved.paths_CurvePointX = []
    }

    if (msg.paths_CurvePointY !== undefined) {
      resolved.paths_CurvePointY = msg.paths_CurvePointY;
    }
    else {
      resolved.paths_CurvePointY = []
    }

    if (msg.paths_Direction !== undefined) {
      resolved.paths_Direction = msg.paths_Direction;
    }
    else {
      resolved.paths_Direction = []
    }

    if (msg.paths_EndPoint !== undefined) {
      resolved.paths_EndPoint = msg.paths_EndPoint;
    }
    else {
      resolved.paths_EndPoint = []
    }

    if (msg.paths_Name !== undefined) {
      resolved.paths_Name = msg.paths_Name;
    }
    else {
      resolved.paths_Name = []
    }

    if (msg.paths_PathType !== undefined) {
      resolved.paths_PathType = msg.paths_PathType;
    }
    else {
      resolved.paths_PathType = []
    }

    if (msg.paths_StartPoint !== undefined) {
      resolved.paths_StartPoint = msg.paths_StartPoint;
    }
    else {
      resolved.paths_StartPoint = []
    }

    return resolved;
    }
};

// Constants for message
VirtualObjectsAndPaths.Constants = {
  OBJECTTYPE_TAG: -3,
  OBJECTTYPE_RECHARGE_WAYPOINT: -2,
  OBJECTTYPE_NONE: -1,
  OBJECTTYPE_OBSTACLE: 0,
  OBJECTTYPE_CHARGEPOINT: 1,
  OBJECTTYPE_CHECKPOINT: 2,
  OBJECTTYPE_SPEED_LIMIT_ZONE: 3,
  OBJECTTYPE_NO_DISTANCE_ZONE: 4,
  SHAPETYPE_NONE: -1,
  SHAPETYPE_LINE: 0,
  SHAPETYPE_RECTANGLE: 1,
  SHAPETYPE_CIRCLE: 2,
  SHAPETYPE_POLYGON: 3,
  PATHTYPE_LINEPATH: 0,
  PATHTYPE_CURVEPATH: 1,
  PATHDIRECTION_TWO_WAY: 0,
  PATHDIRECTION_FROM_A_TO_B: 1,
  PATHDIRECTION_FROM_B_TO_A: 2,
  PATHDIRECTION_ALTERNATING_ONE_WAY: 3,
}

module.exports = VirtualObjectsAndPaths;
