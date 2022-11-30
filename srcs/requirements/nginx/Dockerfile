FROM debian:buster

RUN apt update
RUN apt install nginx -y

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
# CMD tail -f