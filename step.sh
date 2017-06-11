#!/bin/bash

mkdir _tmp

if [ "$(uname)" == "Darwin" ]; then
    /Applications/Unity/Unity.app/Contents/MacOS/Unity -logfile -quit -batchmode \
        -username $unity_email -password $unity_password -serial $unity_serial \
        -projectPath $(pwd)/_tmp
else
    xvfb-run /opt/Unity/Editor/Unity -logfile -quit -batchmode -nographics -force-opengl \
        -username $unity_email -password $unity_password -serial $unity_serial \
        -projectPath $(pwd)/_tmp
fi

rm -rf _tmp