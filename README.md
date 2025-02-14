# Farmsmart Docker images
These Docker images are used by CircleCI for building Farmsmart deployment artifacts. 

For every release of this repo, the docker images are built in Circle CI (https://circleci.com/gh/farmsmart) and uploaded to Docker Hub: https://hub.docker.com/search?q=farmsmart&type=image.

### Building images and testing
It is recommended to run these commands in a Linux machine

1. Go into each folder and update the Dockerfile
2. Build the image locally
Example for gcp-firebase image
```
docker build -t farmsmart/gcp-firebase .
```
3. Test the image by using simple run commands
```
docker run --rm -it farmsmart/gcp-firebase python -v
```
