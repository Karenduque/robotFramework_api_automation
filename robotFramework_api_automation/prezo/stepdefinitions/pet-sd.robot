*** Settings ***
Resource    ../../prezo/configuration/configuration-dev.robot
Resource    ../../prezo/collections/pet-collection.robot


Documentation       API Test using RESTfulBooker application
#Test Timeout        1 minute
Library             RequestsLibrary
Library             Collections
Library             JsonValidator
Library             Process
Library             OperatingSystem
#Suite Setup         Ping Server

***Keywords***

Add pet
  ${body}=   Get File  resources/body/pet/pet-add.json
  #Log  "body ${body}"  console=True
  ${HEADERS}=           Create Dictionary
    ...                 Content-Type=${CONTENT_TYPE}
    ...                 User-Agent=RobotFramework
    #...                 Authorization=Bearer ${TOKEN}
    Create Session      export       ${BASE_URL}${VERSION}     verify=True
    ${response}=        POST On Session        export        url=${ADD_PET_PATH}        data=${body}        headers=${HEADERS}
    Should Be Equal As Strings      ${response.status_code}     200
    #Log  "response_data ${response}"  console=True
    ${schema_file}=   Get File  resources/jsonschemas/pet/json-add-pet.json
    Element should exist  ${schema_file}  .id
    ${response_data}  Convert To String  ${response.content}
    ##Log  "response_data ${response_data}"  console=True
    Validate Json Schema  ${response_data}  ${schema_file}