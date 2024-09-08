# 使用Node.js 18作为基础镜像
FROM node:18-alpine

# 设置工作目录
WORKDIR /app
USER root
# 安装Git
RUN apk add --no-cache git

# 拷贝本地代码到容器工作目录
COPY package*.json ./
RUN npm install -g hexo-cli
# 安装依赖
RUN npm install

# 将应用代码复制到容器
COPY . .
CMD["hexo","s"]