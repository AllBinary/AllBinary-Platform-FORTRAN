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
module TouchButtonReverseResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonReverseResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonReverseResource_jcell_instance => null()
  logical, save :: TouchButtonReverseResource_jset_instance = .false.

contains

  function TouchButtonReverseResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonReverseResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonReverseResource)
      jresult => object
    end select
  end function

  function TouchButtonReverseResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonReverseResource_jset_instance) then
      TouchButtonReverseResource_jset_instance = .true.
      TouchButtonReverseResource_jcell_instance => TouchButtonReverseResource_jnew_0()
    end if
    jresult => TouchButtonReverseResource_jcell_instance
  end function

  subroutine TouchButtonReverseResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonReverseResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonReverseResource_jcell_instance => jvalue
    else
      TouchButtonReverseResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonReverseResource_jnew_0() result(this)
    class(TouchButtonReverseResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonReverseResource'
        continue ! super()
  end function

  recursive function TouchButtonReverseResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonReverseResource_jstatic_instance()
        return
  end function
end module TouchButtonReverseResource_m

function TouchButtonReverseResource_jnew_0_jext() result(this)
  use TouchButtonReverseResource_m, only: JObject, TouchButtonReverseResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonReverseResource_jnew_0()
end function

