*** Settings ***
Documentation       API Test using RESTfulBooker application
#Test Timeout        1 minute
Library             RequestsLibrary
Library             Collections
Library             JsonValidator
Library             Process
Library             OperatingSystem
#Suite Setup         Ping Server


*** Variables ***
#ENDPOINTS              ---
${UPLOAD_IMAGE_PATH}    /pet/${ID_PET}/uploadImage
#LOOP COUNTER           ---
${COUNTER}              ${1}
${ID_PET}
${ADD_PET_PATH}    /pet
