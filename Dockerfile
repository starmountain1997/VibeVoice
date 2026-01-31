FROM vllm/vllm-openai:latest

# 设置环境变量避免交互式安装
ENV DEBIAN_FRONTEND=noninteractive

# 更换 apt 清华源
RUN sed -i 's|http://archive.ubuntu.com|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list && \
    sed -i 's|http://security.ubuntu.com|https://mirrors.tuna.tsinghua.edu.cn|g' /etc/apt/sources.list && \
    apt-get update

# 更换 pip 清华源
RUN pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# 安装额外的 Python 依赖（如果需要）
# RUN pip install -r requirements.txt
