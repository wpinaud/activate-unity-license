#!/bin/bash

mkdir ____tmp

if [ "$(uname)" == "Darwin" ]; then
    /Applications/Unity/Unity.app/Contents/MacOS/Unity -logfile -quit -batchmode \
        -username $unity_email -password $unity_password -serial $unity_serial \
        -projectPath ____tmp
else
    xvfb-run /opt/Unity/Editor/Unity -logfile -quit -batchmode -nographics -force-opengl \
        -username $unity_email -password $unity_password -serial $unity_serial \
        -projectPath ____tmp
fi

rm -rf ____tmp
