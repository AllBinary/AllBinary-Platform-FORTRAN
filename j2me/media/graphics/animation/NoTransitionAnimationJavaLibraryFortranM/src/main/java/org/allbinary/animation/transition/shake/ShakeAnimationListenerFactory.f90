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
! package org.allbinary.animation.transition.shake
module ShakeAnimationListenerFactory_m
  use JR_m
  use NoShakeAnimationListener_m
  use ShakeAnimationListener_m
  implicit none

  type, extends(JObject) :: ShakeAnimationListenerFactory
  end type


contains

  function ShakeAnimationListenerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShakeAnimationListenerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShakeAnimationListenerFactory)
      jresult => object
    end select
  end function

  function ShakeAnimationListenerFactory_jnew_0() result(this)
    class(ShakeAnimationListenerFactory), pointer :: this
    allocate(this)
    this%jclass = 'ShakeAnimationListenerFactory'
  end function

  recursive function ShakeAnimationListenerFactory_jm_getInstance_0() result(jresult)
    class(ShakeAnimationListener), pointer :: jresult
        jresult => NoShakeAnimationListener_jnew_0()
        return
  end function
end module ShakeAnimationListenerFactory_m

