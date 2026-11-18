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
! package org.allbinary.animation.compound
module CompoundAnimationInterface_m
  use JR_m
  use AnimationInterface_m
  use IndexedAnimation_m
  implicit none

  type, extends(AnimationInterface) :: CompoundAnimationInterface
  contains
    procedure :: jm_nextAnimation_0 => CompoundAnimationInterface_jm_nextAnimation_0
    procedure :: jm_previousAnimation_0 => CompoundAnimationInterface_jm_previousAnimation_0
    procedure :: jm_setAnimation_1 => CompoundAnimationInterface_jm_setAnimation_1
    procedure :: jm_getCurrentAnimation_0 => CompoundAnimationInterface_jm_getCurrentAnimation_0
  end type


contains

  function CompoundAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompoundAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompoundAnimationInterface)
      jresult => object
    end select
  end function

  function CompoundAnimationInterface_jnew_0() result(this)
    class(CompoundAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'CompoundAnimationInterface'
  end function

  recursive subroutine CompoundAnimationInterface_jm_nextAnimation_0(this)
    class(CompoundAnimationInterface), target :: this
    error stop 'AbstractMethodError: CompoundAnimationInterface.nextAnimation'
  end subroutine

  recursive subroutine CompoundAnimationInterface_jm_previousAnimation_0(this)
    class(CompoundAnimationInterface), target :: this
    error stop 'AbstractMethodError: CompoundAnimationInterface.previousAnimation'
  end subroutine

  recursive subroutine CompoundAnimationInterface_jm_setAnimation_1(this, j_index)
    class(CompoundAnimationInterface), target :: this
    integer(4), value :: j_index
    error stop 'AbstractMethodError: CompoundAnimationInterface.setAnimation'
  end subroutine

  recursive function CompoundAnimationInterface_jm_getCurrentAnimation_0(this) result(jresult)
    class(CompoundAnimationInterface), target :: this
    class(IndexedAnimation), pointer :: jresult
    error stop 'AbstractMethodError: CompoundAnimationInterface.getCurrentAnimation'
  end function
end module CompoundAnimationInterface_m

