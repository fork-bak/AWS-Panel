FROM ubuntu:latest

ENV LANG C.UTF-8
WORKDIR /aws

RUN ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y wget unzip

RUN wget https://github.com/Yuzuki999/AWS-Panel/releases/download/v0.3.5_beta2/AWS-Panel-linux-amd64.zip \
    && unzip AWS-Panel-linux-amd64.zip 

CMD ["./AWS-Panel-linux-amd64"]
