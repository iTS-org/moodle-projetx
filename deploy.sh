#!/bin/bash

wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz"

mkdir -p /opt/moodle/html
mkdir /opt/moodle-db
chmod 777 /opt/moodle
tar -xf v3.11.0.tar.gz
mv moodle-3.11.0/* /opt/moodle/html/
rm /tmp/v3.11.0.tar.gz

docker build . -t moodle

docker-compose up -d
