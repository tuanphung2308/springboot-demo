#!/bin/bash
cd /home/ec2-user/
echo "Files in user directory"
pwd; ls -l
echo "--------------------------------------------------"
cd /home/ec2-user/springboot-hello
# List all file first
echo "Files in source directory"
pwd; ls -l
echo "--------------------------------------------------"
docker-compose build --no-cache
docker-compose up -d