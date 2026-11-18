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
module GameCanvasPaintHelper_m
  use JR_m
  use ProcessPaintable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(ProcessPaintable) :: GameCanvasPaintHelper
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
  contains
    procedure :: jm_process_0 => GameCanvasPaintHelper_jm_process_0
    procedure :: jm_paint_1 => GameCanvasPaintHelper_jm_paint_1
  end type


contains

  function GameCanvasPaintHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasPaintHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasPaintHelper)
      jresult => object
    end select
  end function

  recursive function GameCanvasPaintHelper_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(GameCanvasPaintHelper), pointer :: this
    allocate(this)
    this%jclass = 'GameCanvasPaintHelper'
    
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine GameCanvasPaintHelper_jm_process_0(this)
    class(GameCanvasPaintHelper), target :: this
    continue
  end subroutine

  recursive subroutine GameCanvasPaintHelper_jm_paint_1(this, j_graphics)
    class(GameCanvasPaintHelper), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameCanvas%jm_draw_1(j_graphics)
  end subroutine
end module GameCanvasPaintHelper_m

