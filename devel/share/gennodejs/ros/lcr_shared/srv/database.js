// Auto-generated. Do not edit!

// (in-package lcr_shared.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let VirtualObjectsAndPaths = require('../msg/VirtualObjectsAndPaths.js');

//-----------------------------------------------------------

class databaseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type databaseRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type databaseRequest
    let len;
    let data = new databaseRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lcr_shared/databaseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new databaseRequest(null);
    return resolved;
    }
};

class databaseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.db = null;
    }
    else {
      if (initObj.hasOwnProperty('db')) {
        this.db = initObj.db
      }
      else {
        this.db = new VirtualObjectsAndPaths();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type databaseResponse
    // Serialize message field [db]
    bufferOffset = VirtualObjectsAndPaths.serialize(obj.db, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type databaseResponse
    let len;
    let data = new databaseResponse(null);
    // Deserialize message field [db]
    data.db = VirtualObjectsAndPaths.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += VirtualObjectsAndPaths.getMessageSize(object.db);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'lcr_shared/databaseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2852c5aabf45e25b23b8821ac51dc772';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    lcr_shared/VirtualObjectsAndPaths db
    
    ================================================================================
    MSG: lcr_shared/VirtualObjectsAndPaths
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
    const resolved = new databaseResponse(null);
    if (msg.db !== undefined) {
      resolved.db = VirtualObjectsAndPaths.Resolve(msg.db)
    }
    else {
      resolved.db = new VirtualObjectsAndPaths()
    }

    return resolved;
    }
};

module.exports = {
  Request: databaseRequest,
  Response: databaseResponse,
  md5sum() { return '2852c5aabf45e25b23b8821ac51dc772'; },
  datatype() { return 'lcr_shared/database'; }
};
