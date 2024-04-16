<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Reverse Proxy pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/reverseproxy.svg)](https://dash.yunohost.org/appci/app/reverseproxy) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Installer Reverse Proxy avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Reverse Proxy rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Cette application permet de configurer un reverse proxy HTTP(S) pour servir un autre service web, ainsi qu'un dossier (optionnel) pour les assets statiques qui sera servi directement depuis nginx. L'application apparaît comme tuile dans le panel SSOWat, sauf si elle a été configurée autrement après l'installation. L'accès à l'application peut être rendu public.

Les backends supportés sont:

- HTTP en clair (plaintext) vers localhost (127.x.x.x)
- HTTPS vers n'importe quelle destination
- fichier socket sur disque local

Attention, SSOWat envoie les identifiants des utilisateurices en clair jusqu'au backend, donc n'utilisez pas cette application pour reverse-proxy un service dans lequel vous n'avez pas confiance (par exemple pour mirrorer un site hébergé par une autre personne).


**Version incluse :** 0.2~ynh2
## Documentations et ressources

- Site officiel de l’app : <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost Store : <https://apps.yunohost.org/app/reverseproxy>
- Signaler un bug : <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
ou
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
