*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Get Title  ==  Laskuri
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Click  button >> text=Nollaa
    Get Text  body  *=  nappia painettu 0 kertaa
