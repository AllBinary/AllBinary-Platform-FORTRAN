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
module GamePerformanceInitUpdatePaintable_m
  use JR_m
  use GameStatisticsFactory_m
  use BasicColorFactory_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use InitUpdatePaintable_m
  implicit none

  type, extends(InitUpdatePaintable) :: GamePerformanceInitUpdatePaintable
    integer(4) :: f_halfHeight = 0
    integer(4), allocatable :: f_yArray(:)
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4), allocatable :: f_baseRefreshHelperCharArray(:,:)
    integer(4) :: f_defaultStringWidth = 0
    integer(4) :: f_RED = 0
  contains
    procedure :: jm_updateMeasurement_1 => GamePerformanceInitUpdatePaintable_jm_updateMeasurement_1
    procedure :: jm_init_0 => GamePerformanceInitUpdatePaintable_jm_init_0
    procedure :: jm_update_0 => GamePerformanceInitUpdatePaintable_jm_update_0
    procedure :: jm_paint_1 => GamePerformanceInitUpdatePaintable_jm_paint_1
  end type

  ! GamePerformanceInitUpdatePaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface
    class(GamePerformanceInitUpdatePaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function GamePerformanceInitUpdatePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GamePerformanceInitUpdatePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GamePerformanceInitUpdatePaintable)
      jresult => object
    end select
  end function

  function GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(GamePerformanceInitUpdatePaintable), target :: object
    class(GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'GamePerformanceInitUpdatePaintable'
    jresult%jtarget => object
  end function

  recursive subroutine GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(GamePerformanceInitUpdatePaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function GamePerformanceInitUpdatePaintable_jnew_0() result(this)
    class(GamePerformanceInitUpdatePaintable), pointer :: this
    class(DisplayInfoSingleton), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'GamePerformanceInitUpdatePaintable'
    jtemp1 => DisplayInfoSingleton_jm_getInstance_0()
    this%f_halfHeight = jtemp1%jm_getLastHalfHeight_0()
    this%f_yArray = [integer(4) :: (this%f_halfHeight + 30), (this%f_halfHeight + 30), ((this%f_halfHeight + 30) + 15), ((this%f_halfHeight + 30) + 15), ((this%f_halfHeight + 30) + 30), ((this%f_halfHeight + 30) + 30), ((this%f_halfHeight + 30) + 45), ((this%f_halfHeight + 30) + 45)]
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_baseRefreshHelperCharArray = JR_newIntArray2(0, 0)
    
    jtemp3 => BasicColorFactory_jm_getInstance_0()
    this%f_RED = jtemp3%f_RED%jm_intValue_0()
  end function

  recursive subroutine GamePerformanceInitUpdatePaintable_jm_updateMeasurement_1(this, j_graphics)
    class(GamePerformanceInitUpdatePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_defaultStringWidth = MyFontProcessor_jm_defaultStringWidth_2(j_font, 2)
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine GamePerformanceInitUpdatePaintable_jm_init_0(this)
    class(GamePerformanceInitUpdatePaintable), target :: this
    continue
  end subroutine

  recursive subroutine GamePerformanceInitUpdatePaintable_jm_update_0(this)
    class(GamePerformanceInitUpdatePaintable), target :: this
    class(GameStatisticsFactory), pointer :: jtemp2
        jtemp2 => GameStatisticsFactory_jm_getInstance_0()
        this%f_baseRefreshHelperCharArray = jtemp2%jm_to2DCharArray_0()
  end subroutine

  recursive subroutine GamePerformanceInitUpdatePaintable_jm_paint_1(this, j_graphics)
    class(GamePerformanceInitUpdatePaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), allocatable :: j_charArray(:)
    integer(4), allocatable :: j_charArray2(:)
    integer(4) :: j_size2
    integer(4) :: j_size3
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        call j_graphics%jm_setColor_1(this%f_RED)
        continue
        continue
        continue
        continue
        j_size = (size(this%f_baseRefreshHelperCharArray, 1) - 2)
        j_index = j_size
        do while ((j_index >= 0))
            j_charArray = this%f_baseRefreshHelperCharArray((j_index) + 1, :)
            j_charArray2 = this%f_baseRefreshHelperCharArray(((j_index + 1)) + 1, :)
            j_size2 = size(j_charArray, 1)
            j_size3 = size(j_charArray2, 1)
            call j_graphics%jm_drawChars_6(j_charArray, 0, j_size2, 0, this%f_yArray((j_index) + 1), 0)
            call j_graphics%jm_drawChars_6(j_charArray2, 0, j_size3, (j_size2 * this%f_defaultStringWidth), this%f_yArray(((j_index + 1)) + 1), 0)
            j_index = (j_index - 2)
        end do
  end subroutine
end module GamePerformanceInitUpdatePaintable_m

function GamePerformanceInitUpdatePaintable_jnew_0_jext() result(this)
  use GamePerformanceInitUpdatePaintable_m, only: JObject, GamePerformanceInitUpdatePaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GamePerformanceInitUpdatePaintable_jnew_0()
end function

