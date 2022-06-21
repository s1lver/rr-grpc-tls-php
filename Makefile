build-client:
	COMPOSE_FILE=client/docker-compose.yml docker-compose up -d --build

build-server:
	COMPOSE_FILE=server/docker-compose.yml docker-compose up -d --build