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
module PressStartMenuPaintable_m
  use JR_m
  use AppletUtil_m
  use Anchor_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use Paintable_m
  use TouchScreenFactory_m
  use StringUtil_m
  use TimeDelayHelper_m
  implicit none

  type, extends(Paintable) :: PressStartMenuPaintable
    class(DisplayInfoSingleton), pointer :: f_displayInfo => null()
    character(len=:), allocatable :: f_PRESS_START
    character(len=:), allocatable :: f_KEY_START
    character(len=:), allocatable :: f_MENU_START
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    character(len=:), allocatable :: f_startString
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    logical :: f_flash = .false.
    integer(4) :: f_anchor = 0
    integer(4) :: f_beginWidth = 0
    integer(4) :: f_line = 0
  contains
    procedure :: jm_updateMeasurement_1 => PressStartMenuPaintable_jm_updateMeasurement_1
    procedure :: jm_paint_1 => PressStartMenuPaintable_jm_paint_1
    procedure :: jm_setFlash_1 => PressStartMenuPaintable_jm_setFlash_1
    procedure :: jm_isFlash_0 => PressStartMenuPaintable_jm_isFlash_0
  end type

  ! PressStartMenuPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: PressStartMenuPaintable_jas_UpdateMyFontInterface
    class(PressStartMenuPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => PressStartMenuPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function PressStartMenuPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PressStartMenuPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PressStartMenuPaintable)
      jresult => object
    end select
  end function

  function PressStartMenuPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(PressStartMenuPaintable), target :: object
    class(PressStartMenuPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PressStartMenuPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine PressStartMenuPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(PressStartMenuPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive function PressStartMenuPaintable_jnew_0() result(this)
    class(PressStartMenuPaintable), pointer :: this
    class(TouchScreenFactory), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PressStartMenuPaintable'
    this%f_PRESS_START = ''
    this%f_KEY_START = ''
    this%f_MENU_START = ''
    this%f_startString = ''
    this%f_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
    this%f_PRESS_START = 'Press Screen To Start'
    this%f_KEY_START = 'Press or Click F2 To Begin'
    this%f_MENU_START = 'Press Start From The Menu To Begin'
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_startString = jtemp1%f_EMPTY_STRING
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(1100)
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
    
        jtemp2 => TouchScreenFactory_jm_getInstance_0()
        if (jtemp2%jm_isTouch_0()) then
            this%f_startString = this%f_PRESS_START
        else if (AppletUtil_jm_isAppletLoader_1(this)) then
            this%f_startString = this%f_KEY_START
        else
            this%f_startString = this%f_MENU_START
        end if
  end function

  recursive subroutine PressStartMenuPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(PressStartMenuPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jtemp3
        j_font => j_graphics%jm_getFont_0()
        jtemp3 => j_graphics%jm_getFont_0()
        this%f_beginWidth = (shifta(jtemp3%jm_stringWidth_1(this%f_startString), iand(1, 31)))
        this%f_line = (((4 * MyFontProcessor_jm_defaultCharWidth_1(j_font))) + (shifta(j_font%jm_getHeight_0(), iand(1, 31))))
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine PressStartMenuPaintable_jm_paint_1(this, j_graphics)
    class(PressStartMenuPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_timeDelayHelper%jm_isTimeTNT_0()) then
            if (this%jm_isFlash_0()) then
                call this%jm_setFlash_1(.false.)
            else
                call this%jm_setFlash_1(.true.)
            end if
        end if
        if (this%jm_isFlash_0()) then
            call this%f_myFontProcessor%jm_process_1(j_graphics)
            call j_graphics%jm_drawString_4(this%f_startString, (this%f_displayInfo%jm_getLastHalfWidth_0() - this%f_beginWidth), (this%f_displayInfo%jm_getLastHeight_0() - this%f_line), this%f_anchor)
        end if
  end subroutine

  recursive subroutine PressStartMenuPaintable_jm_setFlash_1(this, j_flash)
    class(PressStartMenuPaintable), target :: this
    logical, value :: j_flash
        this%f_flash = j_flash
  end subroutine

  recursive function PressStartMenuPaintable_jm_isFlash_0(this) result(jresult)
    class(PressStartMenuPaintable), target :: this
    logical :: jresult
        jresult = this%f_flash
        return
  end function
end module PressStartMenuPaintable_m

function PressStartMenuPaintable_jnew_0_jext() result(this)
  use PressStartMenuPaintable_m, only: JObject, PressStartMenuPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PressStartMenuPaintable_jnew_0()
end function

