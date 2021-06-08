FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install apache2 php libapache2-mod-php wget php-curl php-gd php-intl \
	php-mysql php-xml php-xmlrpc php-ldap php-zip php-soap php-mbstring -y

ADD php.ini /tmp/

RUN cd /tmp/ && mv php.ini /etc/php/`ls /etc/php`/apache2/ && \
	wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz" && \
	mkdir -p /var/www/html/ && chown -R www-data:www-data /var/www/html && chmod -R ug+w /var/www/html && \
	tar -xf v3.11.0.tar.gz && mv moodle-3.11.0 /var/www/html/moodle && \
	mkdir /var/www/data && chown www-data:www-data /var/www/data/ && chmod ug+w /var/www/data/ && rm /tmp/*
	
WORKDIR /var/www/html

RUN service apache2 restart

EXPOSE 80
