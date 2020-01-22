// Auto-generated. Do not edit!

// (in-package mars_agent_physical_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let mars_common_msgs = _finder('mars_common_msgs');

//-----------------------------------------------------------

class ActualState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_id = null;
      this.MoveBaseSimpleState = null;
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
      if (initObj.hasOwnProperty('MoveBaseSimpleState')) {
        this.MoveBaseSimpleState = initObj.MoveBaseSimpleState
      }
      else {
        this.MoveBaseSimpleState = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActualState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_id]
    bufferOffset = mars_common_msgs.msg.Id.serialize(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [MoveBaseSimpleState]
    bufferOffset = _serializer.uint8(obj.MoveBaseSimpleState, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActualState
    let len;
    let data = new ActualState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_id]
    data.robot_id = mars_common_msgs.msg.Id.deserialize(buffer, bufferOffset);
    // Deserialize message field [MoveBaseSimpleState]
    data.MoveBaseSimpleState = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += mars_common_msgs.msg.Id.getMessageSize(object.robot_id);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mars_agent_physical_robot_msgs/ActualState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '218dfb6147c7753072d56e5c9678828c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message for the Actual State
    std_msgs/Header header
    mars_common_msgs/Id robot_id
    # Definition of all possible States
    uint8 MBS_NO_POSITION = 0
    uint8 MBS_WAITING_FOR_INIT = 1
    uint8 MBS_READY = 2
    uint8 MBS_FIRST_ROTATION = 3
    uint8 MBS_MOVING = 4
    uint8 MBS_SECOND_ROTATION = 5
    uint8 MBS_FINISHED = 6
    uint8 MBS_FETCH_NEXT_INSTRUCTION = 7
    uint8 MBS_EXECUTE_ACTION = 8
    uint8 MBS_OBSTACLE = 9
    uint8 MBS_ERROR = 10
    uint8 MoveBaseSimpleState
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActualState(null);
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

    if (msg.MoveBaseSimpleState !== undefined) {
      resolved.MoveBaseSimpleState = msg.MoveBaseSimpleState;
    }
    else {
      resolved.MoveBaseSimpleState = 0
    }

    return resolved;
    }
};

// Constants for message
ActualState.Constants = {
  MBS_NO_POSITION: 0,
  MBS_WAITING_FOR_INIT: 1,
  MBS_READY: 2,
  MBS_FIRST_ROTATION: 3,
  MBS_MOVING: 4,
  MBS_SECOND_ROTATION: 5,
  MBS_FINISHED: 6,
  MBS_FETCH_NEXT_INSTRUCTION: 7,
  MBS_EXECUTE_ACTION: 8,
  MBS_OBSTACLE: 9,
  MBS_ERROR: 10,
}

module.exports = ActualState;
