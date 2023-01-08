### Backend web path

The request is transmitted as-is to the backend server. This usually means that the backend service shoudl be aware of the web path used to access the service. For example, if using the application is installed to `example.com/proxy`, your backend application should produce absolute links starting with `example.com/proxy/` too.

To support relative URLs from the backend, accessing the application via `http(s)://example.com/proxy` will permanent redirect (302) to `http(s)://example.com/proxy/` (trailing slash). Otherwise, a relative link like `<link rel="stylesheet" href="style.css">` would try to load `http(s)://example.com/style.css` which would fail.

It is possible that your backend service does not support setting up a "base URL" (custom web path). In that case, you will have to install the application on a dedicated (sub)domain.
