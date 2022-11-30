FROM debian:buster

RUN sudo apt update
RUN sudo apt install mariadb-server -y
RUN sudo mysql_secure_installation -y

EXPOSE 3306