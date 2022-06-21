build-client:
	COMPOSE_FILE=client/docker-compose.yml docker-compose up -d --build

build-server:
	COMPOSE_FILE=server/docker-compose.yml docker-compose up -d --build

down-server:
	docker network disconnect server_server-php-network client-php
	COMPOSE_FILE=server/docker-compose.yml docker-compose down

down-client:
	COMPOSE_FILE=client/docker-compose.yml docker-compose down

start-server:
	COMPOSE_FILE=server/docker-compose.yml docker-compose up -d
	docker network connect server_server-php-network client-php

start-client:
	COMPOSE_FILE=client/docker-compose.yml docker-compose up -d