***Settings***
Library               RequestsLibrary
Library               Collections 
Library               JSONLibrary
Library               OperatingSystem

Resource    ../../prezo/configuration/configuration-dev.robot
Resource    ../../prezo/stepdefinitions/login-sd.robot

#Suite Setup      setup my_api session

*** Variables ***
      
***Test Cases***
Post Login PREZO
    [Tags]  Post
    Post Login