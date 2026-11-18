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
! package org.allbinary.game.displayable.canvas
module PopupMenuInputProcessor_m
  use JR_m
  use GameInputStrings_m
  use GameKeyEvent_m
  use GPoint_m
  use Rectangle_m
  use MyCanvas_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use MotionGestureEvent_m
  use RectangleCollisionUtil_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use BasicMenuInputProcessor_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(BasicMenuInputProcessor) :: PopupMenuInputProcessor
    class(RectangleCollisionUtil), pointer :: f_rectangleCollisionUtil => null()
    integer(4) :: f_CLICK_DELAY = 0
    class(TimeDelayHelper), pointer :: f_clickTimeHelper => null()
    class(Rectangle), pointer :: f_rectangle => null()
  contains
    procedure :: jm_init_1 => PopupMenuInputProcessor_jm_init_1
    procedure :: jm_processInput_1 => PopupMenuInputProcessor_jm_processInput_1
    procedure :: jm_processInputList_0 => PopupMenuInputProcessor_jm_processInputList_0
    procedure :: jm_processMotionInputs_0 => PopupMenuInputProcessor_jm_processMotionInputs_0
    procedure :: jm_processMotionInput_1 => PopupMenuInputProcessor_jm_processMotionInput_1
  end type


contains

  function PopupMenuInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PopupMenuInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PopupMenuInputProcessor)
      jresult => object
    end select
  end function

  recursive function PopupMenuInputProcessor_jnew_4(j_gameKeyEventList, j_playerInputId, j_gameCanvas, j_rectangle) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    integer(4), value :: j_playerInputId
    class(MyCanvas), target, optional :: j_gameCanvas
    class(Rectangle), target, optional :: j_rectangle
    class(PopupMenuInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'PopupMenuInputProcessor'
    this%f_rectangleCollisionUtil => RectangleCollisionUtil_jm_getInstance_0()
    this%f_CLICK_DELAY = 120
    this%f_clickTimeHelper => TimeDelayHelper_jnew_1(this%f_CLICK_DELAY)
    
        continue ! super()
        this%f_rectangle => j_rectangle
  end function

  recursive subroutine PopupMenuInputProcessor_jm_init_1(this, j_rectangle)
    class(PopupMenuInputProcessor), target :: this
    class(Rectangle), target, optional :: j_rectangle
        this%f_rectangle => j_rectangle
  end subroutine

  recursive function PopupMenuInputProcessor_jm_processInput_1(this, j_key) result(jresult)
    class(PopupMenuInputProcessor), target :: this
    integer(4), value :: j_key
    integer(4) :: jresult
    class(AllBinaryGameCanvas), pointer :: j_gameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_key == Canvas_jstatic_KEY_STAR())) then
            j_gameCanvas => AllBinaryGameCanvas_jcast(this%jm_getCanvas_0())
            call j_gameCanvas%jm_toggleMenu_0()
            jresult = 1
            return
        end if
        jresult = 0
        return
  end function

  recursive function PopupMenuInputProcessor_jm_processInputList_0(this) result(jresult)
    class(PopupMenuInputProcessor), target :: this
    integer(4) :: jresult
    integer(4) :: j_motionInputsIndex
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    integer(4) :: j_key
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    class(GameInputStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_motionInputsIndex = this%jm_processMotionInputs_0()
            j_list => this%jm_getGameKeyEventList_0()
            j_size = j_list%jm_size_0()
            j_key = 0
            continue
            j_index = 0
            do while ((j_index < j_size))
                j_gameKeyEvent => GameKeyEvent_jcast(j_list%f_objectArray((j_index) + 1)%v)
                if (associated(j_gameKeyEvent)) then
                    j_key = j_gameKeyEvent%jm_getKey_0()
                    if ((this%jm_processInput_1(j_key) == 1)) then
                        exit
                    end if
                end if
                j_index = j_index + 1
            end do
            call this%jm_clear_0()
            if (((j_size > 0) .or. (j_motionInputsIndex >= 0))) then
                jresult = 1
                return
            else
                jresult = (-1)
                return
            end if
  end function

  recursive function PopupMenuInputProcessor_jm_processMotionInputs_0(this) result(jresult)
    class(PopupMenuInputProcessor), target :: this
    integer(4) :: jresult
    integer(4) :: j_lastIndex
    class(MotionGestureEvent), pointer :: j_motionGestureEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_lastIndex = (this%f_motionGestureEventList%jm_size_0() - 1)
        if ((j_lastIndex >= 0)) then
            j_motionGestureEvent => MotionGestureEvent_jcast(this%f_motionGestureEventList%f_objectArray((j_lastIndex) + 1)%v)
            call this%jm_processMotionInput_1(j_motionGestureEvent)
        end if
        call this%f_motionGestureEventList%jm_clear_0()
        jresult = j_lastIndex
        return
  end function

  recursive subroutine PopupMenuInputProcessor_jm_processMotionInput_1(this, j_motionGestureEvent)
    class(PopupMenuInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(MotionGestureInput), pointer :: j_motionGestureInput
    class(GPoint), pointer :: j_point
    class(GPoint), pointer :: j_rectPoint
    class(AllBinaryGameCanvas), pointer :: j_gameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. present(j_motionGestureEvent))) then
            call this%f_logUtil%jm_putF_3('Exception: Bug', this, this%f_gameInputStrings%f_PROCESS_MOTION_INPUT)
            return
        end if
        j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
        j_motionGestureInput => j_motionGestureEvent%jm_getMotionGesture_0()
        if (JR_same(j_motionGestureInput, j_touchMotionGestureFactory%f_RELEASED)) then
            j_point => j_motionGestureEvent%jm_getCurrentPoint_0()
            j_rectPoint => this%f_rectangle%jm_getPoint_0()
            if (this%f_rectangleCollisionUtil%jm_isInside_6(j_rectPoint%jm_getX_0(), j_rectPoint%jm_getY_0(), (this%f_rectangle%jm_getMaxX_0() + 20), this%f_rectangle%jm_getMaxY_0(), j_point%jm_getX_0(), j_point%jm_getY_0())) then
                if (this%f_clickTimeHelper%jm_isTimeTNT_0()) then
                    j_gameCanvas => AllBinaryGameCanvas_jcast(this%jm_getCanvas_0())
                    call j_gameCanvas%jm_toggleMenu_0()
                end if
            end if
        end if
  end subroutine
end module PopupMenuInputProcessor_m

