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
module TouchButtonStrafeLeftResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonStrafeLeftResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonStrafeLeftResource_jcell_instance => null()
  logical, save :: TouchButtonStrafeLeftResource_jset_instance = .false.

contains

  function TouchButtonStrafeLeftResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonStrafeLeftResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonStrafeLeftResource)
      jresult => object
    end select
  end function

  function TouchButtonStrafeLeftResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonStrafeLeftResource_jset_instance) then
      TouchButtonStrafeLeftResource_jset_instance = .true.
      TouchButtonStrafeLeftResource_jcell_instance => TouchButtonStrafeLeftResource_jnew_0()
    end if
    jresult => TouchButtonStrafeLeftResource_jcell_instance
  end function

  subroutine TouchButtonStrafeLeftResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonStrafeLeftResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonStrafeLeftResource_jcell_instance => jvalue
    else
      TouchButtonStrafeLeftResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonStrafeLeftResource_jnew_0() result(this)
    class(TouchButtonStrafeLeftResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonStrafeLeftResource'
        continue ! super()
  end function

  recursive function TouchButtonStrafeLeftResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonStrafeLeftResource_jstatic_instance()
        return
  end function
end module TouchButtonStrafeLeftResource_m

function TouchButtonStrafeLeftResource_jnew_0_jext() result(this)
  use TouchButtonStrafeLeftResource_m, only: JObject, TouchButtonStrafeLeftResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonStrafeLeftResource_jnew_0()
end function

