*** Setting ***
Library    AppiumLibrary
Library    String

*** Variable ***
# Open Appicaion
${APP_PACKAGE}    com.vaultmicro.kidsnote
${APP_ACTIVITY}    com.vaultmicro.kidsnote.presentation.entry.EntryActivity
${PLATFORM_NAME}    Android
${PLATFORM_VERSION}    12
${DEVICE_NAME}    Galaxy Note10+
${UDID}    예시

# 로그인
${ID_INPUT}    com.vaultmicro.kidsnote:id/edtId
${PASSWORD_INPUT}    com.vaultmicro.kidsnote:id/edtPwd
${MASTER_USERNAME}    예시
${MASTER_PASSWORD}    예시

# 로그아웃

*** Keyword ***
Open Application No Reset
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    udid=${UDID}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    noReset=true

Close And Reopen App No Reset
    [Documentation]    앱을 종료 후 재시작합니다. 만약 재시작 시 배너가 있다면 클릭합니다.
    [Arguments]    ${id}=    ${xpath}=

    Close Application
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    udid=${UDID}    appPackage=${APP_PACKAGE}    appActivity=${APP_ACTIVITY}    noReset=true

    Run Keyword If    len('${id}') > 0    Click UI Element By Id    ${id}
    Run Keyword If    len('${xpath}') > 0    Click UI Element By Xpath    ${xpath}

Login
    [Arguments]    ${username}    ${password}
    Wait Until Page Contains Element    ${ID_INPUT}
    Input Text    id=${ID_INPUT}    ${username}
    Input Text    id=${PASSWORD_INPUT}    ${password}
    Click Element    id=com.vaultmicro.kidsnote:id/btnLogin

Logout
    # 기본 홈 화면으로 가는 동작 필요
    Click UI Element By Xpath     //android.widget.ImageButton[@content-desc="위로 이동"]
    Click UI Element By Xpath     /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[4]/android.widget.GridView/android.widget.FrameLayout[6]/android.widget.LinearLayout/android.widget.TextView
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

Click Element with Retry
    [Arguments]    ${type}    ${locate}    ${retries}=5    ${wait_time}=1s

    FOR    ${index}    IN RANGE    0    ${retries}
        ${status}=    Run Keyword And Return Status    Click Element    ${locate}
        Exit For Loop If    ${status}
        Sleep    ${wait_time}
    END
    Fail    Click Element failed after ${retries} attempts

Handle Popups
    [Arguments]    ${id}    ${interval}=10
    FOR    ${index}    IN    RANGE    1    ${interval}
        ${popup_exists}=    Run Keyword And Return Status    Wait Until Page Contains Element    id=${id}
        Exit For Loop If    ${popup_exists} == ${False}
        Click Element    id=${id}
        Sleep    1s
    END

Click UI Element By Id
    [Arguments]    ${id}    ${timeout}=5    ${interval}=1

    sleep    0.5
    Wait Until Element Is Visible    id=${id}    ${timeout}    ${interval}
    Click Element    id=${id}

Click UI Element By Xpath
    [Arguments]    ${xpath}    ${timeout}=5    ${interval}=1

    sleep    0.5
    Wait Until Element Is Visible    xpath=${xpath}    ${timeout}    ${interval}
    Click Element    xpath=${xpath}
