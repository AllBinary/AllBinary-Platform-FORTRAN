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
module TouchButtonStrafeRightResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonStrafeRightResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonStrafeRightResource_jcell_instance => null()
  logical, save :: TouchButtonStrafeRightResource_jset_instance = .false.

contains

  function TouchButtonStrafeRightResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonStrafeRightResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonStrafeRightResource)
      jresult => object
    end select
  end function

  function TouchButtonStrafeRightResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonStrafeRightResource_jset_instance) then
      TouchButtonStrafeRightResource_jset_instance = .true.
      TouchButtonStrafeRightResource_jcell_instance => TouchButtonStrafeRightResource_jnew_0()
    end if
    jresult => TouchButtonStrafeRightResource_jcell_instance
  end function

  subroutine TouchButtonStrafeRightResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonStrafeRightResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonStrafeRightResource_jcell_instance => jvalue
    else
      TouchButtonStrafeRightResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonStrafeRightResource_jnew_0() result(this)
    class(TouchButtonStrafeRightResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonStrafeRightResource'
        continue ! super()
  end function

  recursive function TouchButtonStrafeRightResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonStrafeRightResource_jstatic_instance()
        return
  end function
end module TouchButtonStrafeRightResource_m

function TouchButtonStrafeRightResource_jnew_0_jext() result(this)
  use TouchButtonStrafeRightResource_m, only: JObject, TouchButtonStrafeRightResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonStrafeRightResource_jnew_0()
end function

