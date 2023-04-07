*** Setting ***
Library    AppiumLibrary
Resource    common.robot

*** Variable ***
# 알림장 xpath
${NOTICE}    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView

*** Keyword ***
Move Into Notice Page
    [Documentation]    xpath를 사용해서 알림장으로 이동하는 키워드
    # 알림장 클릭
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/androidx.drawerlayout.widget.DrawerLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.viewpager.widget.ViewPager/android.widget.RelativeLayout/android.widget.FrameLayout[1]/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.GridView/android.widget.LinearLayout[1]/android.widget.FrameLayout/android.widget.ImageView

Click Notice Page Write Btn
    [Documentation]    알림장 페이지에 접속한 상태에서 글쓰기 버튼을 클릭하는 키워드
    # 버튼을 클릭
    Click UI Element By Id    id=com.vaultmicro.kidsnote:id/fltWrite

Choice Random Child
    [Documentation]    랜덤(1반의 로지) 아이를 선택함

    # 원아 선택 버튼
    Click UI Element By Id    id=com.vaultmicro.kidsnote:id/layoutKidsName
    # 2반
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.TextView[1]
    sleep    0.5
    # 임의 원아 선택
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ExpandableListView/android.widget.LinearLayout[4]/android.widget.TextView
    # 선택 버튼
    Click UI Element By Id    id=com.vaultmicro.kidsnote:id/btnOk

Write Notice Text
    [Documentation]    알림장에 문구를 작성하는 키워드
    [Arguments]    ${text}

    Click UI Element By Id    com.vaultmicro.kidsnote:id/edtContent
    Input Text    id=com.vaultmicro.kidsnote:id/edtContent    ${text}
    Press Keycode    4    # Send the backspace key event

Choice Picture By Get Now
    [Documentation]    사진을 촬영해서 그 사진을 선택합니다.

    # 사진 첨부 버튼을 클릭
    Click UI Element By Id   com.vaultmicro.kidsnote:id/squareImage
    # 사진 찍기 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblTakePicture
    # 사진 촬영
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout[3]/android.view.ViewGroup/android.view.ViewGroup/android.widget.RelativeLayout
    # 사진 촬영 후 확인 버튼 클릭
    Click UI Element By Id    com.sec.android.app.camera:id/okay

Choice Picture By One
    [Documentation]    앨범에서 사진 한 장을 선택합니다.

    # 사진 첨부 버튼을 클릭
    Click UI Element By Id   com.vaultmicro.kidsnote:id/squareImage
    # 사진 한장 올리기 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblPickOnePicture
    # 기존에 있는 사진 선택
    Click UI Element By Xpath    //android.widget.LinearLayout[@content-desc="1680356154145.jpg, 740KB, 4월 1일"]/android.widget.RelativeLayout/android.widget.FrameLayout[1]/android.widget.ImageView[1]

Choice Picture By Many
    [Documentation]    앨범에서 사진 여러 장을 선택합니다.

    # 사진 첨부 버튼을 클릭
    Click UI Element By Id   com.vaultmicro.kidsnote:id/squareImage
    # 사진 여러장 올리기 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblPickPicture
    # 갤러리 선택 (픽쳐스 앨범으로 선택함)
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[7]
    # 사진 1번 선택
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.GridView/android.widget.FrameLayout[1]/android.widget.ImageView
    # 사진 2번 선택
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.GridView/android.widget.FrameLayout[2]/android.widget.ImageView
    # 사진 3번 선택
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.GridView/android.widget.FrameLayout[6]/android.widget.ImageView
    # 확인
    Click UI Element By Id   com.vaultmicro.kidsnote:id/btnOk

Write School Report
    [Documentation]    생활 기록을 작성합니다.

    # 9-1. 생활 기록 화살표 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layoutBottomSheetTitle
    # 9-2. 기분 - 좋음
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-3. 건강 - 좋음
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-4. 체온 체크 - 정상
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-5. 식사 여부 - 정량
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-6. 수면시간 - 잠을 안잤어요
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-7. 배변 상태 - 보통
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[6]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView


    Swipe By Percent    50    80    50    40    500

    # 9-8. 이유식/간식 - 1.  추가하기
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    sleep    0.5
    # 9-8. 이유식/간식 - 2.  텍스트 입력
    Input Text    id=com.vaultmicro.kidsnote:id/view2    바나나 한 조각
    # 9-8. 이유식/간식 - 4.  확인 버튼 클릭
    Click UI Element By Id    android:id/button1
    # 9-8. 이유식/간식 - 5. 생성 확인 (나중에)


    # 9-9. 수유여부 - 1.  추가하기
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-9. 수유여부 - 2.  확인 버튼 클릭
    Click UI Element By Id    android:id/button1
    # 9-9. 수유 여부 - 3. 생성 확인 (나중에)

    # 9-10. 수면시간 - 1. 추가하기
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[3]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-10. 수면시간 - 2. 확인 버튼 클릭
    Click UI Element By Id    android:id/button1
    # 9-10. 수면시간 - 3. 생성 확인(나중에)

    Swipe By Percent    50    80    50    40    500

    # 9-11. 배변 상태 - 1. 추가하기
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[4]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView
    # 9-11. 배변 상태 - 2. 보통
    Click UI Element By Id    com.vaultmicro.kidsnote:id/radio1
    # 9-11. 배변 상태 - 3. 확인 버튼 클릭
    Click UI Element By Id    android:id/button1
    # 9-11. 생성 확인(나중에)

    Swipe By Percent    50    80    50    40    500

    # 9-12. 체온체크 - 1. 오전
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView
    # 9-12. 체온체크 - 2. 오전 (확인버튼 클릭) (생성 확인 나중에)
    Click UI Element By Id    android:id/button1
    # 9-12. 체온체크 - 1. 오후
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[5]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView
    # 9-12. 체온체크 - 2. 오후 (확인버튼 클릭) (생성 확인 나중에)
    Click UI Element By Id    android:id/button1

    Press Keycode    4    # Send the backspace key event

Add Training Material
    [Documentation]    교육 자료 등록을 진행합니다.

    # 교육 자료 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layoutAddProgram
    # 기존 있는 프로그램 선택 ([음악] 다담 클라베)
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblName
    # 상세 프로그램 교육자료 선택- [3월 4주차] 높고 낮은 소리로 표현해요
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.ListView/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.TextView
    # 상세 프로그램 교육자료 선택- 사용하기 버튼 클릭
    Click UI Element By Id    android:id/button1
    # 교육 프로그램 생성 확인 (나중에)

Create Notice
    [Documentation]    알림장을 지금 전송합니다. type = now(지금전송), temp(임시저장), reserve(예약전송)
    [Arguments]    ${type}

    Run Keyword If    '${type}'=='temp'    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.view.ViewGroup/android.widget.TextView

    Run Keyword If    '${type}'=='reserve'
    ...    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout[3]/android.view.ViewGroup/android.widget.TextView
    ...    Click UI Element By Id    com.vaultmicro.kidsnote:id/layout0
    ...    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm

    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm

Delete Complete Notice
    [Documentation]    전송 완료된 알림장을 삭제합니다.
    # 생성된 알림장 선택
    Click UI Element By Xpath    /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.RelativeLayout/android.widget.LinearLayout/android.widget.RelativeLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.RelativeLayout[1]/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout[1]/android.widget.LinearLayout
    # 제거 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_delete
    # 확인 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

Delete Temp Or Reserve Notice
    [Documentation]    임시 보관함 / 예약 발송함에 있는 알림장을 삭제합니다.
    ...                화면 위치가 임시 보관함 / 예약 발송함에 있는 것으로 가정하여 진행됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 선택 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm

    # 첫 번째 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/imgChk

    # 삭제 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btnDelete
    # 확인 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

    Press Keycode    4    # Send the backspace key event

Send Notice To Complete Notice From Temp Notice
    [Documentation]    임시 보관함에 있는 알림장을 발송합니다.
    ...                동작 완료 후 알림장 전송 완료 페이지로 이동됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 선택 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm

    # 첫 번째 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/imgChk

    # 보내기 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btnSend
    # 지금 전송 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblSendNow
    # 확인 버튼 클릭(아마도 나올듯)
    #Click UI Element By Id    com.vaultmicro.kidsnote:id/btn_confirm
    # 확인 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

Send Notice To Reserve Notice From Temp Notice
    [Documentation]    임시 보관함에 있는 알림장을 예약 발송함으로 보냅니다.
    ...                동작 완료 후 알림장 예약 발송함 페이지로 이동됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 선택 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm

    # 첫 번째 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/imgChk

    # 보내기 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btnSend
    # 예약 전송 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblScheduledSend
    # 시간 선택 - 오후
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layout1
    # 확인 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btn_confirm

Delete One Reserve Notice
    [Documentation]    예약 발송함에 있는 알림장을 삭제합니다.
    ...                화면 위치가 예약 발송함에 있는 것으로 가정하여 진행됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 특정 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layoutTitle
    # 삭제 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_delete
    # 정말로 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

Cancel One Reserve Notice
    [Documentation]    예약 발송함에 있는 알림장을 예약취소합니다.
    ...                화면 위치가 예약 발송함에 있는 것으로 가정하여 진행됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 선택 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/menu_confirm
    # 특정 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layoutTitle
    # 예약 취소 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btnStart
    # 정말로 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm

Send One Reserve Notice
    [Documentation]    예약 발송함에 있는 알림장을 발송합니다.
    ...                화면 위치가 예약 발송함에 있는 것으로 가정하여 진행됩니다.
    ...                맨 위의 알림장을 대상으로 진행됩니다.

    # 특정 글 선택
    Click UI Element By Id    com.vaultmicro.kidsnote:id/layoutTitle
    # 지금 전송 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/btnEnd
    # 정말로 버튼 클릭
    Click UI Element By Id    com.vaultmicro.kidsnote:id/lblConfirm



