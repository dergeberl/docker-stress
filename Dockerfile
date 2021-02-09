FROM ubuntu:20.04

RUN apt-get update && \
      apt-get upgrade -y && \
      apt-get install stress-ng -y && \
      rm -rf /var/lib/apt/lists/* && \
      apt-get clean

COPY stress.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/stress.sh"]


