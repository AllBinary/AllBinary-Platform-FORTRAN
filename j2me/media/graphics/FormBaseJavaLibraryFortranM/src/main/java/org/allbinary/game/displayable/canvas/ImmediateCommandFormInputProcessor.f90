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
module ImmediateCommandFormInputProcessor_m
  use JR_m
  use GameKeyEvent_m
  use ScrollSelectionForm_m
  use MotionGestureEvent_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use CommandFormInputProcessor_m
  use GameCommandCanvas_m
  implicit none

  type, extends(CommandFormInputProcessor) :: ImmediateCommandFormInputProcessor
    class(TimeDelayHelper), pointer :: f_timeHelper => null()
    class(GameCommandCanvas), pointer :: f_gameCommandCanvas => null()
  contains
    procedure :: jm_onPressGameKeyEvent_1 => ImmediateCommandFormInputProcessor_jm_onPressGameKeyEvent_1
    procedure :: jm_onDownGameKeyEvent_1 => ImmediateCommandFormInputProcessor_jm_onDownGameKeyEvent_1
    procedure :: jm_onUpGameKeyEvent_1 => ImmediateCommandFormInputProcessor_jm_onUpGameKeyEvent_1
    procedure :: jm_onMotionGestureEvent_1 => ImmediateCommandFormInputProcessor_jm_onMotionGestureEvent_1
  end type


contains

  function ImmediateCommandFormInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImmediateCommandFormInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImmediateCommandFormInputProcessor)
      jresult => object
    end select
  end function

  recursive function ImmediateCommandFormInputProcessor_jnew_4(j_gameKeyEventList, j_playerInputId, j_gameCommandCanvas, j_form) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    integer(4), value :: j_playerInputId
    class(GameCommandCanvas), target, optional :: j_gameCommandCanvas
    class(ScrollSelectionForm), target, optional :: j_form
    class(ImmediateCommandFormInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'ImmediateCommandFormInputProcessor'
    this%f_timeHelper => TimeDelayHelper_jnew_1(25)
    
        continue ! super()
        this%f_gameCommandCanvas => j_gameCommandCanvas
  end function

  recursive subroutine ImmediateCommandFormInputProcessor_jm_onPressGameKeyEvent_1(this, j_gameKeyEvent)
    class(ImmediateCommandFormInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%CommandFormInputProcessor%jm_onPressGameKeyEvent_1(j_gameKeyEvent)
            if (this%f_timeHelper%jm_isTimeTNT_0()) then
                call this%jm_processInputList_0()
                call this%f_gameCommandCanvas%f_repaintBehavior%jm_onChangeRepaint_1(this%jm_getCanvas_0())
            end if
  end subroutine

  recursive subroutine ImmediateCommandFormInputProcessor_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(ImmediateCommandFormInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%CommandFormInputProcessor%jm_onDownGameKeyEvent_1(j_gameKeyEvent)
            if (this%f_timeHelper%jm_isTimeTNT_0()) then
                call this%jm_processInputList_0()
                call this%f_gameCommandCanvas%f_repaintBehavior%jm_onChangeRepaint_1(this%jm_getCanvas_0())
            end if
  end subroutine

  recursive subroutine ImmediateCommandFormInputProcessor_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(ImmediateCommandFormInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%CommandFormInputProcessor%jm_onUpGameKeyEvent_1(j_gameKeyEvent)
            if (this%f_timeHelper%jm_isTimeTNT_0()) then
                call this%jm_processInputList_0()
                call this%f_gameCommandCanvas%f_repaintBehavior%jm_onChangeRepaint_1(this%jm_getCanvas_0())
            end if
  end subroutine

  recursive subroutine ImmediateCommandFormInputProcessor_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(ImmediateCommandFormInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%CommandFormInputProcessor%jm_onMotionGestureEvent_1(j_motionGestureEvent)
            if (this%f_timeHelper%jm_isTimeTNT_0()) then
                call this%jm_processInputList_0()
                call this%f_gameCommandCanvas%f_repaintBehavior%jm_onChangeRepaint_1(this%jm_getCanvas_0())
            end if
  end subroutine
end module ImmediateCommandFormInputProcessor_m

