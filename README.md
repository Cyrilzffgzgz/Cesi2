# Cesi2
Tp Cesi

powershell

![alt text](image-5.png)

server ad carte reseau

![alt text](<Capture d'écran 2025-10-22 143410.png>)

Ad + DNS

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

Ce qui donne :

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
















Compte utilisateur+groupe+unité d'organisation
![alt text](image-4.png)

![alt text](image-13.png)

![alt text](image-14.png)

computer sur ad

![alt text](image-12.png)

partage fichier

![alt text](image-9.png)

![alt text](image-10.png)

![alt text](image-11.png)


Bureau à distance :

![alt text](image-15.png)

![alt text](image-16.png)

![alt text](image-17.png)


