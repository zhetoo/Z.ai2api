# 使用官方 Python 运行环境作为父镜像
FROM python:3.12-slim

# 设置工作目录
WORKDIR /app

# 复制所有项目文件到容器里
COPY . /app

# 开放容器的 5000 端口
EXPOSE 5000

# 升级 pip 并安装依赖（假设 requirements.txt 存在）
RUN pip install --upgrade pip \
    && pip install -r requirements.txt

# 容器启动时执行的命令（请根据你的主程序名称修改）
CMD ["python", "app.py"]
