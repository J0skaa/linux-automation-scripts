FROM ubuntu:22.04

LABEL maintainer="szeplaki.jozsef97@gmail.com"

RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    grep \
    util-linux \
    && apt-get clean

WORKDIR /app

COPY scripts/ ./scripts

RUN chmod +x ./scripts/*.sh

CMD ["bash"]
