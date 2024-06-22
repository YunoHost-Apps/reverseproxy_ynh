<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Reverse Proxy

[![集成程度](https://dash.yunohost.org/integration/reverseproxy.svg)](https://dash.yunohost.org/appci/app/reverseproxy) ![工作状态](https://ci-apps.yunohost.org/ci/badges/reverseproxy.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/reverseproxy.maintain.svg)

[![使用 YunoHost 安装 Reverse Proxy](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=reverseproxy)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Reverse Proxy。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x)
- HTTPS to any destination
- socket file on local disk

Please be aware that SSOWat sends user credentials in plaintext to the backend, so do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else).


**分发版本：** 0.2~ynh2
## 文档与资源

- 官方应用网站： <https://en.wikipedia.org/wiki/Reverse_proxy>
- YunoHost 商店： <https://apps.yunohost.org/app/reverseproxy>
- 报告 bug： <https://github.com/YunoHost-Apps/reverseproxy_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
或
sudo yunohost app upgrade reverseproxy -u https://github.com/YunoHost-Apps/reverseproxy_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
