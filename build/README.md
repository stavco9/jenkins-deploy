This section builds the Dokcer image by the given image name and pushes it to Docker registry (in Dockerhub)

1) Please set the following environment variables before executing the script:
	1) DOCKER_USER
	2) DOCKER_PASSWORD

2) Please execute the script build.sh with the following argument:
	1) The image name
	Note: The image name must match a directory name in build directory, and inside the directory there must be a Dockerfile
