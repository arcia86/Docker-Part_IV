#!/bin/bash
app="webserver.docker"
docker build -t ${app} .
docker run -d -p 56733:80 \
  --name=${app} \
  --net=backend_net \
  -v $PWD:/app ${app}
