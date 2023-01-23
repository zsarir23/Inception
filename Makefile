all:
	docker-compose -f ./srcs/docker-compose.yml up --build

clean:
	docker-compose -f ./srcs/docker-compose.yml  down --rmi all -v
re : clean all