FROM ubuntu:20.04

RUN apt-get update && apt-get install stress-ng -y && apt-get clean autoclean

COPY stress.sh /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/stress.sh"]


