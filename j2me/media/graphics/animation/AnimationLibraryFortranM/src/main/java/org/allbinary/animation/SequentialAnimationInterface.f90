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
module SequentialAnimationInterface_m
  use JR_m
  use AnimationInterface_m
  use SequenceInterface_m
  implicit none

  type, extends(AnimationInterface) :: SequentialAnimationInterface
  contains
    procedure :: jm_getSize_0 => SequentialAnimationInterface_jm_getSize_0
    procedure :: jm_previousFrame_0 => SequentialAnimationInterface_jm_previousFrame_0
  end type


contains

  function SequentialAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SequentialAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SequentialAnimationInterface)
      jresult => object
    end select
  end function

  function SequentialAnimationInterface_jnew_0() result(this)
    class(SequentialAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'SequentialAnimationInterface'
  end function

  recursive function SequentialAnimationInterface_jm_getSize_0(this) result(jresult)
    class(SequentialAnimationInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: SequentialAnimationInterface.getSize'
  end function

  recursive subroutine SequentialAnimationInterface_jm_previousFrame_0(this)
    class(SequentialAnimationInterface), target :: this
    error stop 'AbstractMethodError: SequentialAnimationInterface.previousFrame'
  end subroutine
end module SequentialAnimationInterface_m

