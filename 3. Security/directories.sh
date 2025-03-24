#!/bin/bash

# By: John O'Raw
# Date: 24MAR25
# Function: Set up default directories
# Copy this file to /etc/profile.d/
# Script: directories.sh


DIR1="/HPC/$USER"

if [[ ! -e $DIR1 ]]; then
    mkdir $DIR1
    echo "Created $DIR1"
    echo "Use this for all course work"
elif [[ -e $DIR1 ]]; then
    echo "$DIR1 exists"
    echo "Use this for all course work"
elif [[ ! -d $DIR1 ]]; then
    echo "$DIR1 already exists but is not a directory"
fi

DIR1="/Scratch/$USER"

if [[ ! -e $DIR1 ]]; then
    mkdir $DIR1
    echo "Created $DIR1"
    echo "Use this for temporary files"
elif [[ -e $DIR1 ]]; then
    echo "$DIR1 exists"
    echo "Use this for temporary files"
elif [[ ! -d $DIR1 ]]; then
    echo "$DIR1 already exists but is not a directory"
fi
