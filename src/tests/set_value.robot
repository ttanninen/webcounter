*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter And Go To Starting Page

*** Test Cases ***
Setting value to 40 sets the counter to 40
   Fill Text  input[name="value"]  40
   Click  button >> text=aseta
   Get Text  body  *=  nappia painettu 40 kertaa