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
! package org.allbinary.graphics.paint
module NullLocationPaintable_m
  use JR_m
  use LocationPaintable_m
  implicit none

  type, extends(LocationPaintable) :: NullLocationPaintable
  end type

  class(NullLocationPaintable), pointer, save :: NullLocationPaintable_jcell_instanceC => null()
  logical, save :: NullLocationPaintable_jset_instanceC = .false.

contains

  function NullLocationPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullLocationPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullLocationPaintable)
      jresult => object
    end select
  end function

  function NullLocationPaintable_jstatic_instanceC() result(jresult)
    class(NullLocationPaintable), pointer :: jresult
    if (.not. NullLocationPaintable_jset_instanceC) then
      NullLocationPaintable_jset_instanceC = .true.
      NullLocationPaintable_jcell_instanceC => NullLocationPaintable_jnew_0()
    end if
    jresult => NullLocationPaintable_jcell_instanceC
  end function

  subroutine NullLocationPaintable_jsetstatic_instanceC(jvalue)
    class(NullLocationPaintable), target, optional :: jvalue
    NullLocationPaintable_jset_instanceC = .true.
    if (present(jvalue)) then
      NullLocationPaintable_jcell_instanceC => jvalue
    else
      NullLocationPaintable_jcell_instanceC => null()
    end if
  end subroutine

  function NullLocationPaintable_jnew_0() result(this)
    class(NullLocationPaintable), pointer :: this
    allocate(this)
    this%jclass = 'NullLocationPaintable'
  end function

  recursive function NullLocationPaintable_jm_getInstance_0() result(jresult)
    class(NullLocationPaintable), pointer :: jresult
        jresult => NullLocationPaintable_jstatic_instanceC()
        return
  end function
end module NullLocationPaintable_m

function NullLocationPaintable_jnew_0_jext() result(this)
  use NullLocationPaintable_m, only: JObject, NullLocationPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullLocationPaintable_jnew_0()
end function

