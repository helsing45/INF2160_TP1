module TP1_test where 

--Importation de modules nÃ©cessaires
import Data.List
import Data.Char
import Data.Function
import Control.Exception
import Data.Typeable
import Data.Time.Clock
import Data.Time.Calendar

--DÃ©claration de synonimes de types utiles
type Annee = Integer
type Mois = Int
type Jour = Int 
type Nom = String 
type Adresse = String
type Budget = Int
type Titre = String
type Cout = Int
type Duree = Int 
type NombreActeurs = Int
type RevenuMinimum = Int

-- les composantes d'une date sont l'annÃ©e, le mois et le jour
data Date' = Date' Annee Mois Jour deriving Show
-- les composantes d'un rÃ©alisateur sont son nom et son adresse 
data Realisateur = PasDeRealisateur | Realisateur Nom Adresse  deriving (Show, Typeable, Eq)
-- les composantes d'une maison de production sont son nom, son budget et la liste des films qu'elle a produit
data MaisonDeProd = PasDeProducteur | MaisonDeProd Nom Budget ListeFilms deriving (Show, Typeable, Eq)
-- Un Film se caractÃ©rise par son titre, son type, son rÃ©alisateur, son coÃ»t, sa durÃ©e, le nombre dâ€™acteurs, son budget et liste des cinÃ©mas dans lequel le film est projetÃ© 
data Film = Film Titre TypeF Realisateur MaisonDeProd Cout Duree NombreActeurs Budget 
data TypeF = Action | Drame | Humour | Horreur | Policier deriving (Show, Eq)
-- Un CinÃ©ma se caractÃ©rise par son nom, son adresse, la liste des films, le nombre dâ€™entrÃ©es totales pour chaque film et le prix pour chaque entrÃ©e d'un film
data Cinema = Cinema Nom Adresse RepertoireFilms deriving Eq
-- les composantes d'un acteur sont son nom, son sexe, le revenu minimum qu'il accepte pour jouer dans un film, la date de son dÃ©but comme acteur, ses restrictions et la liste des films dans lesquls il a jouÃ©
data Acteur = Acteur Nom Sexe RevenuMinimum Date' Restriction ListeFilms 
data Sexe = M | F deriving (Show, Eq)

--- Fonctions dÃ©finies pour des fin d'instanciation des types Acteur, Cinema et Film pour permettre leur affichage
showActeur (Acteur nomA sexeA revenuMinA dateA _ _) = "(Acteur" ++ " " ++ show nomA ++ " " ++ show sexeA ++ " " ++ show revenuMinA ++ " " ++ show dateA ++")"
showCinema (Cinema nomC adresseC repertoireC) = "(Cinema" ++ " " ++ show nomC ++ " " ++ show adresseC ++ " " ++ show repertoireC ++")"
showFilm (Film titreF typeF realisateurF _ coutF dureeF nbreActeursF budgetF) = "(Film" ++ " " ++ show titreF++ " " ++ show typeF ++ " " ++ show realisateurF ++ " " ++ show coutF ++ " " ++ show dureeF ++ " " ++ show nbreActeursF ++ " " ++ show budgetF ++")"

--instanciation de types
instance Show Acteur where
 show  = showActeur
instance Show Cinema where
 show  = showCinema
instance Show Film where
 show  = showFilm
 
--Autre synonimes de types utiles
type RepertoireFilms = [(Film, Int, Int)]
type Restriction = Film -> Bool
type ListeFilms = [Film]
type Critere = Acteur -> Bool ---- On utilisera les listes de critÃ¨res pour sÃ©lectionner les acteurs d'un film

-- Pour la gestion des exceptions
data Elements = PasAssezDelements deriving (Show, Typeable)
data NosExceptions = BudgetInsuffisant | DejaProduit | PasAssezDacteurs deriving (Show, Typeable, Eq)
instance Exception NosExceptions
instance Exception Elements
instance Exception MaisonDeProd
instance Exception Realisateur

-- Quelques donctions d'accÃ¨s (getters)
-- la fonction titre retourne le titre du film passÃ© en paramÃ¨tre
titreFilm :: Film -> Titre
titreFilm (Film titreF _ _ _ _ _ _ _ ) = titreF
-- la fonction experience retourne le nombre d'annÃ©es d'expÃ©rience de l'acteur donne en argument
experience :: Acteur -> Integer
experience (Acteur _ _ _ (Date' adebut _ _) _ _) = 2016 - adebut
-- la fonction revenuMin retourne le revenu minimum demande par l'acteur donnÃ© en argument
revenuMin (Acteur _ _ revenuM _ _ _) = revenuM
-- la fonction nomActeur retourne le nom d'un acteur.
nomActeur (Acteur nom _ _ _ _ _) = nom
-- la fonction restriction retourne la composante restriction de l'argument de type acteur
restriction (Acteur _ _ _ _ r _) = r
-- la fonction nomRealisateur retourne le nom du realisateur.
nomRealisateur (Realisateur nom _) = nom
-- la fonction adresseRealisateur retourne l'adresse du realisateur.
adresseRealisateur (Realisateur  _ adresse) = adresse

mBudget (MaisonDeProd _ b _) = b

-- Autres instanciation de types
instance Ord Film where
                        compare x y
                            | titreFilm x == titreFilm y = EQ
                            | titreFilm x < titreFilm y = LT
                            | otherwise = GT
instance Ord Acteur where
                        compare x y
                            | nomActeur x == nomActeur y = EQ
                            | nomActeur x < nomActeur y = LT
                            | otherwise = GT
eqActeur (Acteur nom1 _ _ _ _ _) (Acteur nom2 _ _ _ _ _ ) = nom1 == nom2
eqFilm (Film titre1 _ _ _ _ _ _ _ ) (Film titre2 _ _ _ _ _ _ _ ) = titre1 == titre2
instance Eq Acteur where
                         (==)  = eqActeur
instance Eq Film where
                         (==)  = eqFilm

-- ***********************************************************************************************************--
-- *********************************** VOUS DEVEZ COMPLETEZ CETTE PARTIE *************************************--
-- ***********************************************************************************************************--

{-  3- la fonction prendrePremier prend un couple (n,l) et retourne les n premiers elements de la liste l.
    si l comporte moins de n Ã©lÃ©ments, on invoque l'exception PasAssezDelements. Elle pourrait vous Ãªtre utile Ã  plusieurs endroits.
    EntrÃ©es: : (n,l)
    Sortie: les n premiers Ã©lÃ©ments de l-}

prendrePremiers (n,xs)
	| n <= length xs = take n xs
	| otherwise = throw PasAssezDelements
	
{-  4- la fonction sommeSalaires fait la somme des revenus minimums demandÃ©s par les acteurs d'une liste . Elle pourrait vous Ãªtre utile Ã  plusieurs endroits.
    EntrÃ©e: Liste d'acteurs
    Sortie: somme des revenus minimums -}
sommeSalaires lacteurs = sum (map revenuMin lacteurs)

{- 5- la fonction produire(maison, film) retourne le couple formÃ©e 
        1) d'une MaisonDeProd de même nom que maison dont le budget a Ã©tÃ© diminuÃ© du coÃ»t du film
        2) d'un Film egal Ã  film sauf que la composante producteur est Ã©gale Ã  la maison de production ci-dessus .
   De plus:
        - Si le coût de film est supérieur strictement au budget de maison alors, l'exception BudgetInsuffisant est invoqué
        - Si la composante realisateur de film est PasDeRealisateur on invoque l'exception PasDeRealisateur
        - Si la composante producteur de film est autre chose que PasDeProducteur on invoque l'exception DejaProduit.
   Remarque: n'oubliez pas qu'une fois qu'une maison produit un film, ce film doit s'ajouter Ã  sa liste de films dÃ©jÃ  produits
   EntrÃ©e: Couple formÃ© d'une maison de production et d'un film
   Sortie: Couple formÃ© d'une maison de production et d'un film
   10pts-}

   --[mBudget m | m <- listeMaisons, mBudget m > 250000] -- get all maison de production avec buget plus grand que 250k
						 