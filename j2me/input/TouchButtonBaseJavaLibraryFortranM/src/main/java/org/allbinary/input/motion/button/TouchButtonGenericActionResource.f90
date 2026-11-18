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
module TouchButtonGenericActionResource_m
  use JR_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButtonResource) :: TouchButtonGenericActionResource
  end type

  class(TouchButtonResource), pointer, save :: TouchButtonGenericActionResource_jcell_instance => null()
  logical, save :: TouchButtonGenericActionResource_jset_instance = .false.

contains

  function TouchButtonGenericActionResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonGenericActionResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonGenericActionResource)
      jresult => object
    end select
  end function

  function TouchButtonGenericActionResource_jstatic_instance() result(jresult)
    class(TouchButtonResource), pointer :: jresult
    if (.not. TouchButtonGenericActionResource_jset_instance) then
      TouchButtonGenericActionResource_jset_instance = .true.
      TouchButtonGenericActionResource_jcell_instance => TouchButtonGenericActionResource_jnew_0()
    end if
    jresult => TouchButtonGenericActionResource_jcell_instance
  end function

  subroutine TouchButtonGenericActionResource_jsetstatic_instance(jvalue)
    class(TouchButtonResource), target, optional :: jvalue
    TouchButtonGenericActionResource_jset_instance = .true.
    if (present(jvalue)) then
      TouchButtonGenericActionResource_jcell_instance => jvalue
    else
      TouchButtonGenericActionResource_jcell_instance => null()
    end if
  end subroutine

  recursive function TouchButtonGenericActionResource_jnew_0() result(this)
    class(TouchButtonGenericActionResource), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonGenericActionResource'
        continue ! super()
  end function

  recursive function TouchButtonGenericActionResource_jm_getInstance_0() result(jresult)
    class(TouchButtonResource), pointer :: jresult
        jresult => TouchButtonGenericActionResource_jstatic_instance()
        return
  end function
end module TouchButtonGenericActionResource_m

function TouchButtonGenericActionResource_jnew_0_jext() result(this)
  use TouchButtonGenericActionResource_m, only: JObject, TouchButtonGenericActionResource_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonGenericActionResource_jnew_0()
end function

