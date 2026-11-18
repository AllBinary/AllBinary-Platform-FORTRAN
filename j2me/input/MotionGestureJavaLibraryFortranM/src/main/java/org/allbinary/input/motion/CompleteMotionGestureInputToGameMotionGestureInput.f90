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
! package org.allbinary.input.motion
module CompleteMotionGestureInputToGameMotionGestureInput_m
  use JR_m
  use TouchMotionGestureFactory_m
  use MotionGestureConfiguration_m
  use MotionGestureConfigurationFactory_m
  use DiagonalDownLeftTouchInputToGameKeyEventAction_m
  use DiagonalDownRightTouchInputToGameKeyEventAction_m
  use DiagonalUpLeftTouchInputToGameKeyEventAction_m
  use DiagonalUpRightTouchInputToGameKeyEventAction_m
  use DownTouchInputToGameKeyEventAction_m
  use LeftTouchInputToGameKeyEventAction_m
  use ReleaseTouchInputToGameKeyEventAction_m
  use RightTouchInputToGameKeyEventAction_m
  use UpTouchInputToGameKeyEventAction_m
  use LogUtil_m
  use PreLogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: CompleteMotionGestureInputToGameMotionGestureInput
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_0 => CompleteMotionGestureInputToGameMotionGestureInput_jm_init_0
  end type

  class(CompleteMotionGestureInputToGameMotionGestureInput), pointer, save :: CompleteMotionGestureInputToGameMotionGestureInput_jcell_instance => null()
  logical, save :: CompleteMotionGestureInputToGameMotionGestureInput_jset_instance = .false.

contains

  function CompleteMotionGestureInputToGameMotionGestureInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputToGameMotionGestureInput)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputToGameMotionGestureInput_jstatic_instance() result(jresult)
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: jresult
    if (.not. CompleteMotionGestureInputToGameMotionGestureInput_jset_instance) then
      CompleteMotionGestureInputToGameMotionGestureInput_jset_instance = .true.
      CompleteMotionGestureInputToGameMotionGestureInput_jcell_instance => CompleteMotionGestureInputToGameMotionGestureInput_jnew_0()
    end if
    jresult => CompleteMotionGestureInputToGameMotionGestureInput_jcell_instance
  end function

  subroutine CompleteMotionGestureInputToGameMotionGestureInput_jsetstatic_instance(jvalue)
    class(CompleteMotionGestureInputToGameMotionGestureInput), target, optional :: jvalue
    CompleteMotionGestureInputToGameMotionGestureInput_jset_instance = .true.
    if (present(jvalue)) then
      CompleteMotionGestureInputToGameMotionGestureInput_jcell_instance => jvalue
    else
      CompleteMotionGestureInputToGameMotionGestureInput_jcell_instance => null()
    end if
  end subroutine

  function CompleteMotionGestureInputToGameMotionGestureInput_jnew_0() result(this)
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputToGameMotionGestureInput'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function CompleteMotionGestureInputToGameMotionGestureInput_jm_getInstance_0() result(jresult)
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: jresult
        jresult => CompleteMotionGestureInputToGameMotionGestureInput_jstatic_instance()
        return
  end function

  recursive subroutine CompleteMotionGestureInputToGameMotionGestureInput_jm_init_0(this)
    class(CompleteMotionGestureInputToGameMotionGestureInput), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(MotionGestureConfiguration), pointer :: j_motionGestureConfiguration
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! try
            call PreLogUtil_jm_put_3('Compound Motion Gestures', this, j_commonStrings%f_INIT)
            j_motionGestureConfiguration => MotionGestureConfigurationFactory_jm_getInstance_0()
            j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_DIAGONAL_DOWN_LEFT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, DiagonalDownLeftTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_DIAGONAL_DOWN_RIGHT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, DiagonalDownRightTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_DIAGONAL_UP_LEFT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, DiagonalUpLeftTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_DIAGONAL_UP_RIGHT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, DiagonalUpRightTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_LEFT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, LeftTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_RIGHT)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, RightTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_DOWN)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, DownTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_UP)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, UpTouchInputToGameKeyEventAction_jm_getInstance_0())
            j_list => BasicArrayListD_jnew_0()
            jdiscardBoolean = j_list%jm_add_1(j_touchMotionGestureFactory%f_RELEASED)
            call j_motionGestureConfiguration%jm_addMotionGestureAction_2(j_list, ReleaseTouchInputToGameKeyEventAction_jm_getInstance_0())
  end subroutine
end module CompleteMotionGestureInputToGameMotionGestureInput_m

