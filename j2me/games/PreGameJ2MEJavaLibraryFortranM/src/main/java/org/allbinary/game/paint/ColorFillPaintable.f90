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
! package org.allbinary.game.paint
module ColorFillPaintable_m
  use JR_m
  use BasicColor_m
  use DisplayInfoSingleton_m
  use ColorFillBasePaintable_m
  implicit none

  type, extends(ColorFillBasePaintable) :: ColorFillPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
  contains
    procedure :: jm_paint_1 => ColorFillPaintable_jm_paint_1
  end type


contains

  function ColorFillPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorFillPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorFillPaintable)
      jresult => object
    end select
  end function

  recursive function ColorFillPaintable_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(ColorFillPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ColorFillPaintable'
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine ColorFillPaintable_jm_paint_1(this, j_graphics)
    class(ColorFillPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setColor_1(this%f_colorP)
        call j_graphics%jm_fillRect_4(0, 0, this%f_displayInfoSingleton%jm_getLastWidth_0(), this%f_displayInfoSingleton%jm_getLastHeight_0())
  end subroutine
end module ColorFillPaintable_m

