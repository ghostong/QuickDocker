FROM ubuntu:20.04
ADD sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y -q zip tzdata && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apt-get clean