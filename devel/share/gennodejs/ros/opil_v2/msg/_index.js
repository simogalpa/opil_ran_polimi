
"use strict";

let ErrorAGV = require('./ErrorAGV.js');
let ActionAssignment = require('./ActionAssignment.js');
let Id = require('./Id.js');
let AssignmentId = require('./AssignmentId.js');
let Sequence = require('./Sequence.js');
let RobotDescriptionAGV = require('./RobotDescriptionAGV.js');
let MotionAssignment = require('./MotionAssignment.js');
let RANState = require('./RANState.js');
let ActionDefinition = require('./ActionDefinition.js');
let Emergency = require('./Emergency.js');
let Tuple = require('./Tuple.js');
let RobotAction = require('./RobotAction.js');
let Motion = require('./Motion.js');
let ErrorRAN = require('./ErrorRAN.js');
let RobotDescription = require('./RobotDescription.js');
let AssignmentStatus = require('./AssignmentStatus.js');
let CancelTask = require('./CancelTask.js');
let RobotState = require('./RobotState.js');

module.exports = {
  ErrorAGV: ErrorAGV,
  ActionAssignment: ActionAssignment,
  Id: Id,
  AssignmentId: AssignmentId,
  Sequence: Sequence,
  RobotDescriptionAGV: RobotDescriptionAGV,
  MotionAssignment: MotionAssignment,
  RANState: RANState,
  ActionDefinition: ActionDefinition,
  Emergency: Emergency,
  Tuple: Tuple,
  RobotAction: RobotAction,
  Motion: Motion,
  ErrorRAN: ErrorRAN,
  RobotDescription: RobotDescription,
  AssignmentStatus: AssignmentStatus,
  CancelTask: CancelTask,
  RobotState: RobotState,
};
