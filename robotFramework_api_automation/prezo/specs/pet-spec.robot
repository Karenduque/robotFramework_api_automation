***Settings***
Library               RequestsLibrary
Library               Collections 
Library               JSONLibrary
Library               OperatingSystem

Resource    ../../prezo/configuration/configuration-dev.robot
Resource    ../../prezo/stepdefinitions/pet-sd.robot

#Suite Setup      setup my_api session

*** Variables ***
      
***Test Cases***
Post Add pet
    [Tags]  pet
    Add pet