### Backend web path

The request is transmitted as-is to the backend server. This usually means that the backend service should be aware of the web path used to access the service. For example, if the application is installed to `__DOMAIN__/proxy`, your backend application should produce absolute links starting with `__DOMAIN__/proxy/` too.

To support relative URLs from the backend, accessing the application via `http(s)://__DOMAIN__/proxy` will permanent redirect (302) to `http(s)://__DOMAIN__/proxy/` (trailing slash). Otherwise, a relative link like `<link rel="stylesheet" href="style.css">` would try to load `http(s)://__DOMAIN__/style.css` which would fail.

It is possible that your backend service does not support setting up a "base URL" (custom web path). In that case, you will have to install the application on a dedicated (sub)domain.

### Authentication passed to the app

For users logged in on the YunoHost portal, SSOwat can pass to the app their identity (username, email and full name) and their password (the default), only their identity, or nothing. Choose "Nothing" if the app does not use the YunoHost account, for example when it has its own login page. In all cases, SSOwat removes the HTTP Basic credentials sent by clients, so an app that relies on them will not receive them.

The YunoHost portal session cookie is never passed to the app.

### Plaintext HTTP backend

A plaintext HTTP backend is always allowed on localhost (`localhost` or 127.X.X.X). On any other address, including the server's own LAN or Docker addresses, it is only allowed with "Identity only, without the password" or "Nothing", so that the password never goes unencrypted on the network. The identity and the rest of the traffic still do.

NGINX does not verify the certificate of an HTTPS backend.

### Configuration

The destination, the authentication passed to the app and the static assets folder can be changed after install, from the *Configuration* tab of the app in the webadmin. If NGINX refuses the new configuration, the previous one is kept.
