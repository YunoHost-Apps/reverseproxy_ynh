<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Reverse Proxy per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/reverseproxy.svg)](https://dash.yunohost.org/appci/app/reverseproxy) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Installa Reverse Proxy con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Reverse Proxy su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Versione pubblicata:** 0.2~ynh1
## Documentazione e risorse

- Sito web ufficiale dell’app: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Store di YunoHost: <https://apps.yunohost.org/app/reverseproxy>
- Segnala un problema: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
o
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
