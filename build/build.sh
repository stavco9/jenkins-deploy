#!/bin/bash

if [ -z $1 ]
then
	echo "Please provide image to build" 
elif [ ! -d $1 ]
then
	echo "Dockerfile not exist of this image"
else
	docker build -t $1 -f $1/Dockerfile .
	
	if [ $? -ne 0 ]
	then
		echo "Failed to build image. Exit now"
		exit 1
	fi

	docker login -u ${DOCKER_USER} -p ${DOCKER_PASSWORD}
	docker tag  $1 ${DOCKER_USER}/$1:latest
	docker push ${DOCKER_USER}/$1:latest

	if [ $? -ne 0 ]
	then
		echo "Failed to push image to registry"
		exit 1
	fi

	echo "Completed build and push the image successfully !!!!"
fi
