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
module BasicMenuInputProcessor_m
  use JR_m
  use NullCanvas_m
  use PlayerGameInput_m
  use MyCanvas_m
  use BaseMotionGestureEventListener_m
  use MotionGestureEvent_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(PlayerGameInput) :: BasicMenuInputProcessor
    class(BasicArrayList), pointer :: f_motionGestureEventList => null()
    class(Canvas), pointer :: f_canvas => null()
  contains
    procedure :: jm_onMotionGestureEvent_1 => BasicMenuInputProcessor_jm_onMotionGestureEvent_1
    procedure :: jm_onScrolledMotionGestureEvent_1 => BasicMenuInputProcessor_jm_onScrolledMotionGestureEvent_1
    procedure :: jm_setCanvas_1 => BasicMenuInputProcessor_jm_setCanvas_1
    procedure :: jm_getCanvas_0 => BasicMenuInputProcessor_jm_getCanvas_0
    procedure :: jm_processInputList_0 => BasicMenuInputProcessor_jm_processInputList_0
  end type

  ! BasicMenuInputProcessor used as a BaseMotionGestureEventListener
  type, extends(BaseMotionGestureEventListener) :: BasicMenuInputProcessor_jas_BaseMotionGestureEventListener
    class(BasicMenuInputProcessor), pointer :: jtarget => null()
  contains
    procedure :: jm_onMotionGestureEvent_1 => BasicMenuInputProcessor_jas_BaseMotionGestureEventListener_jm_onMotionGestureEvent_1
    procedure :: jm_onScrolledMotionGestureEvent_1 => BasicMenuInputProcessor_jas_BaseMotionGestureEventListener_jm_onScrolledMotionGestureEvent_1
  end type


contains

  function BasicMenuInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicMenuInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicMenuInputProcessor)
      jresult => object
    end select
  end function

  function BasicMenuInputProcessor_jas_BaseMotionGestureEventListener_jnew(object) result(jresult)
    class(BasicMenuInputProcessor), target :: object
    class(BasicMenuInputProcessor_jas_BaseMotionGestureEventListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicMenuInputProcessor'
    jresult%jtarget => object
  end function

  recursive subroutine BasicMenuInputProcessor_jas_BaseMotionGestureEventListener_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BasicMenuInputProcessor_jas_BaseMotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    call this%jtarget%jm_onMotionGestureEvent_1(j_motionGestureEvent)
  end subroutine

  recursive subroutine BasicMenuInputProcessor_jas_BaseMotionGestureEventListener_jm_onScrolledMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BasicMenuInputProcessor_jas_BaseMotionGestureEventListener), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    call this%jtarget%jm_onScrolledMotionGestureEvent_1(j_motionGestureEvent)
  end subroutine

  recursive function BasicMenuInputProcessor_jnew_3(j_gameKeyEventList, j_playerInputId, j_gameCanvas) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    integer(4), value :: j_playerInputId
    class(Canvas), target, optional :: j_gameCanvas
    class(BasicMenuInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'BasicMenuInputProcessor'
    this%f_motionGestureEventList => BasicArrayListD_jnew_0()
    this%f_canvas => NullCanvas_jstatic_NULL_CANVAS()
        continue ! super()
        this%f_canvas => j_gameCanvas
  end function

  recursive subroutine BasicMenuInputProcessor_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BasicMenuInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_motionGestureEventList%jm_add_1(j_motionGestureEvent)
  end subroutine

  recursive subroutine BasicMenuInputProcessor_jm_onScrolledMotionGestureEvent_1(this, j_motionGestureEvent)
    class(BasicMenuInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    continue
  end subroutine

  recursive subroutine BasicMenuInputProcessor_jm_setCanvas_1(this, j_canvas)
    class(BasicMenuInputProcessor), target :: this
    class(MyCanvas), target, optional :: j_canvas
        this%f_canvas => j_canvas
  end subroutine

  recursive function BasicMenuInputProcessor_jm_getCanvas_0(this) result(jresult)
    class(BasicMenuInputProcessor), target :: this
    class(MyCanvas), pointer :: jresult
        jresult => MyCanvas_jcast(this%f_canvas)
        return
  end function

  recursive function BasicMenuInputProcessor_jm_processInputList_0(this) result(jresult)
    class(BasicMenuInputProcessor), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module BasicMenuInputProcessor_m

