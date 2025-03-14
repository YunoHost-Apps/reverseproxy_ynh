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

Это приложение позволяет настроить обратный прокси-сервер HTTP(S) для обслуживания другой веб-службы, а также (необязательный) каталог статических ресурсов для работы непосредственно из nginx. Приложение отображается в виде плитки на панели управления, если после установки не настроено иначе. Доступ к приложению может быть общедоступным.

Поддерживаемые серверные части:

- обычный текстовый запрос HTTP на localhost (127.x.x.x)
- HTTPS в любом направлении
- файл сокета на локальном диске

Пожалуйста, имейте в виду, что SSOWat отправляет учетные данные пользователя в виде открытого текста серверной части, поэтому не используйте это приложение для обратного прокси-сервера сервиса, которому вы не доверяете (например, для зеркального отображения сайта, размещенного кем-то другим).

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
