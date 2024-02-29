#!/bin/bash

# Check if the name argument was provided
if [ -z "$1" ]; then
  echo "Error: no name provided" >&2
  exit 1
fi

# Copy pangolin.yaml to $name.yaml
cp pangolin.yaml $1.yaml

# Replace all occurrences of 'pangolin' in the YAML with $name
sed -i "s/pangolin/$1/g" $1.yaml
