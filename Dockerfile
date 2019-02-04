FROM ubuntu:18.04

RUN apt-get update && apt-get install -y curl

ADD entrypoint.sh /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
