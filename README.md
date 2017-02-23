<div class="WordSection1">

**<span style="font-size:18.0pt;line-height:105%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">INF2160 – Hiver 2017 - TP1 – <span class="SpellE">Haskell</span> :</span>**

**_<span style="font-size:18.0pt;
line-height:105%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;">Système d’information du <span class="SpellE">registrariat</span> revisité</span>_**

**<span style="font-size:18.0pt;line-height:105%;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;"></span>**

**<span style="font-size:16.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;
mso-fareast-language:EN-CA"><span style="mso-list:Ignore">A) <span style="font:7.0pt &quot;Times New Roman&quot;"></span> </span></span>****<span style="font-size:16.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;
mso-fareast-language:EN-CA">Consignes</span>**

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA"></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">Ce travail comporte deux fichiers :</span>

<span style="font-size:13.5pt;
mso-bidi-font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:black;mso-fareast-language:EN-CA"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">        </span> </span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Le fichier </span><span lang="EN-CA" style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
mso-ansi-language:EN-CA;mso-fareast-language:EN-CA">[<span lang="FR-CA" style="mso-ansi-language:FR-CA">TP1.<span class="SpellE">hs</span> </span>](http://gdac.uqam.ca/inf2160/tp1/TP1.hs)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:black;mso-fareast-language:EN-CA">que vous devez compléter</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:EN-CA"></span>

<span style="font-size:13.5pt;
mso-bidi-font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:black;mso-fareast-language:EN-CA"><span style="mso-list:Ignore">-<span style="font:7.0pt &quot;Times New Roman&quot;">        </span> </span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Le fichier</span> <span lang="EN-CA" style="font-size:12.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:
EN-CA;mso-fareast-language:EN-CA">[<span style="font-family:
&quot;Calibri&quot;,&quot;sans-serif&quot;;mso-ascii-theme-font:minor-latin;mso-fareast-font-family:
Calibri;mso-fareast-theme-font:minor-latin;mso-hansi-theme-font:minor-latin;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-bidi-theme-font:minor-bidi;
color:windowtext;mso-ansi-language:FR-CA;mso-fareast-language:EN-US;text-decoration:
none;text-underline:none"><span style="mso-spacerun:yes"> </span></span><span lang="FR-CA" style="mso-ansi-language:FR-CA">testTP1.<span class="SpellE">hs</span></span>](http://gdac.uqam.ca/inf2160/tp1/testTP1.hs)</span> <span lang="EN-CA" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA"></span> <span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">fourni pour des fins de test. Il comporte des tests (**non exhaustifs**) qui doivent retourner <span class="SpellE">_True_</span>.</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;mso-fareast-language:EN-CA"></span>

**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Ce que vous devez faire</span>**<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA"> </span>

*   <span style="font-size:
         12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
         mso-fareast-language:EN-CA">Complétez le fichier </span><span lang="EN-CA" style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
         mso-fareast-font-family:&quot;Times New Roman&quot;;mso-ansi-language:EN-CA;
         mso-fareast-language:EN-CA">[<span lang="FR-CA" style="mso-ansi-language:FR-CA">TP1.<span class="SpellE">hs</span></span>](http://gdac.uqam.ca/inf2160/tp1/TP1.hs)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
         &quot;Times New Roman&quot;;mso-fareast-language:EN-CA"> en lisant attentivement les descriptifs donnés en commentaire et produire une solution satisfaisante.</span>
*   <span style="font-size:
         12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
         mso-fareast-language:EN-CA">Tester vos solutions en utilisant les tests (**non exhaustifs**) donnés dans le fichier </span><span lang="EN-CA" style="font-size:12.0pt;font-family:
         &quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
         mso-ansi-language:EN-CA;mso-fareast-language:EN-CA">[<span lang="FR-CA" style="mso-ansi-language:FR-CA">testTP1.<span class="SpellE">hs</span></span>](http://gdac.uqam.ca/inf2160/tp1/testTP1.hs)</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
         &quot;Times New Roman&quot;;mso-fareast-language:EN-CA">. Vous devez utiliser ce fichier de la manière suivante (une fois que votre travail est prêt):</span>

*   <span style="font-size:
          12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
          &quot;Times New Roman&quot;;mso-fareast-language:EN-CA">Compilez-le comme suit (dans le même répertoire que celui de votre TP1.<span class="SpellE">hs</span>): <span class="SpellE">ghc</span> --<span class="SpellE">make</span> testTP1.<span class="SpellE">hs</span></span>
*   <span style="font-size:
          12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
          &quot;Times New Roman&quot;;mso-fareast-language:EN-CA">Exécutez-le en tapant testTp1.</span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">Note : Les bonnes pratiques de génie logiciel suggèrent d'utiliser les fonctions prédéfinies lorsque c'est possible. Vous pouvez également définir vos propres fonctions de soutien qui vous aideront à répondre aux questions posées. </span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA"></span>

**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Ce que vous devez remettre</span>**<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA"></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">Votre code complet</span>

<span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;mso-fareast-language:EN-CA"><span style="mso-list:Ignore">o<span style="font:7.0pt &quot;Times New Roman&quot;">  </span> </span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Qui doit être réalisé dans un fichier contenant **dans les deux premières lignes** les noms et codes permanents des co-équipiers (équipe de deux au maximum, un travail individuel est aussi possible).</span>

<span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;mso-fareast-language:EN-CA"><span style="mso-list:Ignore">o<span style="font:7.0pt &quot;Times New Roman&quot;">  </span> </span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Votre fichier doit pouvoir s'exécuter SANS MODIFICATION sur le système <span class="SpellE">_GHCi_</span>_._</span>

<span style="font-size:10.0pt;mso-bidi-font-size:12.0pt;font-family:&quot;Courier New&quot;;
mso-fareast-font-family:&quot;Courier New&quot;;color:black;mso-fareast-language:EN-CA"><span style="mso-list:Ignore">o<span style="font:7.0pt &quot;Times New Roman&quot;">  </span> </span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">La remise du code doit se faire par [https://oto.labunix.uqam.ca/application-web/connexion](https://oto.labunix.uqam.ca/application-web/connexion)<span style="mso-spacerun:yes"> </span> en suivant les étapes suivantes :</span>

<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">1- Choisir **Rendre TP**</span><span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:
none"></span></span>

<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">2- Entrer mon code MS : <span class="SpellE">**nkambou_r**</span><span class="MsoHyperlink">**<span style="color:black;text-decoration:none;text-underline:none"></span>**</span></span>

<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">3- Sélectionner l'identifiant de la boîte : **INF2160-TP1<span class="MsoHyperlink"><span style="color:black;
text-decoration:none;text-underline:none"></span></span>**</span>

<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">4- Remettre un fichier de nom **TP1.hs**.<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:
none"></span></span></span>

<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">5- Pour les étapes détaillées de la remise, consultez<span style="mso-spacerun:yes"> </span> </span>**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#1F497D;mso-themecolor:text2;mso-fareast-language:EN-CA">[<span style="color:#1F497D;
mso-themecolor:text2;text-decoration:none;text-underline:none">manuel-remise.pdf</span>](http://oto.uqam.ca/documents/manuel-remise.pdf)</span>**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#1F497D;mso-themecolor:text2;mso-fareast-language:EN-CA">.<span class="MsoHyperlink"><span style="color:#1F497D;mso-themecolor:text2;text-decoration:
none;text-underline:none"></span></span></span>

**<span style="color:black"></span>**

**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Points importants.</span>**<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:none"></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">1- Les travaux pratiques sont réalisés en équipe de **trois (3) étudiants** au maximum.<span class="MsoHyperlink"><span style="color:black;text-decoration:
none;text-underline:none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">2- Votre code pourrait être vérifié de façon AUTOMATIQUE; vous serez donc pénalisé s'il ne correspond pas EXACTEMENT à ce qui est demandé.<span class="MsoHyperlink"><span style="color:black;
text-decoration:none;text-underline:none"></span></span></span>

**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Remise du TP.</span>**<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:none"></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">Votre TP doit être remis de façon électronique avant</span> **<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:#C00000;mso-fareast-language:EN-CA">23h00</span>**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:
&quot;Times New Roman&quot;;color:black;mso-fareast-language:EN-CA">, le</span> **<span style="font-size:12.0pt;font-family:
&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;color:#C00000;
mso-fareast-language:EN-CA">26 février 2017</span>**<span style="font-size:
12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">. Une pénalité de 10% sera appliquée pour chaque jour de retard.<span class="MsoHyperlink"><span style="color:black;
text-decoration:none;text-underline:none"></span></span></span>

**<span style="font-size:16.0pt"></span>**

**<span style="font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">B) Description du projet</span>**<span class="MsoHyperlink"><span style="font-size:12.0pt;color:black;text-decoration:none;text-underline:none"></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">Le but de ce travail est de créer une application qui fournit un ensemble de services reliés à la gestion des inscriptions des étudiants et au suivi de leur note dans des cours offerts durant diverses sessions. Ces services sont décrits dans le fichier TP1.<span class="SpellE">hs</span> offert.<span class="MsoHyperlink"><span style="color:black;
text-decoration:none;text-underline:none"></span></span></span>

**<span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;
mso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:
EN-CA">Description des éléments du système</span>**<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:none"></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Un **cours** est défini par un sigle, un titre et son nombre de crédits. Il est offert à une session.<span class="MsoHyperlink"><span style="color:black;
text-decoration:none;text-underline:none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Une **session** est définie par le code de session, la date de début et la date de fin.<span class="MsoHyperlink"><span style="color:black;text-decoration:
none;text-underline:none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Il peut exister plusieurs groupes pour le même cours. Un **groupe-cours** est défini par le sigle du cours, le numéro du groupe, le code de la session, le nombre maximal d'inscriptions et le code du professeur.<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:
none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Chaque groupe-cours est enseigné par un **professeur**. Ce dernier est défini par son code, son nom et son prénom.<span class="MsoHyperlink"><span style="color:black;text-decoration:none;text-underline:none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Un **étudiant** est défini par son code permanent, son nom, son prénom et son code programme. Il peut s’inscrire à des groupes-cours offerts dans une session.<span class="MsoHyperlink"><span style="color:black;text-decoration:none;
text-underline:none"></span></span></span>

<span style="font-size:12.0pt;
font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;
color:black;mso-fareast-language:EN-CA">- Une **inscription** est définie par le code permanent de l'étudiant, un sigle de cours, un numéro de groupe, un code de session, une date d'inscription, une date d'abandon et une note (celle obtenue pour le cours concerné).<span class="MsoHyperlink"><span style="color:black;text-decoration:
none;text-underline:none"></span></span></span>

</div>