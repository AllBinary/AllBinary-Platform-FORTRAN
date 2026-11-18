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
! package org.allbinary.input.motion.gesture.observer
module NullCompleteMotionGestureReceiver_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use CompleteMotionGestureListenerInterface_m
  implicit none

  type, extends(CompleteMotionGestureListenerInterface) :: NullCompleteMotionGestureReceiver
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_onMotionGestureCompleted_1 => NullCompleteMotionGestureReceiver_jm_onMotionGestureCompleted_1
  end type


contains

  function NullCompleteMotionGestureReceiver_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullCompleteMotionGestureReceiver), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullCompleteMotionGestureReceiver)
      jresult => object
    end select
  end function

  recursive function NullCompleteMotionGestureReceiver_jnew_0() result(this)
    class(NullCompleteMotionGestureReceiver), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NullCompleteMotionGestureReceiver'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3('Null Gesture Reciever', this, j_commonStrings%f_CONSTRUCTOR)
  end function

  recursive subroutine NullCompleteMotionGestureReceiver_jm_onMotionGestureCompleted_1(this, j_list)
    class(NullCompleteMotionGestureReceiver), target :: this
    class(BasicArrayList), target, optional :: j_list
    continue
  end subroutine
end module NullCompleteMotionGestureReceiver_m

