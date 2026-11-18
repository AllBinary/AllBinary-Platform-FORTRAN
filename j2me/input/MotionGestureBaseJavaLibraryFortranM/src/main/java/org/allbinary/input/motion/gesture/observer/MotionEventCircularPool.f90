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
module MotionEventCircularPool_m
  use JR_m
  use InputFactory_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use AllBinaryEventCircularPool_m
  use MotionEventFactory_m
  use MotionGestureEvent_m
  implicit none

  type, extends(JObject) :: MotionEventCircularPool
    integer(4) :: f_MIN = 0
    class(AllBinaryEventCircularPool), pointer :: f_eventPool => null()
  contains
    procedure :: jm_getInstance_1 => MotionEventCircularPool_jm_getInstance_1
  end type


contains

  function MotionEventCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionEventCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionEventCircularPool)
      jresult => object
    end select
  end function

  recursive function MotionEventCircularPool_jnew_1(j_id) result(this)
    integer(4), value :: j_id
    class(MotionEventCircularPool), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp1
    class(InputFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MotionEventCircularPool'
    jtemp1 => TouchMotionGestureFactory_jm_getInstance_0()
    this%f_MIN = jtemp1%f_LAST_MOTION%jm_getId_0()
    jtemp2 => InputFactory_jm_getInstance_0()
    this%f_eventPool => AllBinaryEventCircularPool_jnew_1((((jtemp2%f_MAX - 1)) - this%f_MIN))
        call this%f_eventPool%jm_initAllBinaryEventCircularPool_1(MotionEventFactory_jnew_2(this%f_eventPool, j_id))
  end function

  recursive function MotionEventCircularPool_jm_createPool_1(j_id) result(jresult)
    integer(4), value :: j_id
    class(MotionEventCircularPool), pointer :: jresult
        jresult => MotionEventCircularPool_jnew_1(j_id)
        return
  end function

  recursive function MotionEventCircularPool_jm_getInstance_1(this, j_motionGestureInput) result(jresult)
    class(MotionEventCircularPool), target :: this
    class(MotionGestureInput), target, optional :: j_motionGestureInput
    class(MotionGestureEvent), pointer :: jresult
        jresult => MotionGestureEvent_jcast(this%f_eventPool%jm_getInstance_1((j_motionGestureInput%jm_getId_0() - this%f_MIN)))
        return
  end function
end module MotionEventCircularPool_m

