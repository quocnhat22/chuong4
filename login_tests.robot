*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}             https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}         Chrome
${VALID USER}      Admin
${VALID PASS}      admin123
${INVALID USER}    wronguser
${INVALID PASS}    wrongpass

*** Test Cases ***
 Đăng nhập thành công
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='username']    10s
    Input Text    xpath=//input[@name='username']    ${VALID USER}
    Input Text    xpath=//input[@name='password']    ${VALID PASS}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    xpath=//h6[text()='Dashboard']    10s
    Page Should Contain Element    xpath=//h6[text()='Dashboard']
    Log     Đăng nhập thành công
    Execute JavaScript    alert(" Đăng nhập thành công!")
    Sleep    2s
    Close Browser

 Đăng nhập thất bại với tài khoản sai
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='username']    10s
    Input Text    xpath=//input[@name='username']    ${INVALID USER}
    Input Text    xpath=//input[@name='password']    ${INVALID PASS}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains    Invalid credentials    5s
    Page Should Contain    Invalid credentials
    Log     Đăng nhập thất bại như mong đợi
    Execute JavaScript    alert(" Đăng nhập thất bại!")
    Sleep    2s
    Close Browser

 Đăng xuất sau khi đăng nhập thành công
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//input[@name='username']    10s
    Input Text    xpath=//input[@name='username']    ${VALID USER}
    Input Text    xpath=//input[@name='password']    ${VALID PASS}
    Click Button    xpath=//button[@type='submit']
    Wait Until Page Contains Element    xpath=//h6[text()='Dashboard']    10s
    Click Element    xpath=//span[@class='oxd-userdropdown-tab']
    Wait Until Element Is Visible    xpath=//a[text()='Logout']    5s
    Click Element    xpath=//a[text()='Logout']
    Wait Until Page Contains Element    xpath=//button[@type='submit']    10s
    Page Should Contain Element    xpath=//button[@type='submit']
    Log     Đăng xuất thành công
    Execute JavaScript    alert(" Đăng xuất thành công!")
    Sleep    2s
    Close Browser
v