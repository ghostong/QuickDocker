FROM registry.cn-hangzhou.aliyuncs.com/litosrc/lnp:7.4
EXPOSE 80
WORKDIR /workdir
RUN apt-get install git -y && git clone https://github.com/garveen/imagist
ADD ./default /etc/nginx/sites-available/default
CMD ["nginx", "-g", "daemon off;"]