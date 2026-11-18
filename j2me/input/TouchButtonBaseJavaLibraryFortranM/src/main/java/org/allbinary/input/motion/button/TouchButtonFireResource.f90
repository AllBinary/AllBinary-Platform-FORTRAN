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
module TouchButtonFireResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonFireResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonFireResource_jcell_instance => null()
  logical, save :: TouchButtonFireResource_jset_instance = .false.

contains

  function TouchButtonFireResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonFireResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonFireResource)
      jresult => object
    end select
  end function

  function TouchButtonFireResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonFireResource_jset_instance) then
      TouchButtonFireResource_jset_instance = .true.
      TouchButtonFireResource_jcell_instance => TouchButtonFireResource_jnew_0()
    end if
    jresult => TouchButtonFireResource_jcell_instance
  end function

  subroutine TouchButtonFireResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonFireResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonFireResource_jcell_instance => jvalue
    else
      TouchButtonFireResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonFireResource_jnew_0() result(this)
    class(TouchButtonFireResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonFireResource'
        continue ! super()
  end function

  recursive function TouchButtonFireResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonFireResource_jstatic_instance()
        return
  end function
end module TouchButtonFireResource_m

function TouchButtonFireResource_jnew_0_jext() result(this)
  use TouchButtonFireResource_m, only: JObject, TouchButtonFireResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonFireResource_jnew_0()
end function

