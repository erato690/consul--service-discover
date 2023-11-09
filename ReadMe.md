## Comandos

Iniciar o agent como server esperando 3 servidores:

consul agent -server -bootstrap-expect=3 -node=consul01 -bind=172.23.0.4 -data-dir=/var/lib/consul -config-dir=/etc/consul.d

criando client:
consul agent  -bootstrap-expect=3 -node=consul01 -bind=172.23.0.4 -data-dir=/var/lib/consul -config-dir=/etc/consul.d

consul join ipServer

consul catalog nodes -service x= nome do serviço

consul catalog nodes -detailed

consul members

##  Doc api
https://developer.hashicorp.com/consul/api-docs/catalog