{-
Ce fichier comporte les donnÃ©es et les tests relatifs au TP1_test. Vous devez pouvoir tester votre travail sans avoir Ã  le modifier. En d'autres termes,
votre travail devra fonctionner sans aucun changement de ce fichier.

Vous pouvez l'utiliser en deux modes: interprÃ©tÃ© et compilÃ©.

En mode inteprÃ©tÃ©, vous devez d'abord charger votre module TP1_test.hs avant de charger ce fichier. Une fois les deux chargÃ©s, vous pouvez de maniÃ¨re interactive
soit exÃ©cuter les fonctions testXX un Ã  la fois ou alors exÃ©cuter la fonction main qui elle exÃ©cute tous les tests. L'exÃ©cution test par test peut vous 
aider Ã  une mise au point progressive de votre projet. Les tests ne sont pas disposÃ©s en ordre mais vous pouvez facilement identifier le(s) test(s) 
qui correspond(ent) Ã  chacune des questions. Je vous rapplelle qu'ils ne sont pas exhaustifs et c'est Ã  vous de vous assurer de tester toutes les possibilitÃ©s.

En mode compilÃ©, vous pouvez compiler votre programme comme suit: ghc --make testTP1.hs (assurez-vous que les deux fichiers (TP1_test.hs et testTP1.hs) soient dans le mÃªme rÃ©pertoire).
La compilation gÃ©nÃ©rera un fichier testTP1.exe que vous pouvez exÃ©cuter directement.
-}

-- importation des modules nÃ©cessaires
import TP1_test 
import System.Environment
import System.IO
import System.IO.Error
import Control.Exception

-----------                      --------------
-----------  LA BASE DE DONNÃ‰ES  --------------
-----------                      --------------
-- les rÃ©alisateurs
woody = (TP1_test.Realisateur "Allen Woody" "New York New York")
denis = (TP1_test.Realisateur "Arcan Denis" "Montreal Quebec")
joss = (TP1_test.Realisateur "Joss Whedon" "New York -")
jon = (TP1_test.Realisateur "Jon Favreau" "New York Queens")
guy = (TP1_test.Realisateur "Guy Ritchie" "Hatfield Royaume-Uni")

-- les acteurs
arnold = (TP1_test.Acteur "Schwarzennegger Arnold" M 1000 (Date' 1978 4 1) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> typeF == Action && realisateurF /= PasDeRealisateur && producteurF /= PasDeProducteur && coutF > 100000) []) 
meryll = (TP1_test.Acteur "Streep Meryll" F 1500 (Date' 1984 9 1) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> typeF == Action && realisateurF /= PasDeRealisateur && dureeF > 90 || nbacteursF == 2) []) 
maxi = (TP1_test.Acteur "Farfelu Maximo" M 1 (Date' 1991 1 1) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> (length titreF) > 5 || nomRealisateur (realisateurF) == "Allen Woody" || (take 4 (adresseRealisateur realisateurF)) == "L.A." && coutF > 100000) []) 
julia = (TP1_test.Acteur "Roberts Julia" F 2500 (Date' 1978 4 12) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> (typeF == Drame || typeF == Humour) && ( budgetF < 4000)) []) 
reno = (TP1_test.Acteur "Reno Jean" M 100 (Date' 1975 8 15) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> typeF == Drame) [])
sharon = (TP1_test.Acteur "Stone Sharon" F 2000 (Date' 1990 8 15) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> ((length titreF) > 4 && (length titreF) < 150) && realisateurF /= woody ) [])
robert = (TP1_test.Acteur "Robert Downey Jr" M 4500 (Date' 1987 10 1) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> budgetF >= 100000 ) [iron, sherlock, avengers])
scarlett = (TP1_test.Acteur "Scarlett Johansson" F 4000 (Date' 2003 5 9) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> (typeF == Action) || (typeF == Humour))  [avengers])
chris = (TP1_test.Acteur "Chris Evans " M 2700 (Date' 2001 9 5) ( \(Film titreF typeF realisateurF producteurF coutF dureeF nbacteursF budgetF) -> typeF == Action)  [])

-- les maisons de productions
flash = (TP1_test.MaisonDeProd "Flash Films" 100000 [])
ua = (TP1_test.MaisonDeProd "United Artists" 1000000 [])
flop = (TP1_test.MaisonDeProd "Flop Films" 50 [])
marvel = (TP1_test.MaisonDeProd "Marvel Studios" 2000000 [iron])
silver = (TP1_test.MaisonDeProd "Silver Picture" 900000 [sherlock] )

-- les films
destruction = (TP1_test.Film "Destruction" Action PasDeRealisateur PasDeProducteur 100000 95 150 60000)
nuit = (TP1_test.Film "Une nuit a Casablanca" Humour woody PasDeProducteur 2000 100 24 1000)
coupe = (TP1_test.Film "Coupe de coupe !" Horreur denis flop 45000 45 2 10000)
wind = (TP1_test.Film "Gone with the wind !" Drame woody flash 450 120 4 100 )
wind2 = (TP1_test.Film "Gone with the wind, the sequell !" Drame woody flash 4500 120 3 3999) 
avengers = (TP1_test.Film "The Avengers" Action joss marvel 200000 143 4 110000 ) 
iron = (TP1_test.Film "Iron Man" Action jon marvel 160000 126 3 100000)
sherlock = (TP1_test.Film "Sherlock Holmes" Policier guy silver 90000 128 1 90000 )

-- les cinemas
starcite = (TP1_test.Cinema "Starcite" "Montreal Quebec" [(avengers, 5800, 10), (wind, 800, 10), (nuit, 1555, 10), (iron, 4100, 10), (sherlock, 4900, 10), (coupe, 1500, 10)])
welcome = (TP1_test.Cinema "Wecolme" "New york" [(sherlock, 25500, 8), (iron, 36300, 11), (avengers, 40020, 10)])
megarama = (TP1_test.Cinema "Megarama" "Casablanca" [(nuit, 500, 5), (iron, 1050, 5), (coupe, 700, 5)])
leverdict = (TP1_test.Cinema "Le verdict" "nulle part" [])

-- les critÃ¨res
critereMasculin (Acteur nomA sexeA revenuMinA dateA restrictionA _) = sexeA == M 
critereFeminin (Acteur nomA sexeA revenuMinA dateA restrictionA _) = sexeA == F
critereExperienceMin nbAnnees acteur = experience (acteur) > nbAnnees
critereExperienceMax nbAnnees acteur = experience (acteur) <= nbAnnees
critereRevenuMin min acteur = (revenuMin acteur) > min
critereRevenuMax max acteur = (revenuMin acteur) <= max
critereNom nom acteur = (nomActeur acteur) /= nom

-- listes de cinÃ©. d'acteurs et de films dans le systÃ¨me
listeCinemas = [starcite, welcome, megarama, leverdict] :: [Cinema]
listeActeurs = [chris, scarlett, robert, sharon, reno, julia, maxi, meryll, arnold]
listeFilms = [destruction, nuit, coupe, wind, wind2, avengers, iron, sherlock]
listeMaisons = [flash,ua,marvel,silver]