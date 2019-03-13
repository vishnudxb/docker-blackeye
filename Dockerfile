FROM kalilinux/kali-linux-docker

MAINTAINER Vishnu Nair <me@vishnudxb.me>

RUN mkdir /src

WORKDIR /src

RUN apt-get update && \
    apt-get install -y git php curl unzip && \
    git clone https://github.com/msalerno2001/blackeye.git

WORKDIR /src/blackeye

COPY blackeye.sh /src/blackeye/

EXPOSE 80

CMD tail -f -n0 /etc/hosts
