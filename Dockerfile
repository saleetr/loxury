FROM 192.168.56.103:8082/docker-hosted/centos:latest
MAINTAINER saleetrana@gmail.com
WORKDIR /var/www/html
COPY loxury.zip /var/www/html
RUN unzip loxury.zip
RUN cp -rvf loxury/* .
RUN rm -rf loxury loxury.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
