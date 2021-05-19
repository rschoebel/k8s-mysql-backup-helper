FROM bitnami/mariadb:latest
MAINTAINER r.schoebel@schoebel.tech
USER root
RUN apt update && apt install openssh-server -y
RUN useradd -ms /bin/bash -u 1001 mysql
USER 1001
ENTRYPOINT ["/scripts/entrypoint.sh"]
