<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Reverse Proxy untuk YunoHost

[![Tingkat integrasi](https://dash.yunohost.org/integration/reverseproxy.svg)](https://ci-apps.yunohost.org/ci/apps/reverseproxy/) ![Status kerja](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Status pemeliharaan](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Pasang Reverse Proxy dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Reverse Proxy secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Versi terkirim:** 0.2~ynh2
## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Gudang YunoHost: <https://apps.yunohost.org/app/reverseproxy>
- Laporkan bug: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
atau
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
