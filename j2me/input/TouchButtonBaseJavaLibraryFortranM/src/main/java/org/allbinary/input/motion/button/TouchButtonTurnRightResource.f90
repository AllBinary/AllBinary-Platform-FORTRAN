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
! package org.allbinary.input.motion.button
module TouchButtonTurnRightResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonTurnRightResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonTurnRightResource_jcell_instance => null()
  logical, save :: TouchButtonTurnRightResource_jset_instance = .false.

contains

  function TouchButtonTurnRightResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonTurnRightResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonTurnRightResource)
      jresult => object
    end select
  end function

  function TouchButtonTurnRightResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonTurnRightResource_jset_instance) then
      TouchButtonTurnRightResource_jset_instance = .true.
      TouchButtonTurnRightResource_jcell_instance => TouchButtonTurnRightResource_jnew_0()
    end if
    jresult => TouchButtonTurnRightResource_jcell_instance
  end function

  subroutine TouchButtonTurnRightResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonTurnRightResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonTurnRightResource_jcell_instance => jvalue
    else
      TouchButtonTurnRightResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonTurnRightResource_jnew_0() result(this)
    class(TouchButtonTurnRightResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonTurnRightResource'
        continue ! super()
  end function

  recursive function TouchButtonTurnRightResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonTurnRightResource_jstatic_instance()
        return
  end function
end module TouchButtonTurnRightResource_m

function TouchButtonTurnRightResource_jnew_0_jext() result(this)
  use TouchButtonTurnRightResource_m, only: JObject, TouchButtonTurnRightResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonTurnRightResource_jnew_0()
end function

