FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install vsftpd -y

EXPOSE 20 21 10000-10100

COPY ./ftp_config.sh /tmp/

RUN /bin/bash  /tmp/ftp_config.sh

CMD ["vsftpd"]
