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
! package org.allbinary.graphics.canvas.transition.progress
module ProgressPaintable_m
  use JR_m
  use Paintable_m
  use ProgressCanvas_m
  implicit none

  type, extends(Paintable) :: ProgressPaintable
    class(ProgressCanvas), pointer :: f_progressCanvas => null()
  contains
    procedure :: jm_paint_1 => ProgressPaintable_jm_paint_1
  end type


contains

  function ProgressPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProgressPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProgressPaintable)
      jresult => object
    end select
  end function

  recursive function ProgressPaintable_jnew_1(j_progressCanvas) result(this)
    class(ProgressCanvas), target, optional :: j_progressCanvas
    class(ProgressPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ProgressPaintable'
    
        this%f_progressCanvas => j_progressCanvas
  end function

  recursive subroutine ProgressPaintable_jm_paint_1(this, j_graphics)
    class(ProgressPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_progressCanvas%jm_paint2_1(j_graphics)
  end subroutine
end module ProgressPaintable_m

