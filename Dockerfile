FROM ubuntu:16.04
RUN apt-get update &&\
apt-get -y install software-properties-common &&\
add-apt-repository -y ppa:securityonion/stable &&\
apt-get update &&\
apt-get -y install securityonion-all syslog-ng-core &&\
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
