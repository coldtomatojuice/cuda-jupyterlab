#!/bin/bash

if [ $# -lt 2 ]
  then
    echo "run script with at least 2 arguments"
    echo "ex) ./start.sh 11.2.1 cudnn8 runtime ubuntu20.04"
    echo "version number(11.2.1) & type(runtime) is required"
    exit 1
fi

tag=$1
for ((i = 2; i <= $#; i++ )); do
        tag=$tag"-"${!i}
done

sed -i "s/nvidia\/cuda:.*/nvidia\/cuda:$tag/g" Dockerfile

docker build -t wallkim/cuda-jupyterlab:$tag .
