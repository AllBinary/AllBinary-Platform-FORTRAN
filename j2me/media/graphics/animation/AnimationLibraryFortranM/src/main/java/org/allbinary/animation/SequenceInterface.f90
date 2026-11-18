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
module SequenceInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: SequenceInterface
  contains
    procedure :: jm_setSequence_1 => SequenceInterface_jm_setSequence_1
    procedure :: jm_getSequence_0 => SequenceInterface_jm_getSequence_0
  end type


contains

  function SequenceInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SequenceInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SequenceInterface)
      jresult => object
    end select
  end function

  function SequenceInterface_jnew_0() result(this)
    class(SequenceInterface), pointer :: this
    allocate(this)
    this%jclass = 'SequenceInterface'
  end function

  recursive subroutine SequenceInterface_jm_setSequence_1(this, j_sequence)
    class(SequenceInterface), target :: this
    integer(4) :: j_sequence(:)
    error stop 'AbstractMethodError: SequenceInterface.setSequence'
  end subroutine

  recursive function SequenceInterface_jm_getSequence_0(this) result(jresult)
    class(SequenceInterface), target :: this
    integer(4), allocatable :: jresult(:)
    error stop 'AbstractMethodError: SequenceInterface.getSequence'
  end function
end module SequenceInterface_m

