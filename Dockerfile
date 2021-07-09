FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get install apache2 php libapache2-mod-php wget php-curl php-gd php-intl \
	php-mysql php-xml php-xmlrpc php-ldap php-zip php-soap php-mbstring -y && apt-get clean

ADD php.ini /tmp/

RUN cd /tmp/ && mv php.ini /etc/php/`ls /etc/php`/apache2/ && rm /var/www/html/index.html; \
	chown -R www-data:www-data /var/www/ && chmod -R ug+w /var/www/
	
RUN wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz" && \
	tar -xvf v3.11.0.tar.gz && mv moodle-3.11.0/* /var/www/html/ && rm v3.11.0.tar.gz
	
WORKDIR /var/www/

CMD service apache2 restart ; bash


