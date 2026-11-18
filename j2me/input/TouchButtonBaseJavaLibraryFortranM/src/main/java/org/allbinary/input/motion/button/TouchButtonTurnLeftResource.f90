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
module TouchButtonTurnLeftResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonTurnLeftResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonTurnLeftResource_jcell_instance => null()
  logical, save :: TouchButtonTurnLeftResource_jset_instance = .false.

contains

  function TouchButtonTurnLeftResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonTurnLeftResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonTurnLeftResource)
      jresult => object
    end select
  end function

  function TouchButtonTurnLeftResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonTurnLeftResource_jset_instance) then
      TouchButtonTurnLeftResource_jset_instance = .true.
      TouchButtonTurnLeftResource_jcell_instance => TouchButtonTurnLeftResource_jnew_0()
    end if
    jresult => TouchButtonTurnLeftResource_jcell_instance
  end function

  subroutine TouchButtonTurnLeftResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonTurnLeftResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonTurnLeftResource_jcell_instance => jvalue
    else
      TouchButtonTurnLeftResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonTurnLeftResource_jnew_0() result(this)
    class(TouchButtonTurnLeftResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonTurnLeftResource'
        continue ! super()
  end function

  recursive function TouchButtonTurnLeftResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonTurnLeftResource_jstatic_instance()
        return
  end function
end module TouchButtonTurnLeftResource_m

function TouchButtonTurnLeftResource_jnew_0_jext() result(this)
  use TouchButtonTurnLeftResource_m, only: JObject, TouchButtonTurnLeftResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonTurnLeftResource_jnew_0()
end function

