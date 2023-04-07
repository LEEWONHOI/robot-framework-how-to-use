*** Settings ***
Library    AppiumLibrary
Resource    ../resource/notice.robot
Resource    ../resource/common.robot
*** Variables ***

*** Keywords ***

*** Test Cases ***
Kidnote Notice CRUD (now)
    [Documentation]    키즈노트 테스트의 알림장 CRUD (지금 전송하기)
    ...
    ...                Setup 1. 키즈노트 앱 실행
    ...                Setup 2. 원장 계정으로 로그인
    ...                1. 알림장 메뉴 선택
    ...                2. 글쓰기 클릭
    ...                3. 원아 -> 임의 원아 선택하기
    ...                4. 알림장 내용 작성
    ...                5. 사진 찍어서 올리기
    ...                6. 사진 한 장 올리기
    ...                7. 사진 여러 장 올리기
    ...                8. 생활 기록 작성하기
    ...                9. 교육 자료 등록하기
    ...                10. 지금 전송하기
    ...
    [Tags]    test_won
    [Setup]    Run Keywords    Open Application No Reset
    ...        AND             Login    ${MASTER_USERNAME}    ${MASTER_PASSWORD}
    [Teardown]    Run Keywords    Close And Reopen App No Reset
    ...           AND             Logout

    Log    ===== 알림장 메뉴 선택 =====
    Move Into Notice Page

    Log    ===== 글쓰기 클릭 =====
    Click Notice Page Write Btn

    Log    ===== 원아 -> 임의 원아 선택하기 =====
    Choice Random Child

    Log    ===== 알림장 내용 작성 =====
    Write Notice Text    text=삐약이 건강해요.

    Log    스크롤 내리기
    Swipe By Percent    50    80    50    40    1000
    sleep    1

    Log    ===== 사진 찍어서 올리기 =====
    Choice Picture By Get Now

    Log    ===== 사진 한 장 올리기 =====
    Choice Picture By One

    Log    ===== 사진 여러 장 올리기 =====
    Choice Picture By Many

    Log    ===== 생활 기록 작성하기 =====
    Write School Report

    Log    ===== 교육 자료 등록하기 =====
    Add Training Material

    Log    ===== 지금 전송하기 (지금 전송하기 버튼 클릭 된 상태) =====
    Create Notice    now

    Log    ===== 저장내역 삭제 =====
    Delete Complete Notice


Kidnote Notice CRUD (temp)
    [Documentation]    키즈노트 테스트의 알림장 CRUD (임시 저장하기)
    ...
    ...                Setup 1. 키즈노트 앱 실행
    ...                Setup 2. 원장 계정으로 로그인
    ...                1. 알림장 메뉴 선택
    ...                2. 글쓰기 클릭
    ...                3. 원아 -> 임의 원아 선택하기
    ...                4. 알림장 내용 작성
    ...                위의 동작을 반복하여 4개의 임시 알림장 생성
    ...                5. 임시 보관함에 1개 삭제
    ...                6. 임시 보관함에 있는 1개 알림장 전송 -> 삭제
    ...                7. 임시 보관함 1개 알림장 -> 예약 전송 선택
    ...                8. 예약 발송함 알림장 1개 삭제
    ...                9. 임시 보관함 1개 알림장 -> 예약 전송 선택
    ...                10. 예약 발송함 알림장 1개 전송
    ...                11. 전송한 알림장 삭제
    ...
#    [Tags]    test_won
    [Setup]    Run Keywords    Open Application No Reset
    ...        AND             Login    ${MASTER_USERNAME}    ${MASTER_PASSWORD}
    [Teardown]    Run Keywords    Close And Reopen App No Reset
    ...           AND             Logout
    ...           AND             Close Application


    Log    ===== 알림장 메뉴 선택 =====
    Move Into Notice Page

    Log    ===== 4개의 알림장을 생성함 =====
    FOR    ${index}    IN RANGE    4

        Log    ===== 글쓰기 클릭 =====
        Click Notice Page Write Btn

        Log    ===== 원아 -> 임의 원아 선택하기 =====
        Choice Random Child

        Log    ===== 알림장 내용 작성 =====
        Write Notice Text    text=삐약이 건강해요.

        Log    ===== 지금 전송하기 =====
        Create Notice    temp

        Log    ===== 뒤로가기 =====
        Click UI Element By Xpath    //android.widget.ImageButton[@content-desc="위로 이동"]
        sleep    1
        Press Keycode    4    # Send the backspace key event
    END

    Log    ===== 임시 알림장 보관함으로 이동 =====
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menuOutbox

    Log    ===== 임시 전송함의 1개 알림장 삭제 =====
    Delete Temp Or Reserve Notice

    Log    ===== 임시 전송함의 1개 하나 전송 =====
    Send Notice To Complete Notice From Temp Notice

    Log    ===== 전송 완료된 알림장 하나 삭제 =====
    Delete Complete Notice

    Log    ===== 임시 전송함으로 이동 =====
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menuOutbox

    Log    ===== 임시 전송함의 1개 알림장 예약 발송함으로 전송 =====
    Send Notice To Reserve Notice From Temp Notice
    Log    ===== 예약 전송함의 알림장 삭제 =====
    Delete One Reserve Notice

    Log    ===== 임시 보관함으로 이동 =====
    Press Keycode    4    # Send the backspace key event
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menuOutbox
    Send Notice To Reserve Notice From Temp Notice

    Log    ===== 임시 전송함의 1개 알림장 예약 발송함으로 전송 =====
    Send One Reserve Notice

    Log    ===== 전송 완료된 알림장 하나 삭제 =====
    Delete Complete Notice

    Press Keycode    4    # Send the backspace key event
