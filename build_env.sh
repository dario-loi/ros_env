#!/bin/bash

echo "installing docker image for ROS development"
echo "ensure to have a proper docker installation"
echo "also ensure to have proper permissions set up"

docker build -t local/ros:latest .

echo "all done! use run_env.sh to start the container"
