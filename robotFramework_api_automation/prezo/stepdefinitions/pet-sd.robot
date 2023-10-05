*** Settings ***
Resource    ../../prezo/configuration/configuration-dev.robot
Resource    ../../prezo/collections/login-collection.robot


Documentation       API Test using RESTfulBooker application
#Test Timeout        1 minute
Library             RequestsLibrary
Library             Collections
Library             JsonValidator
Library             Process
Library             OperatingSystem
#Suite Setup         Ping Server

***Keywords***

Post Login
  ${HEADERS}=         Create Dictionary
    ...                 Content-Type=${CONTENT_TYPE}
    ...                 User-Agent=RobotFramework
    Create Session      Obtain Token        ${BASE_URL}     verify=True
    ${response}=        POST On Session        Obtain Token        url=${LOGIN_PATH}     data={"username":"${USER_ADMI}","password":"${PASSWORD_ADMI}"}      headers=${HEADERS}
    Should Be Equal As Strings      ${response.status_code}     200
    #${json_example}=    OperatingSystem.Get File   ${CURDIR}${/}json_login.json
    ${json_example}=    OperatingSystem.Get File   ..${/}resources/JsonSchemas${/}json_login.json
    Element should exist    ${json_example}    .token
    #Element should exist            ${response.content}      .token
    ${TOKEN}=           Get From Dictionary     ${response.json()}      token
    Set Suite Variable      ${TOKEN}        ${TOKEN}