### Chemin web du backend

La requête est transmise telle-quelle au serveur backend. Cela veut usuellement dire que le service backend doit avoir connaissance du chemin web utilisé pour accéder au service. Par exemple, si l'application est installée sur `__DOMAIN__/proxy`, votre application backend devrait produire des liens absolus commençant par `__DOMAIN__/proxy/`.

Pour supporter les URLs relatives depuis le backend, accéder à l'application via `http(s)://__DOMAIN__/proxy` produit une redirection permanente (302) vers `http(s)://__DOMAIN__/proxy/` (avec le slash de fin). Sinon, un lien relatif comme `<link rel="stylesheet" href="style.css">` essayerait de charger `http(s)://__DOMAIN__/style.css`, ce qui échouerait.

Il est possible que votre service backend ne supporte pas de configurer une "base URL" (chemin web personnalisé). Dans ce cas, il faudra installer l'application sur un (sous-)domaine dédié.

### Authentification transmise à l'application

Pour les utilisateurs connectés au portail YunoHost, SSOwat peut transmettre à l'application leur identité (nom d'utilisateur, adresse e-mail et nom complet) et leur mot de passe (par défaut), seulement leur identité, ou rien. Choisissez « Nothing » si l'application n'utilise pas le compte YunoHost, par exemple si elle a sa propre page de connexion. Dans tous les cas, SSOwat retire les identifiants HTTP Basic envoyés par les clients : une application qui s'appuie dessus ne les recevra pas.

Le cookie de session du portail YunoHost n'est jamais transmis à l'application.

### Backend en HTTP non chiffré

Un backend en HTTP non chiffré est toujours autorisé en localhost (`localhost` ou 127.X.X.X). Sur toute autre adresse, y compris les adresses LAN ou Docker du serveur lui-même, il n'est autorisé qu'avec « Identity only, without the password » ou « Nothing », pour que le mot de passe ne circule jamais en clair sur le réseau. L'identité et le reste du trafic, eux, circulent en clair.

NGINX ne vérifie pas le certificat d'un backend en HTTPS.

### Configuration

La destination, l'authentification transmise à l'application et le dossier pour les fichiers statiques peuvent être modifiés après l'installation, depuis l'onglet *Configuration* de l'application dans la webadmin. Si NGINX refuse la nouvelle configuration, la précédente est conservée.
