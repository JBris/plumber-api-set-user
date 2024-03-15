#!/usr/bin/env bash

user="$1"
uid="$2"

if ! getent passwd $user > /dev/null 2>&1; then
    groupadd -r --gid=$uid $user 
    useradd -r -g $user --uid=$uid $user 
fi
