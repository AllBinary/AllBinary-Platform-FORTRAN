!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
! 
! By agreeing to this license you and any business entity you represent are
! legally bound to the AllBinary Open License Version 1 legal agreement.
! 
! You may obtain the AllBinary Open License Version 1 legal agreement from
! AllBinary or the root directory of AllBinary's AllBinary Platform repository.
! 
! Created By: Travis Berthelot
!  
! Generated Code Do Not Modify
! package org.allbinary.input.motion.button
module TouchButtonRecognizer_m
  use JR_m
  use DownGameKeyEventHandler_m
  use GameKeyEvent_m
  use UpGameKeyEventHandler_m
  use GPoint_m
  use Rectangle_m
  use LogUtil_m
  use RectangleCollisionUtil_m
  use BasicArrayList_m
  use BasicTouchInputFactory_m
  use TouchButtonInput_m
  use CurrentlyPressedTouchButtonSingleton_m
  use ReleaseHelper_m
  use TouchScreenFactory_m
  use MultitouchReleaseHelper_m
  use TouchButtonFactory_m
  use TouchButton_m
  implicit none

  type, extends(JObject) :: TouchButtonRecognizer
    class(LogUtil), pointer :: f_logUtil => null()
    class(RectangleCollisionUtil), pointer :: f_rectangleCollisionUtil => null()
    class(UpGameKeyEventHandler), pointer :: f_upGameKeyEventHandler => null()
    class(DownGameKeyEventHandler), pointer :: f_downGameKeyEventHandler => null()
    class(TouchButtonInput), pointer :: f_lastPressedTouchButtonInput => null()
    class(CurrentlyPressedTouchButtonSingleton), pointer :: f_currentlyPressedTouchButtonSingleton => null()
    class(ReleaseHelper), pointer :: f_releaseHelper => null()
  contains
    procedure :: jm_processRelease_2 => TouchButtonRecognizer_jm_processRelease_2
    procedure :: jm_releaseTouchButtonInput_3 => TouchButtonRecognizer_jm_releaseTouchButtonInput_3
    procedure :: jm_pressTouchButtonInput_3 => TouchButtonRecognizer_jm_pressTouchButtonInput_3
  end type


contains

  function TouchButtonRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonRecognizer)
      jresult => object
    end select
  end function

  recursive function TouchButtonRecognizer_jnew_0() result(this)
    class(TouchButtonRecognizer), pointer :: this
    class(TouchScreenFactory), pointer :: jtemp2
    class(BasicTouchInputFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'TouchButtonRecognizer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_rectangleCollisionUtil => RectangleCollisionUtil_jm_getInstance_0()
    this%f_upGameKeyEventHandler => UpGameKeyEventHandler_jm_getInstance_0()
    this%f_downGameKeyEventHandler => DownGameKeyEventHandler_jm_getInstance_0()
    jtemp1 => BasicTouchInputFactory_jm_getInstance_0()
    this%f_lastPressedTouchButtonInput => jtemp1%f_NONE
    this%f_currentlyPressedTouchButtonSingleton => CurrentlyPressedTouchButtonSingleton_jm_getInstance_0()
    
        jtemp2 => TouchScreenFactory_jm_getInstance_0()
        if (jtemp2%jm_isMultiTouch_0()) then
            this%f_releaseHelper => MultitouchReleaseHelper_jnew_1(this)
        else
            this%f_releaseHelper => ReleaseHelper_jnew_1(this)
        end if
  end function

  recursive subroutine TouchButtonRecognizer_jm_processRelease_2(this, j_touchButtonInput, j_deviceId)
    class(TouchButtonRecognizer), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    integer(4), value :: j_deviceId
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    class(UpGameKeyEventHandlerBase), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_releaseHelper%jm_release_2(j_touchButtonInput, j_deviceId)
        j_gameKeyEvent => j_touchButtonInput%jm_getGameKeyEvent_0()
        call this%f_upGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
        jtemp3 => this%f_upGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
        call jtemp3%jm_fireEvent_1(j_gameKeyEvent)
        jdiscardBoolean = this%f_currentlyPressedTouchButtonSingleton%jm_remove_1(j_touchButtonInput)
  end subroutine

  recursive function TouchButtonRecognizer_jm_releaseTouchButtonInput_3(this, j_x, j_y, j_deviceId) result(jresult)
    class(TouchButtonRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    logical :: jresult
    class(TouchButtonInput), pointer :: j_touchButtonInput
    class(BasicArrayList), pointer :: j_list
    class(Rectangle), pointer :: j_rectangle
    class(GPoint), pointer :: j_point
    class(TouchButton), pointer :: j_touchButton
    integer(4) :: j_index
    class(TouchButtonFactory), pointer :: jtemp4
    class(BasicTouchInputFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_touchButtonInput => this%f_lastPressedTouchButtonInput
        if (this%f_currentlyPressedTouchButtonSingleton%jm_contains_1(j_touchButtonInput)) then
            jtemp5 => BasicTouchInputFactory_jm_getInstance_0()
            this%f_lastPressedTouchButtonInput => jtemp5%f_NONE
            call this%jm_processRelease_2(j_touchButtonInput, j_deviceId)
            jresult = .true.
            return
        else
            jtemp4 => TouchButtonFactory_jm_getInstance_0()
            j_list => jtemp4%jm_getList_0()
            continue
            continue
            continue
            j_index = (j_list%jm_size_0() - 1)
            do while ((j_index >= 0))
                j_touchButton => TouchButton_jcast(j_list%f_objectArray((j_index) + 1)%v)
                j_rectangle => j_touchButton%jm_getRectangle_0()
                j_point => j_rectangle%jm_getPoint_0()
                if (this%f_rectangleCollisionUtil%jm_isInside_6(j_point%jm_getX_0(), j_point%jm_getY_0(), j_rectangle%jm_getMaxX_0(), j_rectangle%jm_getMaxY_0(), j_x, j_y)) then
                    j_touchButtonInput => j_touchButton%jm_getTouchButtonInput_0()
                    call this%jm_processRelease_2(j_touchButtonInput, j_deviceId)
                    jresult = .true.
                    return
                end if
                j_index = j_index - 1
            end do
        end if
        jresult = .false.
        return
  end function

  recursive function TouchButtonRecognizer_jm_pressTouchButtonInput_3(this, j_x, j_y, j_deviceId) result(jresult)
    class(TouchButtonRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    logical :: jresult
    class(BasicArrayList), pointer :: j_list
    class(Rectangle), pointer :: j_rectangle
    class(GPoint), pointer :: j_point
    class(TouchButton), pointer :: j_touchButton
    class(TouchButtonInput), pointer :: j_touchButtonInput
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    class(TouchButtonFactory), pointer :: jtemp6
    class(DownGameKeyEventHandlerBase), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => TouchButtonFactory_jm_getInstance_0()
        j_list => jtemp6%jm_getList_0()
        continue
        continue
        continue
        continue
        continue
        j_index = (j_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_touchButton => TouchButton_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_rectangle => j_touchButton%jm_getRectangle_0()
            j_point => j_rectangle%jm_getPoint_0()
            if (this%f_rectangleCollisionUtil%jm_isInside_6(j_point%jm_getX_0(), j_point%jm_getY_0(), j_rectangle%jm_getMaxX_0(), j_rectangle%jm_getMaxY_0(), j_x, j_y)) then
                j_touchButtonInput => j_touchButton%jm_getTouchButtonInput_0()
                if ((.not. this%f_currentlyPressedTouchButtonSingleton%jm_contains_1(j_touchButtonInput))) then
                    call this%f_releaseHelper%jm_release_2(j_touchButtonInput, j_deviceId)
                    this%f_lastPressedTouchButtonInput => j_touchButtonInput
                    call this%f_currentlyPressedTouchButtonSingleton%jm_add_1(j_touchButtonInput)
                    j_gameKeyEvent => j_touchButtonInput%jm_getGameKeyEvent_0()
                    call this%f_downGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                    jtemp7 => this%f_downGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                    call jtemp7%jm_fireEvent_1(j_gameKeyEvent)
                end if
                jresult = .true.
                return
            end if
            j_index = j_index - 1
        end do
        jresult = .false.
        return
  end function
end module TouchButtonRecognizer_m

