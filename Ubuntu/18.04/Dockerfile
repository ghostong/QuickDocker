FROM ubuntu:18.04
ADD sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y -q zip tzdata curl && ln -fs /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && apt-get clean