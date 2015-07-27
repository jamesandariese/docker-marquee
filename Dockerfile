FROM debian:8

RUN apt-get update && apt-get install -y figlet && rm -rf /var/lib/apt/lists/*

ADD marquee.sh /marquee.sh

ENTRYPOINT ["/marquee.sh"]

