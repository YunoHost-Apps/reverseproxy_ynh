This application allows to configure a HTTP(S) reverse proxy to serve another web service, as well as an (optional) static assets directory to serve directly from nginx. The application appears as a tile in the SSOWat panel, unless configured otherwise after install. The access to the application can be made public.

The supported backends are:

- plaintext HTTP to localhost (127.x.x.x), or to another machine when the password is not passed
- HTTPS to any destination
- socket file on local disk

By default, SSOWat passes the users' credentials to the backend. This can be limited to their identity, or disabled, during install or in the configuration panel. Even then, do not use this application to reverse-proxy a service you don't trust (for example to mirror a site hosted by someone else): its pages run in the same domain as your other apps.
