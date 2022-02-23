FROM ubuntu:20.04

RUN apt update && apt install ssh -yq

ADD docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]