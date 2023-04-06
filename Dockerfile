FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y nginx curl unzip && \
    echo "daemon off;" >>/etc/nginx/nginx.conf && \
    curl -sSL https://github.com/gabrielecirulli/2048/archive/master.zip -o /tmp/master.zip && \
    unzip /tmp/master.zip -d /var/www/html/ && \
    rm /tmp/master.zip && \
    mv /var/www/html/2048-master/* /var/www/html/ && \
    rm -rf /var/www/html/2048-master && \
    chown -R www-data:www-data /var/www/html/

EXPOSE 80

CMD ["nginx"]
