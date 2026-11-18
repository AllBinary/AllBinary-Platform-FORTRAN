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
! package org.allbinary.animation.transition
module AnimationListenerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: AnimationListenerInterface
  contains
    procedure :: jm_onPlatformAnimationStart_0 => AnimationListenerInterface_jm_onPlatformAnimationStart_0
    procedure :: jm_onPlatformAnimationEnd_0 => AnimationListenerInterface_jm_onPlatformAnimationEnd_0
    procedure :: jm_onPlatformAnimationRepeat_0 => AnimationListenerInterface_jm_onPlatformAnimationRepeat_0
  end type


contains

  function AnimationListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationListenerInterface)
      jresult => object
    end select
  end function

  function AnimationListenerInterface_jnew_0() result(this)
    class(AnimationListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'AnimationListenerInterface'
  end function

  recursive subroutine AnimationListenerInterface_jm_onPlatformAnimationStart_0(this)
    class(AnimationListenerInterface), target :: this
    error stop 'AbstractMethodError: AnimationListenerInterface.onPlatformAnimationStart'
  end subroutine

  recursive subroutine AnimationListenerInterface_jm_onPlatformAnimationEnd_0(this)
    class(AnimationListenerInterface), target :: this
    error stop 'AbstractMethodError: AnimationListenerInterface.onPlatformAnimationEnd'
  end subroutine

  recursive subroutine AnimationListenerInterface_jm_onPlatformAnimationRepeat_0(this)
    class(AnimationListenerInterface), target :: this
    error stop 'AbstractMethodError: AnimationListenerInterface.onPlatformAnimationRepeat'
  end subroutine
end module AnimationListenerInterface_m

