# mielerie d'Agathe
Projet de semestre 4 DUT informatique 2nd année
licence GNU GPL v3
<hr>

- Louis Chovaneck @louia
- Axel Undreiner  @Axoloofr 
- Baptiste Catois @Aizekyel 
- Bastien Janon   @1bastien1 <br>
IUT Reims-châlon-Charleville Département Informatique
<hr>
Dans le cadre de notre projet de semestre 4 dans le cadre de notre DUT Informatique à l'IUT de Reims nous avons conçu un site marchand spécialisé dans la vente de miel. <br>
Ce site crée a été developpé durant le 4ème semestre de notre DUT Informatique dans la période Janvier - Mars 2019. <br>
Bâtie sur un modèle MVC à l'aide de Symphony et des bundle mailswifter et FOSuser, il contient une base de donnée fournie en bas de page.
<br><br>

- Rendu de l'application côté "administrateur": 

![alt text](https://framapic.org/JcoW7tq830ZK/oax87lulibG5.PNG)

- Rendu de l'application "côté client": 

![alt text](https://framapic.org/akWAxMlg0wmr/quZTVqCWctEz.PNG)

- Rendu de l'application "page de login": 

![alt text](https://framapic.org/NWD3jLRT0n5Z/mga8Vdt3x02W.PNG)

Ce projet est dans l'état fonctionnel mais quelques fonctionnalités restes à implémenter. (voir la todo-list)<br>
Elles pourront faire l'objet d'une amélioration future. <br>



- MCD :

![](https://framapic.org/DLQFclHsSVYS/rOuj2aKv8uWg)

# Prérequis : 
- avoir doctrine d'installer soit au sein du dossier /projetS4 soit disponible pour tous.
- avoir php configurer dans la PATH.
- pour les système WIndows, avoir WAMP d'installé
- pour les systèmesGNU/Unix, avoir un server lamp d'installé

# Installation : 
- mkdir projetS4 && cd /projetS4
- git clone https://github.com/1bastien1/mielerie-d-Agathe
- php console/bin doctrine:schema:update --force
- créer une BD nommée "projets4" locale, sans MDP et avec accès root (configuration du projet par défaut)
- lancer le script SQL afin de remplir la BD
- php console/bin server:run (~projetS4/)
- allez sur 127.0.0.1:8000

# Erreurs connues
- j'ai une erreur lors du lancement de 
  - php console/bin doctrine:schema:update --force
  elle peut-être dûe à une erreur lors de l'accès à la BD, soit la BD "projets4" n'existe pas, soit doctrine n'y a pas accès.
