FROM ubuntu:latest
MAINTAINER Kevin Lee <hongyu@rancher.com>

RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
RUN apt update && apt install curl net-tools inetutils-ping dnsutils tcpdump iperf3 htop ethtool iproute2 mtr qperf -y && apt clean && rm -rf /var/lib/apt/lists/*

# Expose the default iperf3 server port
EXPOSE 5201
