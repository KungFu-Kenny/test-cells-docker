#!/bin/bash

docker stop cells database
docker rm cells database
docker rmi cells
