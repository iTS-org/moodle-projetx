# moodle-projetx
Projet moodle pour la plateforme iTS

### Deployement

> `$ chmod +x deploy.sh`


> `$ ./deploy.sh`


### Utilisation Packages: 
      Un environnement prêt avec tous les dependances pour heberger moodle
      
- **Images**: `docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`


- **Cmd** :`docker pull docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`


- **Dockerfile** : `FROM docker.pkg.github.com/iteam-s/moodle-projetx/env-moodle:7.4`


MONTER LE VOLUME Où Moodle est placé dans *`/var/www/html`*
