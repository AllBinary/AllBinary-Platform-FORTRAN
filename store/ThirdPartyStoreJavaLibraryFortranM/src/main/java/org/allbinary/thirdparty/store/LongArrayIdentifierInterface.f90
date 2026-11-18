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
! package org.allbinary.thirdparty.store
module LongArrayIdentifierInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: LongArrayIdentifierInterface
  contains
    procedure :: jm_getLongArrayIdentifier_0 => LongArrayIdentifierInterface_jm_getLongArrayIdentifier_0
  end type


contains

  function LongArrayIdentifierInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LongArrayIdentifierInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LongArrayIdentifierInterface)
      jresult => object
    end select
  end function

  function LongArrayIdentifierInterface_jnew_0() result(this)
    class(LongArrayIdentifierInterface), pointer :: this
    allocate(this)
    this%jclass = 'LongArrayIdentifierInterface'
  end function

  recursive function LongArrayIdentifierInterface_jm_getLongArrayIdentifier_0(this) result(jresult)
    class(LongArrayIdentifierInterface), target :: this
    integer(8), allocatable :: jresult(:)
    error stop 'AbstractMethodError: LongArrayIdentifierInterface.getLongArrayIdentifier'
  end function
end module LongArrayIdentifierInterface_m

