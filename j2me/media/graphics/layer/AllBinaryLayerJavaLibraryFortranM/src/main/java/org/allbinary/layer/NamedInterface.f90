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
! package org.allbinary.layer
module NamedInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: NamedInterface
  contains
    procedure :: jm_getName_0 => NamedInterface_jm_getName_0
  end type


contains

  function NamedInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NamedInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NamedInterface)
      jresult => object
    end select
  end function

  function NamedInterface_jnew_0() result(this)
    class(NamedInterface), pointer :: this
    allocate(this)
    this%jclass = 'NamedInterface'
  end function

  recursive function NamedInterface_jm_getName_0(this) result(jresult)
    class(NamedInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: NamedInterface.getName'
  end function
end module NamedInterface_m

