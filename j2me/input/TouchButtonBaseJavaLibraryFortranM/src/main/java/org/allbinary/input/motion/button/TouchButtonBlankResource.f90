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
module TouchButtonBlankResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonBlankResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonBlankResource_jcell_instance => null()
  logical, save :: TouchButtonBlankResource_jset_instance = .false.

contains

  function TouchButtonBlankResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonBlankResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonBlankResource)
      jresult => object
    end select
  end function

  function TouchButtonBlankResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonBlankResource_jset_instance) then
      TouchButtonBlankResource_jset_instance = .true.
      TouchButtonBlankResource_jcell_instance => TouchButtonBlankResource_jnew_0()
    end if
    jresult => TouchButtonBlankResource_jcell_instance
  end function

  subroutine TouchButtonBlankResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonBlankResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonBlankResource_jcell_instance => jvalue
    else
      TouchButtonBlankResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonBlankResource_jnew_0() result(this)
    class(TouchButtonBlankResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonBlankResource'
        continue ! super()
  end function

  recursive function TouchButtonBlankResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonBlankResource_jstatic_instance()
        return
  end function
end module TouchButtonBlankResource_m

function TouchButtonBlankResource_jnew_0_jext() result(this)
  use TouchButtonBlankResource_m, only: JObject, TouchButtonBlankResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonBlankResource_jnew_0()
end function

