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
module ShakeAnimationListener_m
  use JR_m
  use ShakeEvent_m
  implicit none

  type, extends(JObject) :: ShakeAnimationListener
  contains
    procedure :: jm_onSmallShakeEvent_0 => ShakeAnimationListener_jm_onSmallShakeEvent_0
    procedure :: jm_onMediumShakeEvent_0 => ShakeAnimationListener_jm_onMediumShakeEvent_0
    procedure :: jm_onLargeShakeEvent_0 => ShakeAnimationListener_jm_onLargeShakeEvent_0
    procedure :: jm_onShakeEvent_1 => ShakeAnimationListener_jm_onShakeEvent_1
    procedure :: jm_getType_0 => ShakeAnimationListener_jm_getType_0
  end type


contains

  function ShakeAnimationListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShakeAnimationListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShakeAnimationListener)
      jresult => object
    end select
  end function

  function ShakeAnimationListener_jnew_0() result(this)
    class(ShakeAnimationListener), pointer :: this
    allocate(this)
    this%jclass = 'ShakeAnimationListener'
  end function

  recursive subroutine ShakeAnimationListener_jm_onSmallShakeEvent_0(this)
    class(ShakeAnimationListener), target :: this
    continue
  end subroutine

  recursive subroutine ShakeAnimationListener_jm_onMediumShakeEvent_0(this)
    class(ShakeAnimationListener), target :: this
    continue
  end subroutine

  recursive subroutine ShakeAnimationListener_jm_onLargeShakeEvent_0(this)
    class(ShakeAnimationListener), target :: this
    continue
  end subroutine

  recursive subroutine ShakeAnimationListener_jm_onShakeEvent_1(this, j_shakeEvent)
    class(ShakeAnimationListener), target :: this
    class(ShakeEvent), target, optional :: j_shakeEvent
    continue
  end subroutine

  recursive function ShakeAnimationListener_jm_getType_0(this) result(jresult)
    class(ShakeAnimationListener), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module ShakeAnimationListener_m

