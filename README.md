# dockerWebApps

### Lancement de la console Traefik :
```http://localhost:8080```

### Lancement de la webapp :
  * ```http://example.docker.localhost```

### Scale up (exemple) :
```docker-compose up -d --scale webapp=5```

### Pre-requis pour tests sur poste local :
  * Windows, ajouter cette ligne au fichier C:\Windows\System32\drivers\etc\hosts file
```127.0.0.1 example.docker..localhost```
  * Linux, ajouter cette ligne au fichier /etc/hosts file
```127.0.0.1 example.docker..localhost```

### Connexion JMX

Depuis JVisualVM ou JConsole sur l'adresse 0.0.0.0:1099

### Vérifier la mémoire au démarrage de la JVM (pour tester Xmx/Xms par exemple)
```
 docker run -ti --rm openjdk:8-jre-alpine sh -c "java -XX:+PrintFlagsFinal -version | grep -iE 'HeapSize|PermSize|ThreadStackSize'"
```