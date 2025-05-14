# 使用官方Node.js运行时作为父镜像
FROM node:18

# 设置工作目录为/app
WORKDIR /app

# 将文件复制到容器中的/app
COPY . .

# 安装项目依赖
RUN npm install

# 暴露应用程序运行所需的端口（替换8080为您应用实际监听的端口）
EXPOSE 8080

# 定义环境变量
ENV NODE_ENV=production

# 当容器启动时运行命令
CMD ["node", "app.js"]