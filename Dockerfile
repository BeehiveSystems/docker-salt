FROM centos:6.10

MAINTAINER Leo <leo@beehivesystems.io>

ENV SALT_MASTER=###SET SALT MASTER HERE###

RUN yum install epel-release -y && yum install salt-minion -y

COPY setup.sh /tmp/setup.sh

ENTRYPOINT bash /tmp/setup.sh $SALT_MASTER
