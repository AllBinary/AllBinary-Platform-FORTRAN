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
module UpdateInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: UpdateInterface
  contains
    procedure :: jm_update_0 => UpdateInterface_jm_update_0
  end type


contains

  function UpdateInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(UpdateInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (UpdateInterface)
      jresult => object
    end select
  end function

  function UpdateInterface_jnew_0() result(this)
    class(UpdateInterface), pointer :: this
    allocate(this)
    this%jclass = 'UpdateInterface'
  end function

  recursive subroutine UpdateInterface_jm_update_0(this)
    class(UpdateInterface), target :: this
    error stop 'AbstractMethodError: UpdateInterface.update'
  end subroutine
end module UpdateInterface_m

