FROM debian:buster

RUN apt update && apt install nginx -y

# WORKDIR /var/www/html/

COPY ./index.html /var/www/html/

EXPOSE 80

CMD	["nginx", "-g", "daemon off;"]