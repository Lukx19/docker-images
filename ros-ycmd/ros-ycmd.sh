#!/bin/sh

ros_latest=$(cat ../ros-devel/ros-latest)

# run ycmd on 49549
docker run -it \
	-p 127.0.0.1:49549:49549 \
	-v /home/$USER/.config/ycmd:/etc/ycmd:ro \
	-v /home/$USER:/home/$USER:ro \
	--name ros-ycmd \
	--rm=true \
	lukx19/ros-devel-ycmd:${1:-$ros_latest}

