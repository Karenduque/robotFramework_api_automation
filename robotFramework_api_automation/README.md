# PREZO API TESTING SUITE
### ROBOTFRAMEWORK - PYTHON

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Built With

This following suite uses the following technologies and frameworks:
* [Python](https://www.python.org/downloads/)
* [Selenium](https://robotframework.org/SeleniumLibrary/)
* [Robot Framework](https://robotframework.org)
* [PIP](https://www.groovypost.com/howto/install-pip-on-a-mac/)

## Running the tests

### Run the Suite

To run the suite you need to execute: 
```
pip install robotframework o pip3 install robotframework   
pip3 install robotframework-jsonvalidator
pip3 install robotframework-jsonlibrary
pip3 install robotframework-requests


robot TC1.robot
Go to specs robot --outputdir ../../results TC1.robot

```

This will execute the tests and generate a html report in ```/PREZO_API_AUTOMATION/prezo/results/report.html`` folder.

### Generate RobotFramework reporter

After executing the test you can start a web server that serves the html report with:

```
robot TC1.robot
Go to specs robot --outputdir ../../results TC1.robot
```
