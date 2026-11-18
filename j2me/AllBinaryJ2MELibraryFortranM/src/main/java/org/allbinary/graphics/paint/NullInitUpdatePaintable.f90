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
module NullInitUpdatePaintable_m
  use JR_m
  use InitUpdatePaintable_m
  implicit none

  type, extends(InitUpdatePaintable) :: NullInitUpdatePaintable
  end type

  class(NullInitUpdatePaintable), pointer, save :: NullInitUpdatePaintable_jcell_SINGLETON => null()
  logical, save :: NullInitUpdatePaintable_jset_SINGLETON = .false.

contains

  function NullInitUpdatePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullInitUpdatePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullInitUpdatePaintable)
      jresult => object
    end select
  end function

  function NullInitUpdatePaintable_jstatic_SINGLETON() result(jresult)
    class(NullInitUpdatePaintable), pointer :: jresult
    if (.not. NullInitUpdatePaintable_jset_SINGLETON) then
      NullInitUpdatePaintable_jset_SINGLETON = .true.
      NullInitUpdatePaintable_jcell_SINGLETON => NullInitUpdatePaintable_jnew_0()
    end if
    jresult => NullInitUpdatePaintable_jcell_SINGLETON
  end function

  subroutine NullInitUpdatePaintable_jsetstatic_SINGLETON(jvalue)
    class(NullInitUpdatePaintable), target, optional :: jvalue
    NullInitUpdatePaintable_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullInitUpdatePaintable_jcell_SINGLETON => jvalue
    else
      NullInitUpdatePaintable_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NullInitUpdatePaintable_jnew_0() result(this)
    class(NullInitUpdatePaintable), pointer :: this
    allocate(this)
    this%jclass = 'NullInitUpdatePaintable'
        continue
  end function

  recursive function NullInitUpdatePaintable_jm_getInstance_0() result(jresult)
    class(InitUpdatePaintable), pointer :: jresult
        jresult => NullInitUpdatePaintable_jstatic_SINGLETON()
        return
  end function
end module NullInitUpdatePaintable_m

function NullInitUpdatePaintable_jnew_0_jext() result(this)
  use NullInitUpdatePaintable_m, only: JObject, NullInitUpdatePaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullInitUpdatePaintable_jnew_0()
end function

