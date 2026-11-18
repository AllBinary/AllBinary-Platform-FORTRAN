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
! package org.allbinary.graphics.form
module LockablePaintable_m
  use JR_m
  use Animation_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use LockedResources_m
  use LockedUtil_m
  use ItemPaintable_m
  implicit none

  type, extends(ItemPaintable) :: LockablePaintable
    class(Animation), pointer :: f_animation => null()
    integer(4) :: f_lockedIndex = 0
  contains
    procedure :: jm_paint_4 => LockablePaintable_jm_paint_4
    procedure :: jm_getLockedIndex_0 => LockablePaintable_jm_getLockedIndex_0
    procedure :: jm_getAnimation_0 => LockablePaintable_jm_getAnimation_0
  end type


contains

  function LockablePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockablePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockablePaintable)
      jresult => object
    end select
  end function

  recursive function LockablePaintable_jnew_1(j_lockedIndex) result(this)
    integer(4), value :: j_lockedIndex
    class(LockablePaintable), pointer :: this
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp1
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp2
    class(LockedResources), pointer :: jtemp3
    allocate(this)
    this%jclass = 'LockablePaintable'
    jtemp3 => LockedResources_jm_getInstance_0()
    jtemp2 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
    jtemp1 => jtemp2%jm_get_1(jtemp3%f_LOCKED_DEMO_GAME_FEATURE_RESOURCE)
    this%f_animation => jtemp1%jm_getInstance_1(0)
    
        this%f_lockedIndex = j_lockedIndex
  end function

  recursive subroutine LockablePaintable_jm_paint_4(this, j_graphics, j_currentIndex, j_x, j_y)
    class(LockablePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_currentIndex
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(LockedUtil), pointer :: jtemp4
    class(Animation), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => LockedUtil_jm_getInstance_0()
        if ((jtemp4%jm_isLocked_0() .and. (j_currentIndex >= this%jm_getLockedIndex_0()))) then
            jtemp5 => this%jm_getAnimation_0()
            call jtemp5%jm_paintXY_3(j_graphics, j_x, j_y)
        end if
  end subroutine

  recursive function LockablePaintable_jm_getLockedIndex_0(this) result(jresult)
    class(LockablePaintable), target :: this
    integer(4) :: jresult
        jresult = this%f_lockedIndex
        return
  end function

  recursive function LockablePaintable_jm_getAnimation_0(this) result(jresult)
    class(LockablePaintable), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animation
        return
  end function
end module LockablePaintable_m

function LockablePaintable_jnew_1_jext(p1) result(this)
  use LockablePaintable_m, only: JObject, LockablePaintable_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => LockablePaintable_jnew_1(p1)
end function

