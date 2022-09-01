FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nano

RUN useradd -ms /bin/bash john
RUN chmod 777 /etc/passwd
RUN chmod 777 /etc/shadow

USER john

WORKDIR /home/john

ENTRYPOINT ["bash"]