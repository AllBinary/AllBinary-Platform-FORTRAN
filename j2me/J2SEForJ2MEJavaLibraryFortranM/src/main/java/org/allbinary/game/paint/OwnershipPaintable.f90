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
module OwnershipPaintable_m
  use JR_m
  use Anchor_m
  use BasicColor_m
  use BasicColorFactory_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  use LogUtil_m
  implicit none

  type, extends(Paintable) :: OwnershipPaintable
    class(LogUtil), pointer :: f_logUtil => null()
    class(DisplayInfoSingleton), pointer :: f_displayInfo => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    character(len=:), allocatable :: f_COPYRIGHT
    class(BasicColor), pointer :: f_basicColor => null()
    integer(4) :: f_color = 0
    integer(4) :: f_anchor = 0
    integer(4) :: f_COPYRIGHT_Y = 0
    integer(4) :: f_beginWidth = 0
  contains
    procedure :: jm_updateMeasurement_1 => OwnershipPaintable_jm_updateMeasurement_1
    procedure :: jm_setBasicColorP_1 => OwnershipPaintable_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => OwnershipPaintable_jm_getBasicColorP_0
    procedure :: jm_paint_1 => OwnershipPaintable_jm_paint_1
  end type

  ! OwnershipPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: OwnershipPaintable_jas_UpdateMyFontInterface
    class(OwnershipPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => OwnershipPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function OwnershipPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OwnershipPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OwnershipPaintable)
      jresult => object
    end select
  end function

  function OwnershipPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(OwnershipPaintable), target :: object
    class(OwnershipPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'OwnershipPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine OwnershipPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(OwnershipPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function OwnershipPaintable_jnew_0() result(this)
    class(OwnershipPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'OwnershipPaintable'
    this%f_COPYRIGHT = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_COPYRIGHT = 'AllBinary Copyright (c) 2011'
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    this%f_color = this%f_basicColor%jm_intValue_0()
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
    
        continue
  end function

  recursive function OwnershipPaintable_jm_getInstance_0() result(jresult)
    class(OwnershipPaintable), pointer :: jresult
        jresult => OwnershipPaintable_jnew_0()
        return
  end function

  recursive subroutine OwnershipPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(OwnershipPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_COPYRIGHT_Y = (2 * j_font%jm_getHeight_0())
        this%f_beginWidth = (shifta(j_font%jm_stringWidth_1(this%f_COPYRIGHT), iand(1, 31)))
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine OwnershipPaintable_jm_setBasicColorP_1(this, j_basicColor)
    class(OwnershipPaintable), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
        this%f_color = j_basicColor%jm_intValue_0()
  end subroutine

  recursive function OwnershipPaintable_jm_getBasicColorP_0(this) result(jresult)
    class(OwnershipPaintable), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine OwnershipPaintable_jm_paint_1(this, j_graphics)
    class(OwnershipPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_halfWidth
    integer(4) :: j_height
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call j_graphics%jm_setColor_1(this%f_color)
        j_halfWidth = this%f_displayInfo%jm_getLastHalfWidth_0()
        j_height = this%f_displayInfo%jm_getLastHeight_0()
        call j_graphics%jm_drawString_4(this%f_COPYRIGHT, (j_halfWidth - this%f_beginWidth), (j_height - this%f_COPYRIGHT_Y), this%f_anchor)
  end subroutine
end module OwnershipPaintable_m

function OwnershipPaintable_jnew_0_jext() result(this)
  use OwnershipPaintable_m, only: JObject, OwnershipPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OwnershipPaintable_jnew_0()
end function

