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
module NullPaintable_m
  use JR_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: NullPaintable
  end type

  class(NullPaintable), pointer, save :: NullPaintable_jcell_SINGLETON => null()
  logical, save :: NullPaintable_jset_SINGLETON = .false.

contains

  function NullPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullPaintable)
      jresult => object
    end select
  end function

  function NullPaintable_jstatic_SINGLETON() result(jresult)
    class(NullPaintable), pointer :: jresult
    if (.not. NullPaintable_jset_SINGLETON) then
      NullPaintable_jset_SINGLETON = .true.
      NullPaintable_jcell_SINGLETON => NullPaintable_jnew_0()
    end if
    jresult => NullPaintable_jcell_SINGLETON
  end function

  subroutine NullPaintable_jsetstatic_SINGLETON(jvalue)
    class(NullPaintable), target, optional :: jvalue
    NullPaintable_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullPaintable_jcell_SINGLETON => jvalue
    else
      NullPaintable_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NullPaintable_jnew_0() result(this)
    class(NullPaintable), pointer :: this
    allocate(this)
    this%jclass = 'NullPaintable'
        continue
  end function

  recursive function NullPaintable_jm_getInstance_0() result(jresult)
    class(Paintable), pointer :: jresult
        jresult => NullPaintable_jstatic_SINGLETON()
        return
  end function
end module NullPaintable_m

function NullPaintable_jnew_0_jext() result(this)
  use NullPaintable_m, only: JObject, NullPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullPaintable_jnew_0()
end function

