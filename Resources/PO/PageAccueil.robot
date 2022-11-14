*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Charger La page Web
  Go To  https://www.amazon.fr/
  Wait Until Page Contains  Amazon


Rechercher le produit
  Clear Element Text   xpath=//*[@id="twotabsearchtextbox"]

  Input Text  xpath=//*[@id="twotabsearchtextbox"]  rj45 cable

  Wait Until Page Contains  rj45 cable