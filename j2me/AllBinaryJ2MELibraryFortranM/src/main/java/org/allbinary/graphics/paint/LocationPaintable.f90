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
module LocationPaintable_m
  use JR_m
  use LocationPaintableInterface_m
  implicit none

  type, extends(LocationPaintableInterface) :: LocationPaintable
  contains
    procedure :: jm_paintXY_3 => LocationPaintable_jm_paintXY_3
  end type

  class(LocationPaintable), pointer, save :: LocationPaintable_jcell_instance => null()
  logical, save :: LocationPaintable_jset_instance = .false.

contains

  function LocationPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LocationPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LocationPaintable)
      jresult => object
    end select
  end function

  function LocationPaintable_jstatic_instance() result(jresult)
    class(LocationPaintable), pointer :: jresult
    if (.not. LocationPaintable_jset_instance) then
      LocationPaintable_jset_instance = .true.
      LocationPaintable_jcell_instance => LocationPaintable_jnew_0()
    end if
    jresult => LocationPaintable_jcell_instance
  end function

  subroutine LocationPaintable_jsetstatic_instance(jvalue)
    class(LocationPaintable), target, optional :: jvalue
    LocationPaintable_jset_instance = .true.
    if (present(jvalue)) then
      LocationPaintable_jcell_instance => jvalue
    else
      LocationPaintable_jcell_instance => null()
    end if
  end subroutine

  function LocationPaintable_jnew_0() result(this)
    class(LocationPaintable), pointer :: this
    allocate(this)
    this%jclass = 'LocationPaintable'
  end function

  recursive function LocationPaintable_jm_getInstance_0() result(jresult)
    class(LocationPaintable), pointer :: jresult
        jresult => LocationPaintable_jstatic_instance()
        return
  end function

  recursive subroutine LocationPaintable_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(LocationPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module LocationPaintable_m

