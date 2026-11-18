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
! package org.allbinary.animation.special
module SpecialAnimationInterface_m
  use JR_m
  use IndexedAnimationInterface_m
  implicit none

  type, extends(IndexedAnimationInterface) :: SpecialAnimationInterface
  contains
    procedure :: jm_setLastFrame_0 => SpecialAnimationInterface_jm_setLastFrame_0
    procedure :: jm_isComplete_0 => SpecialAnimationInterface_jm_isComplete_0
  end type


contains

  function SpecialAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialAnimationInterface)
      jresult => object
    end select
  end function

  function SpecialAnimationInterface_jnew_0() result(this)
    class(SpecialAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'SpecialAnimationInterface'
  end function

  recursive subroutine SpecialAnimationInterface_jm_setLastFrame_0(this)
    class(SpecialAnimationInterface), target :: this
    error stop 'AbstractMethodError: SpecialAnimationInterface.setLastFrame'
  end subroutine

  recursive function SpecialAnimationInterface_jm_isComplete_0(this) result(jresult)
    class(SpecialAnimationInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: SpecialAnimationInterface.isComplete'
  end function
end module SpecialAnimationInterface_m

