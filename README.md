# LiDAR_snow_removal_filter
This repo is a set of nodes for ROS to filter point clouds with the goal of removing snow in Lidar data.

## Results  
- Before LiDAR snow filter


https://github.com/Taeyoung96/LiDAR_snow_removal_filter/assets/41863759/2aded1f9-7962-42e0-9de7-9c8980387a46



- After LiDAR snow filter



https://github.com/Taeyoung96/LiDAR_snow_removal_filter/assets/41863759/2b024b34-7adb-485c-b6ee-3147818ff5eb

## How to start

### Requirements 
- [Docker](https://www.docker.com/)  
- [NVIDIA docker](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html)

```
git clone https://github.com/Taeyoung96/LiDAR_snow_removal_filter.git
```

### Make a docker image (For the docker user) 
```
cd docker
```
```
docker build -t lidar_snow_filter:latest .
```

### Make a docker container  

When you create a docker container, you need several options to use the GUI and share folders.

First, you should enter the command below in the local terminal to enable docker to communicate with Xserver on the host.

```
xhost +local:docker
```

After that, make your own container with the command below.  

```
sudo chmod -R 777 container_run.sh
```
```
./container_run.sh <container_name> <image_name:tag>
```

:warning: **You should change {container_name}, {docker image} to suit your environment.**  

For example,  
```
 ./container_run.sh lidar_snow_filter_container lidar_snow_filter:latest
```

If you have successfully created the docker container, the terminal output will be similar to the below.  

**output** :  

```
==============Snow removal filter Docker Env Ready================
root@taeyoung-cilab:~/ros2_ws#
```

## Original Readme

Please view the results videos on my youtube channel: https://www.youtube.com/channel/UC3FoqSLn12-dKOQ1Sn0xbFQ/featured?view_as=subscriber

Please refer to our published paper on this work: https://ieeexplore.ieee.org/abstract/document/8575761

***NOTE***

This package used to rely on my custom fork of pcl which had the filter implementation for PointCloud2 data type. This is now all self-contained in this repo. However, the DROR filter only works with pcl::PointCloud\<pcl::PointXYZI\> data type. The ROS node converts the scans to this format before filtering then converts back to ROS msg.

**DATASETS**

A lot of people have asked about getting access to the datasets used for this work, please see: http://cadcd.uwaterloo.ca/
