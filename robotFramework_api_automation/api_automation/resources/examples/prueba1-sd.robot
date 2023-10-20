*** Settings ***
Documentation    Suite description    This suite will contain my keywords
Library          RequestsLibrary

*** Variables ***
${HOST}    https://my-host.com/api
${VALID_HEADERS}    Accept=application/json    Content-Type=application/json    charset=utf-8
${INVALID_HEADERS}    Accept=invalid    Content-Type=invalid    charset=invalid

*** keywords ***
setup my_api session
	Create Session    my_session    ${HOST}


#set proper headers
set valid headers
	${my_headers}=    Set suite variable    ${VALID_HEADERS}

set invalid headers
	${my_headers}=    Set suite variable    ${INVALID_HEADERS}

send GET On Session
	${response}=    GET On Session    my_session    my-endpoint    headers=${VALID_HEADERS}
	[Return]    ${response}

api ${received_response} should be ${expected_response}
	Should be equal as strings    ${received_response.status_code}    ${expected_response}