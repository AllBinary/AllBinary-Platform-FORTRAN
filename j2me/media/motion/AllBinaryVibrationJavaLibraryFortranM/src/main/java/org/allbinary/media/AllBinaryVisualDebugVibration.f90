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
! package org.allbinary.media
module AllBinaryVisualDebugVibration_m
  use JR_m
  use Anchor_m
  use DisplayInfoSingleton_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use TimeDelayHelper_m
  use Integer_m
  use AllBinaryVibrationME_m
  implicit none

  type, extends(AllBinaryVibrationME) :: AllBinaryVisualDebugVibration
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    character(len=:), allocatable :: f_VIBRATING
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    integer(4) :: f_anchor = 0
    integer(4) :: f_width = 0
  contains
    procedure :: jm_updateMeasurement_1 => AllBinaryVisualDebugVibration_jm_updateMeasurement_1
    procedure :: jm_vibrate_3 => AllBinaryVisualDebugVibration_jm_vibrate_3
    procedure :: jm_paint_1 => AllBinaryVisualDebugVibration_jm_paint_1
  end type

  ! AllBinaryVisualDebugVibration used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface
    class(AllBinaryVisualDebugVibration), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type


contains

  function AllBinaryVisualDebugVibration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryVisualDebugVibration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryVisualDebugVibration)
      jresult => object
    end select
  end function

  function AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(AllBinaryVisualDebugVibration), target :: object
    class(AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryVisualDebugVibration'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(AllBinaryVisualDebugVibration_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function AllBinaryVisualDebugVibration_jnew_0() result(this)
    class(AllBinaryVisualDebugVibration), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryVisualDebugVibration'
    this%f_VIBRATING = ''
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(Integer_jstatic_MAX_VALUE())
    this%f_VIBRATING = 'Vibrating'
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    
  end function

  recursive subroutine AllBinaryVisualDebugVibration_jm_updateMeasurement_1(this, j_graphics)
    class(AllBinaryVisualDebugVibration), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
        j_font => j_graphics%jm_getFont_0()
        this%f_width = j_font%jm_stringWidth_1(this%f_VIBRATING)
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine AllBinaryVisualDebugVibration_jm_vibrate_3(this, j_duration, j_type, j_volume)
    class(AllBinaryVisualDebugVibration), target :: this
    integer(4), value :: j_duration
    integer(4), value :: j_type
    integer(4), value :: j_volume
        this%f_timeDelayHelper%f_delay = j_duration
  end subroutine

  recursive subroutine AllBinaryVisualDebugVibration_jm_paint_1(this, j_graphics)
    class(AllBinaryVisualDebugVibration), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_timeDelayHelper%jm_isTimeTNT_0()) then
            this%f_timeDelayHelper%f_delay = Integer_jstatic_MAX_VALUE()
            call this%f_myFontProcessor%jm_process_1(j_graphics)
            call j_graphics%jm_drawString_4(this%f_VIBRATING, (this%f_displayInfoSingleton%jm_getLastHalfWidth_0() - (shifta(this%f_width, iand(1, 31)))), 0, this%f_anchor)
        end if
  end subroutine
end module AllBinaryVisualDebugVibration_m

function AllBinaryVisualDebugVibration_jnew_0_jext() result(this)
  use AllBinaryVisualDebugVibration_m, only: JObject, AllBinaryVisualDebugVibration_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryVisualDebugVibration_jnew_0()
end function

