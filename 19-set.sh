#!/bin/bash

set -e

trap 'echo "Error in $LINENo and command is $BASH_COMMAND"' ERR

echo "Hello World"
echo "Before error"
fkdsjfksajf #error line create to catch the error message
echo "After error"

