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
! package org.allbinary.init
module InitInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: InitInterface
  contains
    procedure :: jm_init_0 => InitInterface_jm_init_0
  end type


contains

  function InitInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InitInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InitInterface)
      jresult => object
    end select
  end function

  function InitInterface_jnew_0() result(this)
    class(InitInterface), pointer :: this
    allocate(this)
    this%jclass = 'InitInterface'
  end function

  recursive subroutine InitInterface_jm_init_0(this)
    class(InitInterface), target :: this
    error stop 'AbstractMethodError: InitInterface.init'
  end subroutine
end module InitInterface_m

