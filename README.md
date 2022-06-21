# rr-grpc-tls-php

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