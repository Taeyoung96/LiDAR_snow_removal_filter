#!/bin/bash
 
set -e

# Ros build
source "/opt/ros/melodic/setup.bash"


echo "==============Snow removal filter Docker Env Ready================"

cd /root/catkin_ws

exec "$@"
