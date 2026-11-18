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
module StringLocationPaintable_m
  use JR_m
  use LocationPaintable_m
  implicit none

  type, extends(LocationPaintable) :: StringLocationPaintable
    character(len=:), allocatable :: f_value
  contains
    procedure :: jm_paintXY_3 => StringLocationPaintable_jm_paintXY_3
  end type


contains

  function StringLocationPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StringLocationPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StringLocationPaintable)
      jresult => object
    end select
  end function

  recursive function StringLocationPaintable_jnew_1(j_value) result(this)
    character(len=*), intent(in) :: j_value
    class(StringLocationPaintable), pointer :: this
    allocate(this)
    this%jclass = 'StringLocationPaintable'
    this%f_value = ''
    
        this%f_value = j_value
  end function

  recursive subroutine StringLocationPaintable_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(StringLocationPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_drawString_4(this%f_value, j_x, j_y, 0)
  end subroutine
end module StringLocationPaintable_m

function StringLocationPaintable_jnew_1_jext(p1) result(this)
  use StringLocationPaintable_m, only: JObject, StringLocationPaintable_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => StringLocationPaintable_jnew_1(p1)
end function

