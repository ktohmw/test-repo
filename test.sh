#!/bin/bash
set -e

echo "Starting test.sh"

name=$(echo "$1" | awk '{print tolower($0)}')
age=$2

echo "Hello $name. You are $age years old."

export MY_VARIABLE="Hello World!"

echo "Environment variable (MY_VARIABLE): $MY_VARIABLE"

aws_command="aws --version"
echo "AWS CLI version here:"
eval $aws_command