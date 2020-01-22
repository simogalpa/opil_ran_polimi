
"use strict";

let RobotAgentProperties = require('./RobotAgentProperties.js');
let ActionAssignment = require('./ActionAssignment.js');
let Sequence = require('./Sequence.js');
let VehicleType = require('./VehicleType.js');
let Error = require('./Error.js');
let Position = require('./Position.js');
let MotionAssignment = require('./MotionAssignment.js');
let RobotAction = require('./RobotAction.js');
let Motion = require('./Motion.js');
let AssignmentStatus = require('./AssignmentStatus.js');
let CancelTask = require('./CancelTask.js');
let ActualState = require('./ActualState.js');

module.exports = {
  RobotAgentProperties: RobotAgentProperties,
  ActionAssignment: ActionAssignment,
  Sequence: Sequence,
  VehicleType: VehicleType,
  Error: Error,
  Position: Position,
  MotionAssignment: MotionAssignment,
  RobotAction: RobotAction,
  Motion: Motion,
  AssignmentStatus: AssignmentStatus,
  CancelTask: CancelTask,
  ActualState: ActualState,
};
