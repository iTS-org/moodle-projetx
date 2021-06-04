FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt update && apt install php wget apache2 libapache2-mod-php -y && \
	apt install graphviz aspell ghostscript clamav php-pspell php-curl \
	php-gd php-intl php-mysql php-xml php-xmlrpc php-ldap php-zip \
	php-soap php-mbstring

ADD php.ini /etc/php/`ls /etc/php/`/apache2/

RUN service apache2 restart

WORKDIR /var/www/html/

RUN wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz" && \
	tar -xf v3.11.0.tar.gz && mv moodlev3.11.0 moodle && \
	chown www-data:www-data /var/www/ && chmod ug+w && /var/www && \
	mkdir /var/data && chown www-data:www-data /var/data/ && chmod ug+w /var/data/ 
