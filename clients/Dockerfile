# Estágio 1 - Construindo a imagem do Consul
FROM hashicorp/consul:1.11.2

RUN  apk update
RUN  apk add nginx
COPY ./start.sh /start.sh
RUN  chmod +x start.sh
RUN  mkdir -p /run/nginx
RUN  mkdir -p /var/www/localhost/html

RUN chown -R root:root /var/www/localhost/html

RUN chmod -R 755 /var/www/localhost

COPY ./nginx/index.html /var/www/localhost/html/
COPY ./nginx/default.conf /etc/nginx/http.d/default.conf



EXPOSE 80 443

ENTRYPOINT ["sh","start.sh"]