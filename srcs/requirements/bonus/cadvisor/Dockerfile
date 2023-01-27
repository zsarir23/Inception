FROM debian:buster

RUN	apt-get update && apt-get install wget -y 
RUN wget https://github.com/google/cadvisor/releases/download/v0.36.0/cadvisor
RUN chmod +x cadvisor

ENTRYPOINT ./cadvisor -logtostderr --port=2000