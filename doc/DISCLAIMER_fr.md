### Chemin web du backend

La requête est transmise telle-quelle au serveur backend. Cela veut usuellement dire que le service backend doit avoir connaissance du chemin web utilisé pour accéder au service. Par exemple, si l'application est installée sur `example.com/proxy`, votre application backend devrait produire des liens absolus commençant par `example.com/proxy/`.

Pour supporter les URLs relatives depuis le backend, accéder à l'application via `http(s)://example.com/proxy` produit une redirection permanente (302) vers `http(s)://example.com/proxy/` (avec le slash de fin). Sinon, un lien relatif comme `<link rel="stylesheet" href="style.css">` essayerait de charger `http(s)://example.com/style.css`, ce qui échouerait.

Il est possible que votre service backend ne supporte pas de configurer une "base URL" (chemin web personnalisé). Dans ce cas, il faudra installer l'application sur un (sous-)domaine dédié.
