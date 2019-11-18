from ubuntu

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get -y update
RUN apt-get install -y \
tzdata \
apache2 \
php7.2 \
php-mysql \
libapache2-mod-php \
curl \
wget \ 
unzip 
COPY ./pdo-master /var/www/html/pdo-master/
expose 80
cmd ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
