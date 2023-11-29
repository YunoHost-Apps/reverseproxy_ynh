### Chemin web du backend

La requête est transmise telle-quelle au serveur backend. Cela veut usuellement dire que le service backend doit avoir connaissance du chemin web utilisé pour accéder au service. Par exemple, si l'application est installée sur `__DOMAIN__/proxy`, votre application backend devrait produire des liens absolus commençant par `__DOMAIN__/proxy/`.

Pour supporter les URLs relatives depuis le backend, accéder à l'application via `http(s)://__DOMAIN__/proxy` produit une redirection permanente (302) vers `http(s)://__DOMAIN__/proxy/` (avec le slash de fin). Sinon, un lien relatif comme `<link rel="stylesheet" href="style.css">` essayerait de charger `http(s)://__DOMAIN__/style.css`, ce qui échouerait.

Il est possible que votre service backend ne supporte pas de configurer une "base URL" (chemin web personnalisé). Dans ce cas, il faudra installer l'application sur un (sous-)domaine dédié.

### Backend localhost en clair (plaintext)

Les connexions en clair en HTTP au backend ne sont autorisées qu'en localhost sur les adresses 127.X.X.X. Il faudrait aussi supporter 10.X.X.X.
