FROM debian:buster

RUN apt update && apt install nginx -y
COPY nginx_config.sh /tmp/

RUN chmod +x /tmp/nginx_config.sh
RUN /bin/bash /tmp/nginx_config.sh

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]