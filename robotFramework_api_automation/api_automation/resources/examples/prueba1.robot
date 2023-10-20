***Settings***
Library               RequestsLibrary
Library               Collections 
Library               JSONLibrary
Library               OperatingSystem

Resource    ../../prezo/configuration/configuration-dev.robot
Resource    ../../prezo/stepdefinitions/LOGIN_PATH-sd.robot

Suite Setup      setup my_api session

*** Variables ***
#${path}  /LOGIN_PATH
#${params}=    Create dictionary    USER_ADMI=${USER_ADMI}    PASSWORD_ADMI=${PASSWORD_ADMI_ADMI}
      
***Test Cases***
#post request Test
 #   Create Session    my_session    ${BASE_URL}${path} 
#	${response}=    POST On Session    my_session    my-endpoint    headers=${HEADERS}    params=${params}
#	Should be equal as strings    ${response.status_code}    200

GET On Session on my_api/my_endpoint should return a 200-ok
	setup my_api session
	set valid headers
	${response}=    send GET On Session
	api ${response} should be 200

GET On Session on my_api/my_endpoint with wrong headers should return a 400-bad request
	setup my_api session
	set invalid headers
	${response}=    send GET On Session
	api ${response} should be 400