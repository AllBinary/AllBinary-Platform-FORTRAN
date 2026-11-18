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
module MultipleScrollSelectionFormRectPaintable_m
  use JR_m
  use Paintable_m
  use MultipleScrollSelectionHorizontalForm_m
  implicit none

  type, extends(Paintable) :: MultipleScrollSelectionFormRectPaintable
    class(MultipleScrollSelectionHorizontalForm), pointer :: f_multipleScrollSelectionForm => null()
  contains
    procedure :: jm_paint_1 => MultipleScrollSelectionFormRectPaintable_jm_paint_1
  end type


contains

  function MultipleScrollSelectionFormRectPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultipleScrollSelectionFormRectPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultipleScrollSelectionFormRectPaintable)
      jresult => object
    end select
  end function

  recursive function MultipleScrollSelectionFormRectPaintable_jnew_1(j_multipleScrollSelectionForm) result(this)
    class(MultipleScrollSelectionHorizontalForm), target, optional :: j_multipleScrollSelectionForm
    class(MultipleScrollSelectionFormRectPaintable), pointer :: this
    allocate(this)
    this%jclass = 'MultipleScrollSelectionFormRectPaintable'
    
        this%f_multipleScrollSelectionForm => j_multipleScrollSelectionForm
  end function

  recursive subroutine MultipleScrollSelectionFormRectPaintable_jm_paint_1(this, j_graphics)
    class(MultipleScrollSelectionFormRectPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_multipleScrollSelectionForm%jm_fillRect_1(j_graphics)
  end subroutine
end module MultipleScrollSelectionFormRectPaintable_m

