<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Reverse Proxy YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/reverseproxy.svg)](https://ci-apps.yunohost.org/ci/apps/reverseproxy/) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Instalatu Reverse Proxy YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Reverse Proxy YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Paketatutako bertsioa:** 0.2~ynh2
## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost Denda: <https://apps.yunohost.org/app/reverseproxy>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
edo
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
