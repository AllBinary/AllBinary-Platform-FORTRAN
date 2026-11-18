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
module MotionGestureReceiveInterfaceFactory_m
  use JR_m
  use MotionGestureConfiguration_m
  use MotionGestureConfigurationFactory_m
  use ResolveCompleteMotionGestureListener_m
  use NullCompleteMotionGestureReceiver_m
  use CompleteMotionGestureListenerInterface_m
  implicit none

  type, extends(JObject) :: MotionGestureReceiveInterfaceFactory
  end type


contains

  function MotionGestureReceiveInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureReceiveInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureReceiveInterfaceFactory)
      jresult => object
    end select
  end function

  function MotionGestureReceiveInterfaceFactory_jnew_0() result(this)
    class(MotionGestureReceiveInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'MotionGestureReceiveInterfaceFactory'
  end function

  recursive function MotionGestureReceiveInterfaceFactory_jm_getInstance_0() result(jresult)
    class(CompleteMotionGestureListenerInterface), pointer :: jresult
    class(MotionGestureConfiguration), pointer :: j_configuration
        j_configuration => MotionGestureConfigurationFactory_jm_getInstance_0()
        if ((.not. j_configuration%jm_isExecutingActionsAllowed_0())) then
            jresult => NullCompleteMotionGestureReceiver_jnew_0()
            return
        else
            jresult => ResolveCompleteMotionGestureListener_jnew_0()
            return
        end if
  end function
end module MotionGestureReceiveInterfaceFactory_m

