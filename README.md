# AutomationPractice
A repository to keep some good practices for automation using Robot Framework

<b>Setting the environment</b>

First create a virtual environment for your project. You can look for the steps here:<br>
https://docs.python-guide.org/dev/virtualenvs/

After that, activate your virtual environment and install the requirements from the requirements file, using the command:
```
pip install -r requirements.txt
```

<b>IMPORTANT:</b> To be able to run properly, it is necessary to download and install *chromedriver* in your machine.
You can find it here: https://chromedriver.chromium.org/downloads

In order to check the compatibility between *chromedriver* and your Chrome browser, type the following in the address bar: <b>chrome://version/</b> This will display the browser version.


To run this project, just use the normal robot framework command from a terminal:
<b>robot file.robot</b>

To run one test only and put the reports in the correct folder, use this command as example:

```
robot -t "Verify if user can logout from the system with a created account" -d reports scenarios/Login.robot
```

Note: Start from the root directory and just change the test case name to run the other scenarions.

<b>IMPORTANT:</b> The user personal information is on *creds.json* file. If you get some error trying to create a user with an already in use email, just modify the number that follow the email, like this:

*princessdiana3@avengers.com* to *princessdiana4@avengers.com*

##Footnotes

This project was build to run in Chrome browser and Windows Operational System.