#1、基于镜像node版本
FROM node:16.14.0
#2、作者
MAINTAINER Gauss
#3、参数，node的环境为生产环境
ENV NODE_ENV=production
#4、任意ip
ENV HOST 0.0.0.0
#5、容器内创建目录/hello
RUN mkdir -p /nuxt
#6、复制当前的内容到容器内容部目录/hello
COPY . /nuxt
#7、切换工作目录到/hello
WORKDIR /nuxt
#8、暴露端口3000，默认端口
EXPOSE 7071
#9、清除缓存
RUN npm cache clean --force
#10、安装依赖
RUN npm install --no-package-lock --registry=https://registry.npm.taobao.org
#11、构建，生成dist文件
RUN npm run build
#12、start
CMD ["npm","start"]

