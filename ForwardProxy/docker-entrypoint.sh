#!/bin/bash

SSH=ssh

#ssh -i ~/token.rsa -o StrictHostKeyChecking=no -L 127.0.0.1:5000:127.0.0.1:5000 readonly@192.168.1.100

# ssh 证书保存路径
if [ "$RSA_FILEPATH" ]; then
  RSA_FILEPATH="-i "$RSA_FILEPATH
fi

#代理地址
if [ ! "$PROXY_ADDRESS" ]; then
  PROXY_ADDRESS="127.0.0.1:51234"
fi

#被代理服务器地址
if [ ! "$TARGET_ADDRESS" ]; then
  TARGET_ADDRESS="127.0.0.1:50000"
fi

#SSH登录描述
if [ ! "$LOGIN_DEPICT" ]; then
  LOGIN_DEPICT="readonly@127.0.0.1"
fi

command="${SSH} -N ${RSA_FILEPATH} -o StrictHostKeyChecking=no -o ServerAliveInterval=30 -L ${PROXY_ADDRESS}:${TARGET_ADDRESS} ${LOGIN_DEPICT}"
echo "${command}"
$command