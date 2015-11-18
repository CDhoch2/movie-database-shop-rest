#!/usr/bin/env bash

# DockerHub Login
/home/ec2-user/docker-latest login -e ${dockerhub_mail} -u ${dockerhub_user} -p ${dockerhub_pwd}

#Tag images
/home/ec2-user/docker-latest tag -f cdzwei/mvdb_shop cdzwei/mvdb_shop:$(git log | head -1 | sed s/'commit '//)

# Push to DockerHub
/home/ec2-user/docker-latest push docker.io/cdzwei/mvdb_shop 
