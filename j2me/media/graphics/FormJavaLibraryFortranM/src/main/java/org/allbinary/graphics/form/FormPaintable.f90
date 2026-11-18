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
! package org.allbinary.graphics.form
module FormPaintable_m
  use JR_m
  use Paintable_m
  use PaintableForm_m
  implicit none

  type, extends(Paintable) :: FormPaintable
    class(PaintableForm), pointer :: f_form => null()
  contains
    procedure :: jm_paint_1 => FormPaintable_jm_paint_1
    procedure :: jm_getForm_0 => FormPaintable_jm_getForm_0
  end type


contains

  function FormPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormPaintable)
      jresult => object
    end select
  end function

  recursive function FormPaintable_jnew_1(j_form) result(this)
    class(PaintableForm), target, optional :: j_form
    class(FormPaintable), pointer :: this
    allocate(this)
    this%jclass = 'FormPaintable'
    
        this%f_form => j_form
  end function

  recursive subroutine FormPaintable_jm_paint_1(this, j_graphics)
    class(FormPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_form%jm_paint_1(j_graphics)
  end subroutine

  recursive function FormPaintable_jm_getForm_0(this) result(jresult)
    class(FormPaintable), target :: this
    class(PaintableForm), pointer :: jresult
        jresult => this%f_form
        return
  end function
end module FormPaintable_m

