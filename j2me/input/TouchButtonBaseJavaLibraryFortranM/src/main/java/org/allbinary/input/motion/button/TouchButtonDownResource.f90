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
module TouchButtonDownResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonDownResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonDownResource_jcell_instance => null()
  logical, save :: TouchButtonDownResource_jset_instance = .false.

contains

  function TouchButtonDownResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonDownResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonDownResource)
      jresult => object
    end select
  end function

  function TouchButtonDownResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonDownResource_jset_instance) then
      TouchButtonDownResource_jset_instance = .true.
      TouchButtonDownResource_jcell_instance => TouchButtonDownResource_jnew_0()
    end if
    jresult => TouchButtonDownResource_jcell_instance
  end function

  subroutine TouchButtonDownResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonDownResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonDownResource_jcell_instance => jvalue
    else
      TouchButtonDownResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonDownResource_jnew_0() result(this)
    class(TouchButtonDownResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonDownResource'
        continue ! super()
  end function

  recursive function TouchButtonDownResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonDownResource_jstatic_instance()
        return
  end function
end module TouchButtonDownResource_m

function TouchButtonDownResource_jnew_0_jext() result(this)
  use TouchButtonDownResource_m, only: JObject, TouchButtonDownResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonDownResource_jnew_0()
end function

