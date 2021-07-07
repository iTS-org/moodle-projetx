FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install apache2 php libapache2-mod-php wget php-curl php-gd php-intl \
	php-mysql php-xml php-xmlrpc php-ldap php-zip php-soap php-mbstring -y && apt-get clean

ADD php.ini /tmp/

RUN cd /tmp/ && mv php.ini /etc/php/`ls /etc/php`/apache2/ && \
	mkdir -p /var/www/ && chown -R www-data:www-data /var/www/ \
	&& chmod -R ug+w /var/www/
	
WORKDIR /var/www/

EXPOSE 80

CMD service apache2 restart ; bash


