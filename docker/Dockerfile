# Author: TaeYoung Kim
# email: tyoung96@yonsei.ac.kr

FROM ros:melodic

# Install PCL & Eigen & essential libraries
RUN apt-get update && apt-get install -y cmake libatlas-base-dev libeigen3-dev libpcl-dev libgoogle-glog-dev libsuitesparse-dev libglew-dev wget unzip
RUN apt-get install -y ros-melodic-tf ros-melodic-cv-bridge ros-melodic-pcl-conversions ros-melodic-xacro ros-melodic-robot-state-publisher \
    ros-melodic-rviz ros-melodic-image-transport ros-melodic-image-transport-plugins ros-melodic-pcl-ros ros-melodic-eigen-conversions

# Install livox driver
WORKDIR /root/catkin_ws/src
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_init_workspace; cd .. && catkin_make'

# Load ROS environment at each run
COPY ./ros_entrypoint.sh /
RUN chmod 755 /ros_entrypoint.sh
ENTRYPOINT ["/ros_entrypoint.sh"]

CMD ["bash"]