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
! package org.allbinary.input
module TouchJ2ME_m
  use JR_m
  use AllMotionRecognizer_m
  use BasicMotionGesturesHandler_m
  use GameMotionGestureListener_m
  use MotionGestureReceiveInterfaceFactory_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: TouchJ2ME
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_DEVICE_ID = 0
    class(AllMotionRecognizer), pointer :: f_motionRecognizer => null()
  contains
    procedure :: jm_pointerDragged_2 => TouchJ2ME_jm_pointerDragged_2
    procedure :: jm_pointerPressed_2 => TouchJ2ME_jm_pointerPressed_2
    procedure :: jm_pointerReleased_2 => TouchJ2ME_jm_pointerReleased_2
  end type


contains

  function TouchJ2ME_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchJ2ME), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchJ2ME)
      jresult => object
    end select
  end function

  recursive function TouchJ2ME_jnew_0() result(this)
    class(TouchJ2ME), pointer :: this
    class(BasicMotionGesturesHandler), pointer :: j_motionGesturesHandler
    class(MotionGestureRecognizer), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TouchJ2ME'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_DEVICE_ID = 0
    this%f_motionRecognizer => AllMotionRecognizer_jnew_0()
        jtemp1 => this%f_motionRecognizer%jm_getMotionGestureRecognizer_0()
        j_motionGesturesHandler => jtemp1%jm_getMotionGesturesHandler_0()
        call j_motionGesturesHandler%jm_addListenerInterface_1(GameMotionGestureListener_jnew_1(MotionGestureReceiveInterfaceFactory_jm_getInstance_0()))
  end function

  recursive subroutine TouchJ2ME_jm_pointerDragged_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_motionRecognizer%jm_processDraggedMotionEvent_4(j_x, j_y, this%f_DEVICE_ID, 0)
  end subroutine

  recursive subroutine TouchJ2ME_jm_pointerPressed_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_motionRecognizer%jm_processStartMotionEvent_4(j_x, j_y, this%f_DEVICE_ID, 0)
  end subroutine

  recursive subroutine TouchJ2ME_jm_pointerReleased_2(this, j_x, j_y)
    class(TouchJ2ME), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_motionRecognizer%jm_processEndMotionEvent_4(j_x, j_y, this%f_DEVICE_ID, 0)
  end subroutine
end module TouchJ2ME_m

