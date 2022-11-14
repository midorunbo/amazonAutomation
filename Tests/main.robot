*** Settings ***
Resource  ../Resources/common.robot
Library  SeleniumLibrary
Resource  ../Resources/PO/PageAccueil.robot
Resource  ../Resources/PO/PageProduit.robot
Resource  ../Resources/PO/panier.robot
Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test
*** Test Cases ***
Voir Produits Disponible
  PageAccueil.Charger La page Web
  PageAccueil.Rechercher le produit

Choisir son produit
  PageProduit.Choisir produit interessant
  PageProduit.Ajouter produit au panier

Procceder au paiement
  panier.Inspecter panier
  panier.Passer la commande