#!/bin/bash

set -ex

if [ "$(uname)" == "Darwin" ]; then
    /Applications/Unity/Unity.app/Contents/MacOS/Unity -logfile -quit -batchmode \
        -username $unity_email -password $unity_password -serial $unity_serial
else
    xvfb-run /opt/Unity/Editor/Unity -logfile -quit -batchmode -nographics -force-opengl \
        -username $unity_email -password $unity_password -serial $unity_serial
fi