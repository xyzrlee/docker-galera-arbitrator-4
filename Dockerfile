#
# Dockerfile for galera arbitrator 4 (garbd)
#

FROM debian:12

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN curl -LsS https://downloads.mariadb.com/MariaDB/mariadb_repo_setup | bash \
      && apt update \
      && apt install -y galera-arbitrator-4 \
      && apt clean \
      && garbd --version

ENTRYPOINT ["/entrypoint.sh"]
