# CESI 2
#Tp Cesi powershell

![alt text](image-5.png)

Server ad carte reseau

![alt text](<Capture d'écran 2025-10-22 143410.png>)

Ad + DNS

Compte utilisateur+groupe+unité d'organisation
![alt text](image-4.png)

![alt text](image-13.png)

![alt text](image-14.png)

Computer sur ad

![alt text](image-12.png)

Partage fichier

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)


Bureau à distance :

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)


![alt text](image.png)

![alt text](image-1.png)

![alt text](image-18.png)

![alt text](image-19.png)

![alt text](image-26.png)

![alt text](image-27.png)

![alt text](image-28.png)

Zone primaire DNS

1. Créez une zone primaire DNS nommée entreprisexyz.local.

![alt text](image-22.png)

![alt text](image-23.png)

2. Ajoutez un enregistrement hôte (A) pour le serveur principal :
 - Nom : srv-dc1
 - IP : 192.168.147.10


![alt text](image-24.png)

3. Configurez un redirecteur DNS vers les serveurs publics de Google :
 - 8.8.8.8
 - 8.8.4.4

![alt text](image-25.png)

Questions :

- Quelle est la différence entre un enregistrement A et un CNAME ?

Enregistrement A : associe un nom de domaine directement à une adresse IP.
Enregistrement CNAME : crée un alias pointant vers un autre nom de domaine déjà existant (qui lui a un A record).

- Quelle commande permet de vérifier la liste des zones DNS existantes ?

C'est la commande: Get-DnsServerZone

- Pourquoi utiliser un redirecteur dans un DNS d’entreprise ?

- Pourquoi utiliser un redirecteur dans un DNS d’entreprise ?

On utilise un redirecteur pour sécuriser, controller et améliorer les résolutions DNS extérieurs
sans exposer le DNS interne.



DHCP :

création de l'étendue :
![alt text](image-29.png)

![alt text](image-30.png)

On utilise cette commande, pour avoir la liste des étendues :

![alt text](image-31.png)

Voici ce que ça donne:

![alt text](image-32.png)

On utilise après cette commmande pour voir le nom de domaine, le DNS et le Routeur :

![alt text](image-33.png)

Ce que ça donne :

![alt text](image-34.png)

On utilise après cette commande pour créer la réservation :

![alt text](image-35.png)

On utilise après cette commande pour bien vérifier la réservation :

![alt text](image-36.png)

Questions :
- Quelle est la différence entre une adresse IP dynamique et une réservation DHCP ?

L'adresse IP dynamique est automatiquement distribué sur la plage d'IP donné par le DHCP et change à chaque connexions
alors que une réservation DHCP se voit affecter une adresse IP fixe grâce à son adresse MAC.

- Que se passe-t-il si deux serveurs DHCP répondent sur le même réseau ?

Les clients peuvent recevoir des adresses IP de l’un ou l’autre serveur, ce qui peut provoquer des conflits d’adresses ou des problèmes de connectivité.

- Quelle commande PowerShell permet de visualiser les baux DHCP actifs ?

C'est la commande : Get-DhcpServerv4Lease -ScopeId <ScopeId>

Bureau à distance :

On utilise d'abord cette commande pour vérifier que tout les rôles sont disponibles :

![alt text](image-37.png)

On utlise après cette commande pour installer tout les rôles nécessaires pour le service Bureau à distance et mettre restart à la fin pour redémarrer automatiquement si besoin :

- Install-WindowsFeature -Name RDS-RD-Server, RDS-Web-Access, RDS-Connection-Broker -IncludeAllSubFeature -IncludeManagementTools -Restart

Après le redémarrage on vérifie que tout les rôles soient bien installés:

![alt text](image-38.png)

On utilise après cette commande pour le FQDN :

![alt text](image-39.png)

Une fois le FQDN obtenu on l'utilise dans la commande suivante pour effectuer le déploiement :

![alt text](image-40.png)

On utilise après cette commande pour vérifier que le déploimenet à été effectué :

![alt text](image-41.png)

![alt text](image-42.png)

Tout à été bien installé pour le bloc note : 

![alt text](image-43.png)

Pareil pour la calculatrice :

![alt text](image-44.png)

On crée après le certificat auto signé : 

![alt text](image-45.png)

On sécurise après le certificat : 

![alt text](image-46.png)

et on vérifie après que le certificat à bien été fait : 

![alt text](image-47.png)

On essaye ensuite de se connecter sur le site pour être bien sûr que la sécurisation a été faîte :

![alt text](image-48.png)

On a bien accès aux ressources avec la calculatrice et le bloc note :

![alt text](image-49.png)






















