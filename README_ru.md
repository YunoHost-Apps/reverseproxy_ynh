<!--
Важно: этот README был автоматически сгенерирован <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Он НЕ ДОЛЖЕН редактироваться вручную.
-->

# Reverse Proxy для YunoHost

[![Уровень интеграции](https://dash.yunohost.org/integration/reverseproxy.svg)](https://ci-apps.yunohost.org/ci/apps/reverseproxy/) ![Состояние работы](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![Состояние сопровождения](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![Установите Reverse Proxy с YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[Прочтите этот README на других языках.](./ALL_README.md)*

> *Этот пакет позволяет Вам установить Reverse Proxy быстро и просто на YunoHost-сервер.*  
> *Если у Вас нет YunoHost, пожалуйста, посмотрите [инструкцию](https://yunohost.org/install), чтобы узнать, как установить его.*

## Обзор

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**Поставляемая версия:** 0.2~ynh2
## Документация и ресурсы

- Официальный веб-сайт приложения: <https://en.wikipedia.org/wiki/Reverse_proxy>
- Магазин YunoHost: <https://apps.yunohost.org/app/reverseproxy>
- Сообщите об ошибке: <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## Информация для разработчиков

Пришлите Ваш запрос на слияние в [ветку `testing`](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing).

Чтобы попробовать ветку `testing`, пожалуйста, сделайте что-то вроде этого:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
или
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**Больше информации о пакетировании приложений:** <https://yunohost.org/packaging_apps>
