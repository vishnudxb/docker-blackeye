FROM kalilinux/kali-rolling:latest

RUN mkdir /src

WORKDIR /src

RUN apt-get update && \
    apt-get install -y git php curl unzip wget && \
    git clone https://github.com/msalerno2001/blackeye.git

WORKDIR /src/blackeye

EXPOSE 80 443

ENTRYPOINT ["tail", "-f", "/dev/null"]
