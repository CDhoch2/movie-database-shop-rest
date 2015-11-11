#!/usr/bin/env bash

cd ../movie-database-shop-rest

# Docker Build Shop Rest
sudo /home/ec2-user/docker-latest build --tag="cdzwei/mvdb_shop" .
