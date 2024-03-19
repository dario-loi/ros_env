#!/bin/bash

echo "starting ros container up, you can later attach to it using VSCode"
echo "your container will run in a /workspace folder, use this command"
echo "for persistent sessions in the future."

mkdir -p ./workspace
docker run -it -v $(pwd)/workspace:/workspace local/ros:latest 

