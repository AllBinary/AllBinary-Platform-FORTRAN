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
module IndexedAnimationInterface_m
  use JR_m
  use SequentialAnimationInterface_m
  implicit none

  type, extends(SequentialAnimationInterface) :: IndexedAnimationInterface
  contains
    procedure :: jm_reset_0 => IndexedAnimationInterface_jm_reset_0
    procedure :: jm_setFrame_1 => IndexedAnimationInterface_jm_setFrame_1
    procedure :: jm_getFrame_0 => IndexedAnimationInterface_jm_getFrame_0
  end type


contains

  function IndexedAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedAnimationInterface)
      jresult => object
    end select
  end function

  function IndexedAnimationInterface_jnew_0() result(this)
    class(IndexedAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'IndexedAnimationInterface'
  end function

  recursive subroutine IndexedAnimationInterface_jm_reset_0(this)
    class(IndexedAnimationInterface), target :: this
    error stop 'AbstractMethodError: IndexedAnimationInterface.reset'
  end subroutine

  recursive subroutine IndexedAnimationInterface_jm_setFrame_1(this, j_index)
    class(IndexedAnimationInterface), target :: this
    integer(4), value :: j_index
    error stop 'AbstractMethodError: IndexedAnimationInterface.setFrame'
  end subroutine

  recursive function IndexedAnimationInterface_jm_getFrame_0(this) result(jresult)
    class(IndexedAnimationInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: IndexedAnimationInterface.getFrame'
  end function
end module IndexedAnimationInterface_m

