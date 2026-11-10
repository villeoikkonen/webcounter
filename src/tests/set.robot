*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
At start the counter is zero and when value is set to 10 and button pressed the counter is 10
    Go To  ${HOME_URL}
    Click  button >> text=Nollaa
    Get Title  ==  Laskuri
    Fill Text  input[name="value"]  10
    Click  button >> text=aseta
    Get Text  body  *=  nappia painettu 10 kertaa
