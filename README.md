# moodle-projetx
Projet moodle pour la plateforme iTS

[![Docker Image CI](https://github.com/iTeam-S/moodle-projetx/actions/workflows/docker-image.yml/badge.svg)](https://github.com/iTeam-S/moodle-projetx/actions/workflows/docker-image.yml)
[![Open Source Love svg1](https://badges.frapsoft.com/os/v1/open-source.svg?v=103)](#README)

### Deployement

> `$ chmod +x deploy.sh`


> `$ ./deploy.sh`


### Utilisation Packages: 
      Un environnement prêt avec tous les dependances pour heberger moodle
      
- **IMAGES**

  `docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`


- **CMD**

   `$ docker pull docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`


- **Dockerfile**

   `FROM docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`

---------------------------------------------
 #### Volume à monter dans:  `/var/www/html`
