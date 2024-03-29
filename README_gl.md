<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Reverse Proxy para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/reverseproxy.svg)](https://dash.yunohost.org/appci/app/reverseproxy) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Instalar Reverse Proxy con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Reverse Proxy de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Versión proporcionada:** 0.2~ynh1
## Documentación e recursos

- Web oficial da app: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Tenda YunoHost: <https://apps.yunohost.org/app/reverseproxy>
- Informar dun problema: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
ou
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
