<!--
Este archivo README esta generado automaticamente<https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
No se debe editar a mano.
-->

# Reverse Proxy para Yunohost

[![Nivel de integración](https://dash.yunohost.org/integration/reverseproxy.svg)](https://dash.yunohost.org/appci/app/reverseproxy) ![Estado funcional](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Estado En Mantención](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Instalar Reverse Proxy con Yunhost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Leer este README en otros idiomas.](./ALL_README.md)*

> *Este paquete le permite instalarReverse Proxy rapidamente y simplement en un servidor YunoHost.*  
> *Si no tiene YunoHost, visita [the guide](https://yunohost.org/install) para aprender como instalarla.*

## Descripción general

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Versión actual:** 0.2~ynh2
## Documentaciones y recursos

- Sitio web oficial: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Catálogo YunoHost: <https://apps.yunohost.org/app/reverseproxy>
- Reportar un error: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Información para desarrolladores

Por favor enviar sus correcciones a la [`branch testing`](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing

Para probar la rama `testing`, sigue asÍ:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
o
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Mas informaciones sobre el empaquetado de aplicaciones:** <https://yunohost.org/packaging_apps>
