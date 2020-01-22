define kinect ranger
(
  sensor
  (
    range_max 6.5
    fov 90.0
    samples 640
  )
  # generic model properties
  color "black"
  size [ 0.06 0.15 0.03 ]
)

define robot position
(
  origin [ 0.0 0.0 0.0 0.0 ]
  localizaton "odom"
  odom_error [0.03 0.03 0.01 0.01 0.02 0.02] 
  size [ 0.60 0.40 0.40 ]  
  drive "omni"
    
  kinect(pose [ -0.1 0.0 -0.11 0.0 ])
)
