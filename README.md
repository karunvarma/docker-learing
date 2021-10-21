# docker-learing

check docker installation:

docker run hello-world

the above command downloads the image from the registry(docker hub), 
create a container and run hello-world container.


docker run --help


## To list all the running containers
docker ps -all 

## only show the container id
docker ps -q 

## kill the container
docker stop cotainer_id

## meta data about the container
docker inspect container_id

## remove the container
docker rm container_id

## delete all stopped container
docker container prune -f

Docker is a tool that allows you to get the equivalent of a disposable, single-time use computer

What is a server container ?
its is a long lived.
listen for the incoming n/w connections.

ex: docker run alphine ping www.docker.com

by running the above command we cannot get the control back, we need to detach it by using -d flag.

docker run -d alphine ping www.docker.com 


## listening for the network connections:
docker run -p host_port:dockercontainer_port


tunnel incomming connection -> 8080 to 80
ex: docker run -p -d 8080:80 nginx

## Using Volumes:
how to persist the date on the local machine

docker run -v /your/dir:/var/lib/mysql -d mysql:5.7
It will ensure that any data written to the /var/lib/mysql directory inside the container is actually written to the /your/dir directory on the host system. This ensures that the data is not lost when the container is restarted.
