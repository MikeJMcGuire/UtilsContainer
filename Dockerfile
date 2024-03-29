FROM ubuntu:latest

RUN \
  sed -i 's/archive.ubuntu.com\/ubuntu/mirror.internode.on.net\/pub\/ubuntu\/ubuntu/g' /etc/apt/sources.list && \
  sed -i 's/security.ubuntu.com\/ubuntu/mirror.internode.on.net\/pub\/ubuntu\/ubuntu/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y net-tools dnsutils iputils-ping telnet && \
  apt-get install -y curl git unzip vim wget nmap && \
  rm -rf /var/lib/apt/lists/*

ENV HOME /root

WORKDIR /root

CMD tail -f /dev/null
