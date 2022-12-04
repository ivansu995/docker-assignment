FROM ubuntu:latest
 
RUN mkdir -p /var/run/sshd
 
RUN apt update && \
   apt install nano && \
   apt install -y openjdk-8-jdk && \
   apt install -y openssh-server
 
RUN useradd -rm -d /home/students -s /bin/bash students && \
   echo students:students | chpasswd
 
CMD [ "/usr/sbin/sshd", "-D" ]