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
${LOGIN_PATH}                /login
#LOOP COUNTER           ---
${COUNTER}              ${1}