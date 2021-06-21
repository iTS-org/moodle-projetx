#!/bin/bash

# Telechargement du fichier source
wget "https://github.com/moodle/moodle/archive/refs/tags/v3.11.0.tar.gz"

# creation du dossier installation
mkdir -p /opt/moodle/html
mkdir /opt/moodle-db

# Ajout de permission pour les volumes
chmod 777 -R /opt/moodle

# Extraction du fichier source
tar -xf v3.11.0.tar.gz

# deplacement dans le dossier d'installation
mv moodle-3.11.0/* /opt/moodle/html/

# suppression du fichier compressé inutile
rm v3.11.0.tar.gz

# creation de l'image moodle
docker build . -t moodle

# Lancment des conteneurs avec docker-compose
docker-compose up -d
