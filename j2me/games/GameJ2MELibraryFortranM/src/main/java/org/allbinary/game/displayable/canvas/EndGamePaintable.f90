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
! package org.allbinary.game.displayable.canvas
module EndGamePaintable_m
  use JR_m
  use Paintable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Paintable) :: EndGamePaintable
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
  contains
    procedure :: jm_paint_1 => EndGamePaintable_jm_paint_1
  end type


contains

  function EndGamePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EndGamePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EndGamePaintable)
      jresult => object
    end select
  end function

  recursive function EndGamePaintable_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(EndGamePaintable), pointer :: this
    allocate(this)
    this%jclass = 'EndGamePaintable'
    
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine EndGamePaintable_jm_paint_1(this, j_graphics)
    class(EndGamePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameCanvas%jm_paintGameOver_1(j_graphics)
  end subroutine
end module EndGamePaintable_m

