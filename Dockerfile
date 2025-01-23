FROM ubuntu:22.04


RUN apt-get update && apt-get install -y \
    bash \
    coreutils \
    git \
    curl \
    grep \
    util-linux \
    && apt-get clean

WORKDIR /scripts

COPY scripts/ /scripts/

RUN chmod +x /scripts/*.sh

CMD ["bash", "/scripts/run_all_checks.sh"]
