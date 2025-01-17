### Backend web path

The request is transmitted as-is to the backend server. This usually means that the backend service should be aware of the web path used to access the service. For example, if the application is installed to `__DOMAIN__/proxy`, your backend application should produce absolute links starting with `__DOMAIN__/proxy/` too.

To support relative URLs from the backend, accessing the application via `http(s)://__DOMAIN__/proxy` will permanent redirect (302) to `http(s)://__DOMAIN__/proxy/` (trailing slash). Otherwise, a relative link like `<link rel="stylesheet" href="style.css">` would try to load `http(s)://__DOMAIN__/style.css` which would fail.

It is possible that your backend service does not support setting up a "base URL" (custom web path). In that case, you will have to install the application on a dedicated (sub)domain.

### Plaintext localhost backend

Plaintext HTTP backend is only allowed on localhost. For now, only 127.X.X.X is allowed. 10.X.X.X should also be supported.
