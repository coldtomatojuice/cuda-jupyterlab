#!/bin/bash

export GRANT_SUDO='yes'
export RESTARTABLE='yes'

jupyter lab \
--LabApp.token='' \
--LabApp.password='' \
--LabApp.allow_origin='*' \
--ip=0.0.0.0 \
--port=8888 \
--notebook-dir=/home/ubuntu \
--allow-root \
--no-browser

