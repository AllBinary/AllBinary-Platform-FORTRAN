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
! package org.allbinary.game.input
module CompleteMotionGestureInputEvent_m
  use JR_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use LogUtil_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use CommonStrings_m
  use CompleteMotionGestureInputInterface_m
  implicit none

  type, extends(AllBinaryEventObject) :: CompleteMotionGestureInputEvent
    class(LogUtil), pointer :: f_logUtil => null()
    character(len=:), allocatable :: f_name
    class(MotionGestureInput), pointer :: f_motionGestureInput => null()
  contains
    procedure :: jm_setName_1 => CompleteMotionGestureInputEvent_jm_setName_1
    procedure :: jm_getName_0 => CompleteMotionGestureInputEvent_jm_getName_0
    procedure :: jm_setMotionGestureInput_1 => CompleteMotionGestureInputEvent_jm_setMotionGestureInput_1
    procedure :: jm_getMotionGestureInput_0 => CompleteMotionGestureInputEvent_jm_getMotionGestureInput_0
  end type

  ! CompleteMotionGestureInputEvent used as a CompleteMotionGestureInputInterface
  type, extends(CompleteMotionGestureInputInterface) :: CompleteMotionGestureInputEvent_jas_CompleteMotionGestureInputInterface
    class(CompleteMotionGestureInputEvent), pointer :: jtarget => null()
  end type


contains

  function CompleteMotionGestureInputEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputEvent)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputEvent_jas_CompleteMotionGestureInputInterface_jnew(object) result(jresult)
    class(CompleteMotionGestureInputEvent), target :: object
    class(CompleteMotionGestureInputEvent_jas_CompleteMotionGestureInputInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CompleteMotionGestureInputEvent'
    jresult%jtarget => object
  end function

  recursive function CompleteMotionGestureInputEvent_jnew_2(j_name, j_motionGestureInput) result(this)
    character(len=*), intent(in) :: j_name
    class(MotionGestureInput), target, optional :: j_motionGestureInput
    class(CompleteMotionGestureInputEvent), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: jtemp1
    class(TouchMotionGestureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputEvent'
    this%f_name = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
    jtemp2 => TouchMotionGestureFactory_jm_getInstance_0()
    this%f_motionGestureInput => jtemp2%f_NO_MOTION
        continue ! super()
        call this%jm_setName_1(j_name)
        continue ! try
            call this%jm_setMotionGestureInput_1(j_motionGestureInput)
  end function

  recursive subroutine CompleteMotionGestureInputEvent_jm_setName_1(this, j_name)
    class(CompleteMotionGestureInputEvent), target :: this
    character(len=*), intent(in) :: j_name
        this%f_name = j_name
  end subroutine

  recursive function CompleteMotionGestureInputEvent_jm_getName_0(this) result(jresult)
    class(CompleteMotionGestureInputEvent), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine CompleteMotionGestureInputEvent_jm_setMotionGestureInput_1(this, j_motionGestureInput)
    class(CompleteMotionGestureInputEvent), target :: this
    class(MotionGestureInput), target, optional :: j_motionGestureInput
        this%f_motionGestureInput => j_motionGestureInput
  end subroutine

  recursive function CompleteMotionGestureInputEvent_jm_getMotionGestureInput_0(this) result(jresult)
    class(CompleteMotionGestureInputEvent), target :: this
    class(MotionGestureInput), pointer :: jresult
        jresult => this%f_motionGestureInput
        return
  end function
end module CompleteMotionGestureInputEvent_m

