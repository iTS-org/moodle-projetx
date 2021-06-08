#!/bin/bash

apt-get update -y 
apt-get install wget

wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz"

mkdir -p /opt/web{data,html}
cd /tmp && tar -xf v3.11.0.tar.gz
mv moodle-3.11.0/. /opt/moodle/html/
rm /tmp/v3.11.0.tar.gz

docker build . -t moodle 

docker run -d -p 80:80 --name mdl -v /opt/moodle:/var/www/ moodle



