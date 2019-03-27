FROM centos:6.10

MAINTAINER Leo <leo@beehivesystems.io>

RUN yum install epel-release -y && yum install salt-minion -y

COPY setup.sh /tmp/setup.sh

ENTRYPOINT ["sh","/tmp/setup.sh"]
