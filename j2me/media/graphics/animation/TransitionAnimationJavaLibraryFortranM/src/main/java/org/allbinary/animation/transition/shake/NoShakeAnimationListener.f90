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
module NoShakeAnimationListener_m
  use JR_m
  use ShakeAnimationListener_m
  implicit none

  type, extends(ShakeAnimationListener) :: NoShakeAnimationListener
  end type

  class(ShakeAnimationListener), pointer, save :: NoShakeAnimationListener_jcell_NO_SHAKE_ANIMATION_LISTENER => null()
  logical, save :: NoShakeAnimationListener_jset_NO_SHAKE_ANIMATION_LISTENER = .false.

contains

  function NoShakeAnimationListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoShakeAnimationListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoShakeAnimationListener)
      jresult => object
    end select
  end function

  function NoShakeAnimationListener_jstatic_NO_SHAKE_ANIMATION_LISTENER() result(jresult)
    class(ShakeAnimationListener), pointer :: jresult
    if (.not. NoShakeAnimationListener_jset_NO_SHAKE_ANIMATION_LISTENER) then
      NoShakeAnimationListener_jset_NO_SHAKE_ANIMATION_LISTENER = .true.
      NoShakeAnimationListener_jcell_NO_SHAKE_ANIMATION_LISTENER => NoShakeAnimationListener_jnew_0()
    end if
    jresult => NoShakeAnimationListener_jcell_NO_SHAKE_ANIMATION_LISTENER
  end function

  subroutine NoShakeAnimationListener_jsetstatic_NO_SHAKE_ANIMATION_LISTENER(jvalue)
    class(ShakeAnimationListener), target, optional :: jvalue
    NoShakeAnimationListener_jset_NO_SHAKE_ANIMATION_LISTENER = .true.
    if (present(jvalue)) then
      NoShakeAnimationListener_jcell_NO_SHAKE_ANIMATION_LISTENER => jvalue
    else
      NoShakeAnimationListener_jcell_NO_SHAKE_ANIMATION_LISTENER => null()
    end if
  end subroutine

  function NoShakeAnimationListener_jnew_0() result(this)
    class(NoShakeAnimationListener), pointer :: this
    allocate(this)
    this%jclass = 'NoShakeAnimationListener'
  end function
end module NoShakeAnimationListener_m

function NoShakeAnimationListener_jnew_0_jext() result(this)
  use NoShakeAnimationListener_m, only: JObject, NoShakeAnimationListener_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoShakeAnimationListener_jnew_0()
end function

