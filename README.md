# cuda-jupyterlab

**Build & Run custom cuda+jupyterlab docker image**

Making ML Dev. Environment Build Easier

You only need to install Tensorflow or Pytorch inside the container

- Dockerfile : install jupyter lab and packcages on target cuda image
- run.bash : jupyter lab execution script
- requirement.txt : pip install packages on build

- build.sh : build image with Dockerfile
example) ./build.sh 10.1 cudnn8 runtime

- start.sh : Run jupyter lab on localhost port 8888 default
example) ./start.sh 10.0 devel ubuntu18.04


