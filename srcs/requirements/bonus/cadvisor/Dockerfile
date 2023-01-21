FROM debian:buster

RUN	apt-get update && apt-get install wget -y \
	&& wget https://github.com/google/cadvisor/releases/download/v0.36.0/cadvisor
RUN chmod +x cadvisor
# CMD tail -f
ENTRYPOINT ./cadvisor -logtostderr --port=2000