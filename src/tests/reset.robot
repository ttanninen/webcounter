*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Reset Counter And Go To Starting Page

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
   Click  button >> text=Paina
   Click  button >> text=Nollaa
   Get Text  body  *=  nappia painettu 0 kertaa