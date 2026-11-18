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
! package org.allbinary.animation
module AnimationListener_m
  use JR_m
  use EventListenerInterface_m
  implicit none

  type, extends(EventListenerInterface) :: AnimationListener
  contains
    procedure :: jm_onEnd_0 => AnimationListener_jm_onEnd_0
  end type


contains

  function AnimationListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationListener)
      jresult => object
    end select
  end function

  function AnimationListener_jnew_0() result(this)
    class(AnimationListener), pointer :: this
    allocate(this)
    this%jclass = 'AnimationListener'
  end function

  recursive subroutine AnimationListener_jm_onEnd_0(this)
    class(AnimationListener), target :: this
    error stop 'AbstractMethodError: AnimationListener.onEnd'
  end subroutine
end module AnimationListener_m

