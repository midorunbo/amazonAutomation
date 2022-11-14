*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot
*** Keywords ***
Inspecter panier
  Click Link  xpath=//*[@id="nav-cart"]
  Wait Until Page Contains  Votre panier

Passer la commande
  Click Element  xpath=//*[@id="sc-buy-box-ptc-button"]/span/input
  Wait Until Page Contains  S'identifier