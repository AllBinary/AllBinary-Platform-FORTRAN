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
module GameCanvasNonBotPaintable_m
  use JR_m
  use Paintable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Paintable) :: GameCanvasNonBotPaintable
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
  contains
    procedure :: jm_paint_1 => GameCanvasNonBotPaintable_jm_paint_1
  end type


contains

  function GameCanvasNonBotPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasNonBotPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasNonBotPaintable)
      jresult => object
    end select
  end function

  recursive function GameCanvasNonBotPaintable_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(GameCanvasNonBotPaintable), pointer :: this
    allocate(this)
    this%jclass = 'GameCanvasNonBotPaintable'
    
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine GameCanvasNonBotPaintable_jm_paint_1(this, j_graphics)
    class(GameCanvasNonBotPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameCanvas%jm_nonBotPaint_1(j_graphics)
  end subroutine
end module GameCanvasNonBotPaintable_m

