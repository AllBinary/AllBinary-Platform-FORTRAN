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
  use PreLogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: CompleteMotionGestureInputToGameMotionGestureInput
    class(CommonStrings), pointer :: f_commonStrings => null()
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
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
  end function

  recursive function CompleteMotionGestureInputToGameMotionGestureInput_jm_getInstance_0() result(jresult)
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: jresult
        jresult => CompleteMotionGestureInputToGameMotionGestureInput_jstatic_instance()
        return
  end function

  recursive subroutine CompleteMotionGestureInputToGameMotionGestureInput_jm_init_0(this)
    class(CompleteMotionGestureInputToGameMotionGestureInput), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call PreLogUtil_jm_put_3('No Touch Button = No Compound Motion Gestures', this, this%f_commonStrings%f_INIT)
  end subroutine
end module CompleteMotionGestureInputToGameMotionGestureInput_m

