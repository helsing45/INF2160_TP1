INF2160 – Hiver 2017 - TP1 – Haskell :
Système d’information du registrariat revisité
 
A) Consignes
 
Ce travail comporte deux fichiers :
-         Le fichier TP1.hs que vous devez compléter
-         Le fichier  testTP1.hs fourni pour des fins de test. Il comporte des tests (non exhaustifs) qui doivent retourner True.
Ce que vous devez faire 
Complétez le fichier TP1.hs en lisant attentivement les descriptifs donnés en commentaire et produire une solution satisfaisante.
Tester vos solutions en utilisant les tests (non exhaustifs) donnés dans le fichier testTP1.hs. Vous devez utiliser ce fichier de la manière suivante (une fois que votre travail est prêt):
Compilez-le comme suit (dans le même répertoire que celui de votre TP1.hs): ghc --make testTP1.hs
Exécutez-le en tapant testTp1.
Note : Les bonnes pratiques de génie logiciel suggèrent d'utiliser les fonctions prédéfinies lorsque c'est possible. Vous pouvez également définir vos propres fonctions de soutien qui vous aideront à répondre aux questions posées. 
 
Ce que vous devez remettre
Votre code complet
o   Qui doit être réalisé dans un fichier contenant dans les deux premières lignes les noms et codes permanents des co-équipiers (équipe de deux au maximum, un travail individuel est aussi possible).
o   Votre fichier doit pouvoir s'exécuter SANS MODIFICATION sur le système GHCi.
o   La remise du code doit se faire par https://oto.labunix.uqam.ca/application-web/connexion  en suivant les étapes suivantes :
1- Choisir Rendre TP
2- Entrer mon code MS : nkambou_r
3- Sélectionner l'identifiant de la boîte : INF2160-TP1
4- Remettre un fichier de nom TP1.hs.
5- Pour les étapes détaillées de la remise, consultez  manuel-remise.pdf.
 
Points importants.
1- Les travaux pratiques sont réalisés en équipe de trois (3) étudiants au maximum.
2- Votre code pourrait être vérifié de façon AUTOMATIQUE; vous serez donc pénalisé s'il ne correspond pas EXACTEMENT à ce qui est demandé.
 
Remise du TP.
Votre TP doit être remis de façon électronique avant 23h00, le 26 février 2017. Une pénalité de 10% sera appliquée pour chaque jour de retard.
 
B) Description du projet
Le but de ce travail est de créer une application qui fournit un ensemble de services reliés à la gestion des inscriptions des étudiants et au suivi de leur note dans des cours offerts durant diverses sessions. Ces services sont décrits dans le fichier TP1.hs offert.
 
Description des éléments du système
- Un cours est défini par un sigle, un titre et son nombre de crédits. Il est offert à une session.
- Une session est définie par le code de session, la date de début et la date de fin.
- Il peut exister plusieurs groupes pour le même cours. Un groupe-cours est défini par le sigle du cours, le numéro du groupe, le code de la session, le nombre maximal d'inscriptions et le code du professeur.
- Chaque groupe-cours est enseigné par un professeur. Ce dernier est défini par son code, son nom et son prénom.
- Un étudiant est défini par son code permanent, son nom, son prénom et son code programme. Il peut s’inscrire à des groupes-cours offerts dans une session.
- Une inscription est définie par le code permanent de l'étudiant, un sigle de cours, un numéro de groupe, un code de session, une date d'inscription, une date d'abandon et une note (celle obtenue pour le cours concerné).