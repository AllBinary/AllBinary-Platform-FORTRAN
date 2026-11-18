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
! package org.allbinary.graphics.draw
module CanvasDrawLineString_m
  use JR_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use DrawStringUtil_m
  implicit none

  type, extends(UpdateMyFontInterface) :: CanvasDrawLineString
    class(DrawStringUtil), pointer :: f_drawStringUtil => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    integer(4) :: f_fontHeight = 0
  contains
    procedure :: jm_updateMeasurement_1 => CanvasDrawLineString_jm_updateMeasurement_1
    procedure :: jm_paint_3 => CanvasDrawLineString_jm_paint_3
  end type

  class(CanvasDrawLineString), pointer, save :: CanvasDrawLineString_jcell_NULL_CANVAS_DRAW_LINE_STRING => null()
  logical, save :: CanvasDrawLineString_jset_NULL_CANVAS_DRAW_LINE_STRING = .false.

contains

  function CanvasDrawLineString_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CanvasDrawLineString), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CanvasDrawLineString)
      jresult => object
    end select
  end function

  function CanvasDrawLineString_jstatic_NULL_CANVAS_DRAW_LINE_STRING() result(jresult)
    class(CanvasDrawLineString), pointer :: jresult
    if (.not. CanvasDrawLineString_jset_NULL_CANVAS_DRAW_LINE_STRING) then
      CanvasDrawLineString_jset_NULL_CANVAS_DRAW_LINE_STRING = .true.
      CanvasDrawLineString_jcell_NULL_CANVAS_DRAW_LINE_STRING => CanvasDrawLineString_jnew_2(0, 0)
    end if
    jresult => CanvasDrawLineString_jcell_NULL_CANVAS_DRAW_LINE_STRING
  end function

  subroutine CanvasDrawLineString_jsetstatic_NULL_CANVAS_DRAW_LINE_STRING(jvalue)
    class(CanvasDrawLineString), target, optional :: jvalue
    CanvasDrawLineString_jset_NULL_CANVAS_DRAW_LINE_STRING = .true.
    if (present(jvalue)) then
      CanvasDrawLineString_jcell_NULL_CANVAS_DRAW_LINE_STRING => jvalue
    else
      CanvasDrawLineString_jcell_NULL_CANVAS_DRAW_LINE_STRING => null()
    end if
  end subroutine

  recursive function CanvasDrawLineString_jnew_2(j_x, j_y) result(this)
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(CanvasDrawLineString), pointer :: this
    allocate(this)
    this%jclass = 'CanvasDrawLineString'
    this%f_drawStringUtil => DrawStringUtil_jm_getInstance_0()
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    
    
    this%f_fontHeight = 0
        this%f_x = j_x
        this%f_y = j_y
  end function

  recursive subroutine CanvasDrawLineString_jm_updateMeasurement_1(this, j_graphics)
    class(CanvasDrawLineString), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_fontHeight = j_font%jm_getHeight_0()
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine CanvasDrawLineString_jm_paint_3(this, j_graphics, j_string, j_line)
    class(CanvasDrawLineString), target :: this
    class(Graphics), target, optional :: j_graphics
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_line
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call this%f_drawStringUtil%jm_drawCenterString_6(j_graphics, j_string, 0, len(j_string), this%f_x, (this%f_y + ((j_line * this%f_fontHeight))))
  end subroutine
end module CanvasDrawLineString_m

