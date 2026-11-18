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
module TouchButtonUpResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonUpResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonUpResource_jcell_instance => null()
  logical, save :: TouchButtonUpResource_jset_instance = .false.

contains

  function TouchButtonUpResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonUpResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonUpResource)
      jresult => object
    end select
  end function

  function TouchButtonUpResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonUpResource_jset_instance) then
      TouchButtonUpResource_jset_instance = .true.
      TouchButtonUpResource_jcell_instance => TouchButtonUpResource_jnew_0()
    end if
    jresult => TouchButtonUpResource_jcell_instance
  end function

  subroutine TouchButtonUpResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonUpResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonUpResource_jcell_instance => jvalue
    else
      TouchButtonUpResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonUpResource_jnew_0() result(this)
    class(TouchButtonUpResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonUpResource'
        continue ! super()
  end function

  recursive function TouchButtonUpResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonUpResource_jstatic_instance()
        return
  end function
end module TouchButtonUpResource_m

function TouchButtonUpResource_jnew_0_jext() result(this)
  use TouchButtonUpResource_m, only: JObject, TouchButtonUpResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonUpResource_jnew_0()
end function

