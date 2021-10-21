# Steps to create a docker image
1. create a filename dockerbuild
2. run the build command


## hello world for the creation

FROM debian:8

CMD ["echo ","hello_world"]


## build witout a name
docker build .

## build with name
docker build -t hello .

## list all the local docker images
docker image ls

## to remove image
docker rmi image_id


## build every time we need to upgrade/change the image


## Environment vars in container
env can be provided during the run time by using -e name=value on docker run command
we can also set the default values in the docker file
ENV name=value


Example:

```
compute.js

var radius = process.env.diameter / 2;
var area = Math.pow(radius, 2) * Math.PI;
console.log(
    `Area of a ${radius} cm radius disk:
    ${area} cm²`
);
```


__dockerfile:__
```
from:node:11-alphine
ENV diamter=20
COPY computer.js .
CMD node compute.js

```


create a docker image: 

```
docker build -t jsbuild .

approach - 1: 
docker run --rm jsbuild

approach - 2
docker run --rm -e diamter=40 jsbuild

```



