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




