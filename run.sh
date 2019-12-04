#!/bin/bash

docker run --rm \
       --name "realsense-ros-docker" \
       --privileged \
       --net=host \
       --volume="/dev:/dev:rw" \
       -it iory/realsense-ros-docker:kinetic /bin/bash -i -c \
       "roslaunch realsense2_camera rs_rgbd.launch enable_pointcloud:=true align_depth:=false depth_registered_processing:=true align_depth:=true \
       __ns:=hsrb \
       camera:=hand_camera \
       color_width:=1920 color_height:=1080 \
       depth_width:=424 depth_height:=240 \
       color_fps:=6 \
       depth_fps:=6 \
       enable_pointcloud:=false \
       enable_infra1:=false \
       enable_infra2:=false"
