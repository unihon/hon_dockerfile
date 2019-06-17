FROM node:10-alpine
WORKDIR /root/blog

# modify source and install hexo-cli pack
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
apk add git && \
npm config set registry http://registry.npm.taobao.org && \
npm install -g hexo-cli

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint-hexo.sh
CMD ["docker-entrypoint-hexo.sh"]
