#!/bin/bash

#if [ $# -lt 2 ]
#  then
#    echo "run script with at least 2 arguments"
#    echo "ex) ./start.sh 11.2.1 cudnn8 runtime ubuntu20.04"
#    echo "version number(11.2.1) & type(runtime) is required"
#    exit 1
#fi

#tag=$1
#for ((i = 2; i <= $#; i++ )); do
#        tag=$tag"-"${!i}
#done

shm_size=32Gi

docker run \
	--rm \
	--gpus all \
	-d \
	-it \
	--shm-size $shm_size \
       	-p 8888:8888 -v /home/wall/Works/python/works:/home/ubuntu/works \
	-e GRANT_SUDO=yes \
	-e JUPYTER_ENABLE_LAB=yes \
	wallkim/cuda-jupyterlab:10.0-devel-ubuntu18.04
