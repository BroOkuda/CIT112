FROM ubuntu

RUN apt update && apt install sudo -y
RUN useradd -ms /bin/bash user1
RUN echo "user1:Ubuntu" | chpasswd
RUN usermod -aG sudo user1
USER user1
WORKDIR /home/user1
RUN mkdir CIT112
