# docker-learing

check docker installation:

docker run hello-world

the above command downloads the image from the registry(docker hub), 
create a container and run hello-world container.


docker run --help


# To list all the running containers
docker ps -all 

# only show the container id
docker ps -q 

# kill the container
docker stop cotainer_id

# meta date about the container
docker inspect container_id

# remove the container
docker rm container_id

# delete all stopped container
docker container prune -f

Docker is a tool that allows you to get the equivalent of a disposable, single-time use computer
