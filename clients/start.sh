#!/bin/bash

nginx -g "daemon off;" & # your first application
P1=$!
consul agent -data-dir=/consul/data -config-file=/consul/config/client.json & # your second application
P2=$!
wait $P1 $P2

