FROM registry.cn-hangzhou.aliyuncs.com/litosrc/ubuntu:18.04
EXPOSE 80
RUN apt-get update && apt-get install php7.2 php7.2-fpm php7.2-dev php7.2-mysql php7.2-XML php7.2-mbstring php7.2-curl php7.2-gd php7.2-zip nginx -yq && apt-get clean
WORKDIR /workdir
ADD docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]