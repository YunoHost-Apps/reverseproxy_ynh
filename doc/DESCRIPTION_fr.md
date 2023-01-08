Cette application permet de configurer un reverse proxy HTTP(S) pour servir un autre service web, ainsi qu'un dossier (optionnel) pour les assets statiques qui sera servi directement depuis nginx. L'application apparaît comme tuile dans le panel SSOWat, sauf si elle a été configurée autrement après l'installation. L'accès à l'application peut être rendu public.

Les backends supportés sont:

- HTTP en clair (plaintext) vers localhost (127.x.x.x)
- HTTPS vers n'importe quelle destination
- fichier socket sur disque local

Attention, SSOWat envoie les identifiants des utilisateurices en clair jusqu'au backend, donc n'utilisez pas cette application pour reverse-proxy un service dans lequel vous n'avez pas confiance (par exemple pour mirrorer un site hébergé par une autre personne).
