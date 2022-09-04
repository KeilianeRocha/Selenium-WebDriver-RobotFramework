*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}                       https://training-wheels-protocol.herokuapp.com

${check_thor}                id:thor
${check_iron}                css:input[value='iron-man']
${check_panter}              xpath://*[@id='checkboxes']/input[7]

*** Test Cases ***
Marcando opção com Id
    Open Browser                            ${url}                chrome
    Go To                                   ${url}/checkboxes
    Select checkbox                         ${check_thor}
    Checkbox Should Be Selected             ${check_thor}   
    Close Browser

Marcando opção com CSS Selector
    Open Browser                            ${url}                chrome
    Go To                                   ${url}/checkboxes
    Select checkbox                         ${check_iron} 
    Checkbox Should Be Selected             ${check_iron} 
    Close Browser

Marcando opção com Xpath
    [Tags]            ironman
    Open Browser                            ${url}                chrome
    Go To                                   ${url}/checkboxes
    Select checkbox                         ${check_panter}
    Checkbox Should Be Selected             ${check_panter}
    Sleep                                   15
    Close Browser













































    