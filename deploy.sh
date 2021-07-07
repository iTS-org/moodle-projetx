#!/bin/bash

# creation du dossier installation
mkdir -p /opt/moodle/html

# Ajout de permission pour les volumes
chmod 777 /opt/moodle

# creation de l'image moodle
docker build . -t moodle

# Lancement des conteneurs avec docker-compose
docker-compose up -d
