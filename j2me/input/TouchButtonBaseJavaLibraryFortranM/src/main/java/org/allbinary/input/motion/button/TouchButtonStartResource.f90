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
module TouchButtonStartResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonStartResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonStartResource_jcell_instance => null()
  logical, save :: TouchButtonStartResource_jset_instance = .false.

contains

  function TouchButtonStartResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonStartResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonStartResource)
      jresult => object
    end select
  end function

  function TouchButtonStartResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonStartResource_jset_instance) then
      TouchButtonStartResource_jset_instance = .true.
      TouchButtonStartResource_jcell_instance => TouchButtonStartResource_jnew_0()
    end if
    jresult => TouchButtonStartResource_jcell_instance
  end function

  subroutine TouchButtonStartResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonStartResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonStartResource_jcell_instance => jvalue
    else
      TouchButtonStartResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonStartResource_jnew_0() result(this)
    class(TouchButtonStartResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonStartResource'
        continue ! super()
  end function

  recursive function TouchButtonStartResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonStartResource_jstatic_instance()
        return
  end function
end module TouchButtonStartResource_m

function TouchButtonStartResource_jnew_0_jext() result(this)
  use TouchButtonStartResource_m, only: JObject, TouchButtonStartResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonStartResource_jnew_0()
end function

