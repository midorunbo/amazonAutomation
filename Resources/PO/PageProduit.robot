*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choisir produit interessant
  Click Element   xpath=//*[@id="sp-cc-accept"]
  Go To  ${Product_URL}
  Wait Until Page Contains  Ajouter au panier

Choisir Taille Cable
  Click Button  xpath=//*[@id="a-autoid-13-announce"]
  Wait Until Page Contains  Ajouter au panier

Ajouter produit au panier
  Click Element  xpath=//*[@id="add-to-cart-button"]
  Wait Until Page Contains  Ajouté au panier
