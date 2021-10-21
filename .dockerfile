
# minimal base image
FROM openjdk:8-jdk-alpine AS builder

# create a new folder
WORKDIR /out

# copy all .java extesion files to current working dir
COPY *.java .

RUN  javac Hello.java

# now we just the runtime env
FROM openjdk:8-jre-alpine

# copy from prev image to current image folder
COPY --from=builder  /out/*.class .

CMD ["java","Hello"]


