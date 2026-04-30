#
# Dockerfile for galera arbitrator 4 (garbd)
#

FROM debian:12

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN apt update && \
    apt install -y galera-arbitrator-4 && \
    apt clean

ENTRYPOINT ["/entrypoint.sh"]