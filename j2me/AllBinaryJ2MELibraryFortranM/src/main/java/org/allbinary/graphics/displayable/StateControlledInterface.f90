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
! package org.allbinary.graphics.displayable
module StateControlledInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: StateControlledInterface
  contains
    procedure :: jm_setState_1 => StateControlledInterface_jm_setState_1
  end type


contains

  function StateControlledInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StateControlledInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StateControlledInterface)
      jresult => object
    end select
  end function

  function StateControlledInterface_jnew_0() result(this)
    class(StateControlledInterface), pointer :: this
    allocate(this)
    this%jclass = 'StateControlledInterface'
  end function

  recursive subroutine StateControlledInterface_jm_setState_1(this, j_state)
    class(StateControlledInterface), target :: this
    integer(4), value :: j_state
    error stop 'AbstractMethodError: StateControlledInterface.setState'
  end subroutine
end module StateControlledInterface_m

