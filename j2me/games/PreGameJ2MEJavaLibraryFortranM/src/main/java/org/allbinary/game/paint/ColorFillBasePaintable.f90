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
module ColorFillBasePaintable_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use ColorCompositeInterface_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: ColorFillBasePaintable
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_colorP = 0
  contains
    procedure :: jm_setBasicColorP_1 => ColorFillBasePaintable_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => ColorFillBasePaintable_jm_getBasicColorP_0
    procedure :: jm_getColor_0 => ColorFillBasePaintable_jm_getColor_0
    procedure :: jm_setColor_1 => ColorFillBasePaintable_jm_setColor_1
    procedure :: jm_paint_1 => ColorFillBasePaintable_jm_paint_1
  end type

  ! ColorFillBasePaintable used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: ColorFillBasePaintable_jas_ColorCompositeInterface
    class(ColorFillBasePaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => ColorFillBasePaintable_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function ColorFillBasePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorFillBasePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorFillBasePaintable)
      jresult => object
    end select
  end function

  function ColorFillBasePaintable_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(ColorFillBasePaintable), target :: object
    class(ColorFillBasePaintable_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'ColorFillBasePaintable'
    jresult%jtarget => object
  end function

  recursive function ColorFillBasePaintable_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(ColorFillBasePaintable_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function ColorFillBasePaintable_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(ColorFillBasePaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ColorFillBasePaintable'
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine ColorFillBasePaintable_jm_setBasicColorP_1(this, j_basicColor)
    class(ColorFillBasePaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(BasicColor), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_basicColor => j_basicColor
        jtemp2 => this%jm_getBasicColorP_0()
        call this%jm_setColor_1(jtemp2%jm_intValue_0())
  end subroutine

  recursive function ColorFillBasePaintable_jm_getBasicColorP_0(this) result(jresult)
    class(ColorFillBasePaintable), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive function ColorFillBasePaintable_jm_getColor_0(this) result(jresult)
    class(ColorFillBasePaintable), target :: this
    integer(4) :: jresult
        jresult = this%f_colorP
        return
  end function

  recursive subroutine ColorFillBasePaintable_jm_setColor_1(this, j_color)
    class(ColorFillBasePaintable), target :: this
    integer(4), value :: j_color
        this%f_colorP = j_color
  end subroutine

  recursive subroutine ColorFillBasePaintable_jm_paint_1(this, j_graphics)
    class(ColorFillBasePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module ColorFillBasePaintable_m

