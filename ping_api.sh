#!/usr/bin/env bash

curl -X GET "http://127.0.0.1:9666/?user=$(whoami)&uid=$(id -u)" -H  "accept: */*"