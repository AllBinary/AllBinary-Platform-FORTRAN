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
module RunAtEndAnimationListener_m
  use JR_m
  use AnimationListenerInterface_m
  implicit none

  type, extends(AnimationListenerInterface) :: RunAtEndAnimationListener
    class(JObject), pointer :: f_runnable => null()
  contains
    procedure :: jm_onPlatformAnimationStart_0 => RunAtEndAnimationListener_jm_onPlatformAnimationStart_0
    procedure :: jm_onPlatformAnimationEnd_0 => RunAtEndAnimationListener_jm_onPlatformAnimationEnd_0
    procedure :: jm_onPlatformAnimationRepeat_0 => RunAtEndAnimationListener_jm_onPlatformAnimationRepeat_0
  end type


contains

  function RunAtEndAnimationListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RunAtEndAnimationListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RunAtEndAnimationListener)
      jresult => object
    end select
  end function

  recursive function RunAtEndAnimationListener_jnew_1(j_runnable) result(this)
    class(JObject), target, optional :: j_runnable
    class(RunAtEndAnimationListener), pointer :: this
    allocate(this)
    this%jclass = 'RunAtEndAnimationListener'
    
        this%f_runnable => j_runnable
  end function

  recursive subroutine RunAtEndAnimationListener_jm_onPlatformAnimationStart_0(this)
    class(RunAtEndAnimationListener), target :: this
    continue
  end subroutine

  recursive subroutine RunAtEndAnimationListener_jm_onPlatformAnimationEnd_0(this)
    class(RunAtEndAnimationListener), target :: this
    continue
  end subroutine

  recursive subroutine RunAtEndAnimationListener_jm_onPlatformAnimationRepeat_0(this)
    class(RunAtEndAnimationListener), target :: this
    continue
  end subroutine
end module RunAtEndAnimationListener_m

