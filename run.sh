#!/bin/bash
cd /home/ec2-user/springboot-hello
docker-compose build --no-cache
docker-compose up -d