FROM registry.cn-hangzhou.aliyuncs.com/litosrc/ubuntu:20.04
EXPOSE 80
RUN apt-get update && apt-get install php7.4 php7.4-fpm php7.4-dev php7.4-mysql php7.4-XML php7.4-mbstring php7.4-curl php7.4-gd php7.4-zip nginx -yq && apt-get clean
WORKDIR /workdir
ADD docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]