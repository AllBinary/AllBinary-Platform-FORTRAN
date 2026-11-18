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
! package org.allbinary.graphics
module IdentifierInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: IdentifierInterface
  contains
    procedure :: jm_getId_0 => IdentifierInterface_jm_getId_0
  end type


contains

  function IdentifierInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IdentifierInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IdentifierInterface)
      jresult => object
    end select
  end function

  function IdentifierInterface_jnew_0() result(this)
    class(IdentifierInterface), pointer :: this
    allocate(this)
    this%jclass = 'IdentifierInterface'
  end function

  recursive function IdentifierInterface_jm_getId_0(this) result(jresult)
    class(IdentifierInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: IdentifierInterface.getId'
  end function
end module IdentifierInterface_m

