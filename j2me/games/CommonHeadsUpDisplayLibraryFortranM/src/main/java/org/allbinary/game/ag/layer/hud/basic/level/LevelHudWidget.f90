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
! package org.allbinary.game.ag.layer.hud.basic.level
module LevelHudWidget_m
  use JR_m
  use BasicHud_m
  use BasicColorFactory_m
  use PaintableInterface_m
  use NullUtil_m
  use PrimitiveLongUtil_m
  implicit none

  type, extends(BasicHud) :: LevelHudWidget
    integer(4) :: f_level = 0
    integer(4) :: f_maxlevel = 0
    integer(4), allocatable :: f_levelString(:)
    integer(4), allocatable :: f_levelNumberCharArray(:)
    integer(4) :: f_levelNumberTotalDigits = 0
    integer(4) :: f_offset = 0
    class(PrimitiveLongUtil), pointer :: f_primitiveLongUtil => null()
  contains
    procedure :: jm_updateMeasurement_1 => LevelHudWidget_jm_updateMeasurement_1
    procedure :: jm_update_0 => LevelHudWidget_jm_update_0
    procedure :: jm_setLevel_1 => LevelHudWidget_jm_setLevel_1
    procedure :: jm_nextLevel_0 => LevelHudWidget_jm_nextLevel_0
    procedure :: jm_previousLevel_0 => LevelHudWidget_jm_previousLevel_0
    procedure :: jm_isComplete_0 => LevelHudWidget_jm_isComplete_0
    procedure :: jm_paint_1 => LevelHudWidget_jm_paint_1
    procedure :: jm_paintThreed_1 => LevelHudWidget_jm_paintThreed_1
  end type

  ! LevelHudWidget used as a PaintableInterface
  type, extends(PaintableInterface) :: LevelHudWidget_jas_PaintableInterface
    class(LevelHudWidget), pointer :: jtarget => null()
  contains
    procedure :: jm_paint_1 => LevelHudWidget_jas_PaintableInterface_jm_paint_1
    procedure :: jm_paintThreed_1 => LevelHudWidget_jas_PaintableInterface_jm_paintThreed_1
  end type


contains

  function LevelHudWidget_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LevelHudWidget), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LevelHudWidget)
      jresult => object
    end select
  end function

  function LevelHudWidget_jas_PaintableInterface_jnew(object) result(jresult)
    class(LevelHudWidget), target :: object
    class(LevelHudWidget_jas_PaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LevelHudWidget'
    jresult%jtarget => object
  end function

  recursive subroutine LevelHudWidget_jas_PaintableInterface_jm_paint_1(this, j_graphics)
    class(LevelHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine LevelHudWidget_jas_PaintableInterface_jm_paintThreed_1(this, j_graphics)
    class(LevelHudWidget_jas_PaintableInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_paintThreed_1(j_graphics)
  end subroutine

  recursive function LevelHudWidget_jnew_3(j_maxlevel, j_location, j_direction) result(this)
    integer(4), value :: j_maxlevel
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(LevelHudWidget), pointer :: this
    character(len=:), allocatable :: j_LEVEL
    class(BasicColorFactory), pointer :: jtemp2
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LevelHudWidget'
    
    
    
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_levelNumberCharArray = jtemp1%f_NULL_CHAR_ARRAY
    
    
    
        jtemp2 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
        this%f_primitiveLongUtil => PrimitiveLongUtil_jm_createPowerOfTen_1(1000)
        j_LEVEL = 'Lv '
        this%f_levelString = JR_toCharArray(j_LEVEL)
        this%f_maxlevel = j_maxlevel
        this%f_level = j_maxlevel
        call this%jm_update_0()
        this%f_updateMaxHeight = 14
  end function

  recursive function LevelHudWidget_jm_createHud_3(j_maxlevel, j_location, j_direction) result(jresult)
    integer(4), value :: j_maxlevel
    integer(4), value :: j_location
    integer(4), value :: j_direction
    class(LevelHudWidget), pointer :: jresult
        jresult => LevelHudWidget_jnew_3(j_maxlevel, j_location, j_direction)
        return
  end function

  recursive subroutine LevelHudWidget_jm_updateMeasurement_1(this, j_graphics)
    class(LevelHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        this%f_updateMaxWidth = (j_font%jm_getSize_0() * 4)
        this%f_offset = (j_font%jm_charsWidth_3(this%f_levelString, 0, size(this%f_levelString, 1)) + j_font%jm_getSize_0())
        call this%BasicHud%jm_updateMeasurement_1(j_graphics)
  end subroutine

  recursive subroutine LevelHudWidget_jm_update_0(this)
    class(LevelHudWidget), target :: this
        this%f_levelNumberCharArray = this%f_primitiveLongUtil%jm_getCharArray_1(this%f_level)
        this%f_levelNumberTotalDigits = this%f_primitiveLongUtil%jm_getCurrentTotalDigits_0()
  end subroutine

  recursive subroutine LevelHudWidget_jm_setLevel_1(this, j_level)
    class(LevelHudWidget), target :: this
    integer(4), value :: j_level
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_level = j_level
        call this%jm_update_0()
  end subroutine

  recursive subroutine LevelHudWidget_jm_nextLevel_0(this)
    class(LevelHudWidget), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_level = this%f_level + 1
        call this%jm_update_0()
  end subroutine

  recursive subroutine LevelHudWidget_jm_previousLevel_0(this)
    class(LevelHudWidget), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_level = this%f_level - 1
        if ((this%f_level < 0)) then
            this%f_level = 0
        end if
        call this%jm_update_0()
  end subroutine

  recursive function LevelHudWidget_jm_isComplete_0(this) result(jresult)
    class(LevelHudWidget), target :: this
    logical :: jresult
        if ((this%f_level <= this%f_maxlevel)) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive subroutine LevelHudWidget_jm_paint_1(this, j_graphics)
    class(LevelHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicHud%jm_paintDX_8(j_graphics, this%f_levelString, 0, size(this%f_levelString, 1), this%f_levelNumberCharArray, 0, this%f_levelNumberTotalDigits, this%f_offset)
  end subroutine

  recursive subroutine LevelHudWidget_jm_paintThreed_1(this, j_graphics)
    class(LevelHudWidget), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module LevelHudWidget_m

function LevelHudWidget_jnew_3_jext(p1, p2, p3) result(this)
  use LevelHudWidget_m, only: JObject, LevelHudWidget_jnew_3
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
  class(JObject), pointer :: this
  this => LevelHudWidget_jnew_3(p1, p2, p3)
end function

