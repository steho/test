FROM ubuntu:14.04
EBV DEBIAN_FRONTEND noninteractive
RUN apt-get upgate &&
	apt-get install -y curl nmap socat openssh-client openssl iotop &&
	apt-get install -y strace tcpdump lsof inotify-tools sysstat guild-essentials
RUN echo "source /root/bash_extra" >> /root/.bashrc
ADD bash_extra /root/bash_extra
CMD ["/bin/bash"]

