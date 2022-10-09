# Using gRPC with TLS in Roadrunner

Implementing a simple example of client-server communication using TLS in Docker in PHP

This example is based on https://github.com/spiral/roadrunner-grpc/tree/master/example/echo

## Setup

Build the client part
```bash
make build-client
```

Build the server part
```bash
make build-server
```

## Additional commands

Stop a running container with a server 

```bash
make down-server
```

Stop a running container with a client 
```bash
make down-client
```

Running container with a server
```bash
make start-server
```

Running container with a client
```bash
make start-client
```

## Create certificates

```bash
docker exec -it client-php bash
mkcert --install
mkcert -client localhost 127.0.0.1 ::1 192.168.231.2
mkcert localhost 127.0.0.1 ::1 192.168.231.2
mkcert -CAROOT
cp /root/.local/share/mkcert/rootCA.pem ./rootCA.pem
```

## Test connect

```bash
docker exec -it client-php php ping.php
```
or

```bash
docker exec -it client-php bash
php ping.php
```

Response

> Status code: 0
> 
> Status details:
> 
> 2022-06-21 13:44:39: PONG