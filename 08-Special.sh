#!/bin/bash

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "All variables passed to the script: $0"
echo "All variables passed to the script: $PWD"
echo "All variables passed to the script: $USER"
echo "All variables passed to the script: $HOME"
echo "All variables passed to the script: $$"

sleep 50 &

echo "PID of the last command in background is: $!"