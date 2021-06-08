FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y && apt install wget php-curl php-gd php-intl \
	php-mysql php-xml php-xmlrpc php-ldap php-zip php-soap php-mbstring -y

ADD php.ini /etc/php/7.4/apache2/

RUN cd /tmp/ && wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz" && \
	tar -xf v3.11.0.tar.gz && mv moodle-3.11.0 /var/www/html/moodle && \
	mkdir /var/data && chown www-data:www-data /var/data/ && chmod ug+w /var/data/
	
RUN service apache2 restart

EXPOSE 80
