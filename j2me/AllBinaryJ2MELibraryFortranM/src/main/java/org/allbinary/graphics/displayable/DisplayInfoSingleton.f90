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
! package org.allbinary.graphics.displayable
module DisplayInfoSingleton_m
  use JR_m
  use AndroidUtil_m
  use Features_m
  use DisplayChangeEvent_m
  use DisplayChangeEventHandler_m
  use LastDisplayChangeEventHandler_m
  use OpenGLFeatureFactory_m
  use SWTJOGLProcessor_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use GenericOperatingSystem_m
  use OperatingSystemFactory_m
  use CommonLabels_m
  use CommonSeps_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BaseScalable_m
  use ScalableListener_m
  implicit none

  type, extends(JObject) :: DisplayInfoSingleton
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonLabels), pointer :: f_commonLabels => null()
    class(CommonSeps), pointer :: f_commonSeps => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_ORIENTATION
    character(len=:), allocatable :: f_ADJUSTING_FOR_SCALING_IN_PORTRAIT
    character(len=:), allocatable :: f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE
    integer(4), allocatable :: f_last_u0(:)
    integer(4), allocatable :: f_lastHalf(:)
    integer(4), allocatable :: f_full_u0(:)
    integer(4) :: f_top = 0
    integer(4) :: f_left = 0
    integer(4) :: f_xOffset = 0
    integer(4) :: f_yOffset = 0
    real(4) :: f_scaleLargestTo = 0.0
    integer(4) :: f_WIDTH = 0
    integer(4) :: f_HEIGHT = 0
    integer(4) :: f_CUSTOM_WIDTH = 0
    integer(4) :: f_CUSTOM_HEIGHT = 0
    class(BaseScalable), pointer :: f_scalableListener => null()
    real(4) :: f_displayRatio = 0.0
    real(4) :: f_ratio = 0.0
    character(len=:), allocatable :: f_SET_LAST_SIZE_METHOD_NAME
    character(len=:), allocatable :: f_FULL_WIDTH
    character(len=:), allocatable :: f_FULL_HEIGHT
    character(len=:), allocatable :: f_LAST_WIDTH
    character(len=:), allocatable :: f_LAST_HEIGHT
    character(len=:), allocatable :: f_PORTRAIT
    character(len=:), allocatable :: f_LANDSCAPE
    class(DisplayChangeEvent), pointer :: f_displayChangeEvent => null()
    character(len=:), allocatable :: f_FIRE_METHOD_NAME
    character(len=:), allocatable :: f_REASON
    character(len=:), allocatable :: f_UPDATE_FROM_ORIENTATION_CHANGE
    class(BasicArrayList), pointer :: f_list => null()
    character(len=:), allocatable :: f_DISPLAY_INFO
    character(len=:), allocatable :: f_FULL_u4
    character(len=:), allocatable :: f_LAST_u4
    character(len=:), allocatable :: f_LAST_HALF
  contains
    procedure :: jm_getLastHalf_0 => DisplayInfoSingleton_jm_getLastHalf_0
    procedure :: jm_getLast_0 => DisplayInfoSingleton_jm_getLast_0
    procedure :: jm_getFull_0 => DisplayInfoSingleton_jm_getFull_0
    procedure :: jm_getScaleLargestTo_0 => DisplayInfoSingleton_jm_getScaleLargestTo_0
    procedure :: jm_setScaleLargestTo_1 => DisplayInfoSingleton_jm_setScaleLargestTo_1
    procedure :: jm_setLastSize_3 => DisplayInfoSingleton_jm_setLastSize_3
    procedure :: jm_setLastSizeForce_3 => DisplayInfoSingleton_jm_setLastSizeForce_3
    procedure :: jm_isPortraitWH_2 => DisplayInfoSingleton_jm_isPortraitWH_2
    procedure :: jm_isPortrait_0 => DisplayInfoSingleton_jm_isPortrait_0
    procedure :: jm_add_1 => DisplayInfoSingleton_jm_add_1
    procedure :: jm_process_0 => DisplayInfoSingleton_jm_process_0
    procedure :: jm_processForced_0 => DisplayInfoSingleton_jm_processForced_0
    procedure :: jm_update_2 => DisplayInfoSingleton_jm_update_2
    procedure :: jm_toString_0 => DisplayInfoSingleton_jm_toString_0
    procedure :: jm_toStringAppend_1 => DisplayInfoSingleton_jm_toStringAppend_1
    procedure :: jm_getTop_0 => DisplayInfoSingleton_jm_getTop_0
    procedure :: jm_getLeft_0 => DisplayInfoSingleton_jm_getLeft_0
    procedure :: jm_getLastWidth_0 => DisplayInfoSingleton_jm_getLastWidth_0
    procedure :: jm_getLastHeight_0 => DisplayInfoSingleton_jm_getLastHeight_0
    procedure :: jm_getLastHalfWidth_0 => DisplayInfoSingleton_jm_getLastHalfWidth_0
    procedure :: jm_getLastHalfHeight_0 => DisplayInfoSingleton_jm_getLastHalfHeight_0
    procedure :: jm_getCustomLastWidth_0 => DisplayInfoSingleton_jm_getCustomLastWidth_0
    procedure :: jm_getCustomLastHeight_0 => DisplayInfoSingleton_jm_getCustomLastHeight_0
    procedure :: jm_getRawLastWidth_0 => DisplayInfoSingleton_jm_getRawLastWidth_0
    procedure :: jm_getRawLastHeight_0 => DisplayInfoSingleton_jm_getRawLastHeight_0
    procedure :: jm_setCustom_2 => DisplayInfoSingleton_jm_setCustom_2
    procedure :: jm_setScalableListener_1 => DisplayInfoSingleton_jm_setScalableListener_1
    procedure :: jm_getScalableListener_0 => DisplayInfoSingleton_jm_getScalableListener_0
    procedure :: jm_getRatio_0 => DisplayInfoSingleton_jm_getRatio_0
    procedure :: jm_getDisplayRatio_0 => DisplayInfoSingleton_jm_getDisplayRatio_0
    procedure :: jm_setOffset_2 => DisplayInfoSingleton_jm_setOffset_2
    procedure :: jm_getxOffset_0 => DisplayInfoSingleton_jm_getxOffset_0
    procedure :: jm_getyOffset_0 => DisplayInfoSingleton_jm_getyOffset_0
  end type

  class(DisplayInfoSingleton), pointer, save :: DisplayInfoSingleton_jcell_SINGLETON => null()
  logical, save :: DisplayInfoSingleton_jset_SINGLETON = .false.

contains

  function DisplayInfoSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DisplayInfoSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DisplayInfoSingleton)
      jresult => object
    end select
  end function

  function DisplayInfoSingleton_jstatic_SINGLETON() result(jresult)
    class(DisplayInfoSingleton), pointer :: jresult
    if (.not. DisplayInfoSingleton_jset_SINGLETON) then
      DisplayInfoSingleton_jset_SINGLETON = .true.
      DisplayInfoSingleton_jcell_SINGLETON => DisplayInfoSingleton_jnew_0()
    end if
    jresult => DisplayInfoSingleton_jcell_SINGLETON
  end function

  subroutine DisplayInfoSingleton_jsetstatic_SINGLETON(jvalue)
    class(DisplayInfoSingleton), target, optional :: jvalue
    DisplayInfoSingleton_jset_SINGLETON = .true.
    if (present(jvalue)) then
      DisplayInfoSingleton_jcell_SINGLETON => jvalue
    else
      DisplayInfoSingleton_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function DisplayInfoSingleton_jnew_0() result(this)
    class(DisplayInfoSingleton), pointer :: this
    integer(4) :: j_size
    integer(4) :: j_index
    allocate(this)
    this%jclass = 'DisplayInfoSingleton'
    this%f_ORIENTATION = ''
    this%f_ADJUSTING_FOR_SCALING_IN_PORTRAIT = ''
    this%f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE = ''
    this%f_SET_LAST_SIZE_METHOD_NAME = ''
    this%f_FULL_WIDTH = ''
    this%f_FULL_HEIGHT = ''
    this%f_LAST_WIDTH = ''
    this%f_LAST_HEIGHT = ''
    this%f_PORTRAIT = ''
    this%f_LANDSCAPE = ''
    this%f_FIRE_METHOD_NAME = ''
    this%f_REASON = ''
    this%f_UPDATE_FROM_ORIENTATION_CHANGE = ''
    this%f_DISPLAY_INFO = ''
    this%f_FULL_u4 = ''
    this%f_LAST_u4 = ''
    this%f_LAST_HALF = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonLabels => CommonLabels_jm_getInstance_0()
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_ORIENTATION = 'ORIENTATION'
    this%f_ADJUSTING_FOR_SCALING_IN_PORTRAIT = 'Adjusting for Scaling in portrait display ratio: '
    this%f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE = 'Adjusting for Scaling in landscape display ratio: '
    this%f_last_u0 = JR_newIntArray(4)
    this%f_lastHalf = JR_newIntArray(4)
    this%f_full_u0 = JR_newIntArray(4)
    
    
    
    
    
    this%f_WIDTH = 0
    this%f_HEIGHT = 1
    this%f_CUSTOM_WIDTH = 2
    this%f_CUSTOM_HEIGHT = 3
    this%f_scalableListener => BaseScalable_jnew_0()
    
    this%f_ratio = 1.0
    this%f_SET_LAST_SIZE_METHOD_NAME = 'setLastSize'
    this%f_FULL_WIDTH = ' FullWidth: '
    this%f_FULL_HEIGHT = ' FullHeight: '
    this%f_LAST_WIDTH = 'LastWidth: '
    this%f_LAST_HEIGHT = ' LastHeight: '
    this%f_PORTRAIT = 'Portrait'
    this%f_LANDSCAPE = 'Landscape'
    this%f_displayChangeEvent => DisplayChangeEvent_jnew_1(this)
    this%f_FIRE_METHOD_NAME = 'fire'
    this%f_REASON = 'reason: '
    this%f_UPDATE_FROM_ORIENTATION_CHANGE = 'Updating from Orientation Change '
    this%f_list => BasicArrayListD_jnew_0()
    this%f_DISPLAY_INFO = 'Display Info: '
    this%f_FULL_u4 = 'full'
    this%f_LAST_u4 = 'last'
    this%f_LAST_HALF = 'lastHalf'
        j_size = size(this%f_last_u0, 1)
        j_index = 0
        do while ((j_index < j_size))
            this%f_last_u0((j_index) + 1) = 0
            this%f_lastHalf((j_index) + 1) = 0
            this%f_full_u0((j_index) + 1) = 0
            j_index = j_index + 1
        end do
        if (AndroidUtil_jm_isAndroid_0()) then
            this%f_scaleLargestTo = 640.0
        else
            this%f_scaleLargestTo = 1080.0
        end if
  end function

  recursive function DisplayInfoSingleton_jm_getInstance_0() result(jresult)
    class(DisplayInfoSingleton), pointer :: jresult
        jresult => DisplayInfoSingleton_jstatic_SINGLETON()
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLastHalf_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_lastHalf
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLast_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_last_u0
        return
  end function

  recursive function DisplayInfoSingleton_jm_getFull_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_full_u0
        return
  end function

  recursive function DisplayInfoSingleton_jm_getScaleLargestTo_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    real(4) :: jresult
        jresult = this%f_scaleLargestTo
        return
  end function

  recursive subroutine DisplayInfoSingleton_jm_setScaleLargestTo_1(this, j_scaleLargestTo)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_scaleLargestTo
        this%f_scaleLargestTo = real(j_scaleLargestTo, 4)
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_setLastSize_3(this, j_aLastWidth, j_aLastHeight, j_reason)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_aLastWidth
    integer(4), value :: j_aLastHeight
    character(len=*), intent(in) :: j_reason
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((this%f_full_u0((this%f_WIDTH) + 1) /= j_aLastWidth) .or. (this%f_full_u0((this%f_HEIGHT) + 1) /= j_aLastHeight))) then
            call this%jm_setLastSizeForce_3(j_aLastWidth, j_aLastHeight, j_reason)
        end if
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_setLastSizeForce_3(this, j_aLastWidth, j_aLastHeight, j_reason)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_aLastWidth
    integer(4), value :: j_aLastHeight
    character(len=*), intent(in) :: j_reason
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_aFullWidth
    integer(4) :: j_aFullHeight
    class(GenericOperatingSystem), pointer :: j_operatingSystemInterface
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(CommonLabels), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(OperatingSystemFactory), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(SWTJOGLProcessor), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        jtemp3 => CommonLabels_jm_getInstance_0()
        jtemp2 => j_stringMaker%jm_append_1(jtemp3%f_START_LABEL)
        jtemp1 => jtemp2%jm_append_1(j_reason)
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_SET_LAST_SIZE_METHOD_NAME)
        j_aFullWidth = j_aLastWidth
        j_aFullHeight = j_aLastHeight
        jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
        jtemp8 => j_stringMaker%jm_append_1(this%f_FULL_WIDTH)
        jtemp7 => jtemp8%jm_appendint_1(j_aFullWidth)
        jtemp6 => jtemp7%jm_append_1(this%f_FULL_HEIGHT)
        jtemp5 => jtemp6%jm_appendint_1(j_aFullHeight)
        jtemp4 => jtemp5%jm_append_1(this%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp4%jm_toString_0(), this, this%f_SET_LAST_SIZE_METHOD_NAME)
        jtemp9 => OperatingSystemFactory_jm_getInstance_0()
        j_operatingSystemInterface => jtemp9%jm_getOperatingSystemInstance_0()
        if (j_operatingSystemInterface%jm_isOverScan_0()) then
            j_aLastWidth = ((j_aLastWidth * j_operatingSystemInterface%jm_getOverScanXPercent_0()) / 100)
            j_aLastHeight = ((j_aLastHeight * j_operatingSystemInterface%jm_getOverScanYPercent_0()) / 100)
        end if
        if (j_operatingSystemInterface%jm_isScalable_0()) then
            if (this%jm_isPortraitWH_2(j_aLastWidth, j_aLastHeight)) then
                if ((real(j_aLastHeight, 4) > this%f_scaleLargestTo)) then
                    this%f_displayRatio = (this%f_scaleLargestTo / real(j_aLastHeight, 4))
                    this%f_ratio = (real(j_aLastHeight, 4) / this%f_scaleLargestTo)
                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                    jtemp13 => j_stringMaker%jm_append_1(this%f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)
                    jtemp12 => jtemp13%jm_appendfloat_1(this%f_displayRatio)
                    call this%f_logUtil%jm_putF_3(jtemp12%jm_toString_0(), this, this%f_SET_LAST_SIZE_METHOD_NAME)
                    j_aLastWidth = JR_d2i(real(((real(j_aLastWidth, 4) * this%f_displayRatio)), 8))
                    j_aLastHeight = JR_d2i(real(((real(j_aLastHeight, 4) * this%f_displayRatio)), 8))
                    call this%f_scalableListener%jm_scale_1(this%f_ratio)
                else
                    this%f_ratio = 1.0
                    call this%f_scalableListener%jm_scale_1(this%f_ratio)
                end if
            else
                if ((real(j_aLastWidth, 4) > this%f_scaleLargestTo)) then
                    this%f_displayRatio = (this%f_scaleLargestTo / real(j_aLastWidth, 4))
                    this%f_ratio = (real(j_aLastWidth, 4) / this%f_scaleLargestTo)
                    jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                    jtemp11 => j_stringMaker%jm_append_1(this%f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)
                    jtemp10 => jtemp11%jm_appendfloat_1(this%f_displayRatio)
                    call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, this%f_SET_LAST_SIZE_METHOD_NAME)
                    j_aLastWidth = JR_d2i(real(((real(j_aLastWidth, 4) * this%f_displayRatio)), 8))
                    j_aLastHeight = JR_d2i(real(((real(j_aLastHeight, 4) * this%f_displayRatio)), 8))
                    call this%f_scalableListener%jm_scale_1(this%f_ratio)
                else
                    this%f_ratio = 1.0
                    call this%f_scalableListener%jm_scale_1(this%f_ratio)
                end if
            end if
        end if
        jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
        jtemp17 => j_stringMaker%jm_append_1(this%f_LAST_WIDTH)
        jtemp16 => jtemp17%jm_appendint_1(j_aLastWidth)
        jtemp15 => jtemp16%jm_append_1(this%f_LAST_HEIGHT)
        jtemp14 => jtemp15%jm_appendint_1(j_aLastHeight)
        call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, this%f_SET_LAST_SIZE_METHOD_NAME)
        this%f_xOffset = (j_aFullWidth - j_aLastWidth)
        this%f_yOffset = (j_aFullHeight - j_aLastHeight)
        this%f_left = this%f_scalableListener%jm_getLeft_1(this%f_xOffset)
        this%f_top = this%f_scalableListener%jm_getTop_1(this%f_yOffset)
        this%f_full_u0((this%f_WIDTH) + 1) = j_aFullWidth
        this%f_full_u0((this%f_HEIGHT) + 1) = j_aFullHeight
        this%f_last_u0((this%f_WIDTH) + 1) = j_aLastWidth
        this%f_lastHalf((this%f_WIDTH) + 1) = (shifta(this%f_last_u0((this%f_WIDTH) + 1), iand(1, 31)))
        this%f_last_u0((this%f_HEIGHT) + 1) = j_aLastHeight
        this%f_lastHalf((this%f_HEIGHT) + 1) = (shifta(this%f_last_u0((this%f_HEIGHT) + 1), iand(1, 31)))
        jtemp18 => SWTJOGLProcessor_jm_getInstance_0()
        call jtemp18%jm_setCustom_3(j_aLastWidth, j_aLastHeight, this%f_ratio)
        call this%jm_add_1(this%f_SET_LAST_SIZE_METHOD_NAME)
  end subroutine

  recursive function DisplayInfoSingleton_jm_isPortraitWH_2(this, j_lastWidth, j_lastHeight) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_lastWidth
    integer(4), value :: j_lastHeight
    logical :: jresult
        if ((j_lastHeight > j_lastWidth)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function DisplayInfoSingleton_jm_isPortrait_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    logical :: jresult
        jresult = this%jm_isPortraitWH_2(this%f_last_u0((this%f_WIDTH) + 1), this%f_last_u0((this%f_HEIGHT) + 1))
        return
  end function

  recursive subroutine DisplayInfoSingleton_jm_add_1(this, j_reason)
    class(DisplayInfoSingleton), target :: this
    character(len=*), intent(in) :: j_reason
    class(StringMaker), pointer :: j_stringMaker
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        jtemp20 => j_stringMaker%jm_append_1(this%f_REASON)
        jtemp19 => jtemp20%jm_append_1(j_reason)
        call this%f_logUtil%jm_putF_3(jtemp19%jm_toString_0(), this, this%f_FIRE_METHOD_NAME)
        jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
        call this%f_logUtil%jm_putF_3(this%jm_toStringAppend_1(j_stringMaker), this, this%f_FIRE_METHOD_NAME)
        jdiscardBoolean = this%f_list%jm_add_1(JR_boxString(j_reason))
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_process_0(this)
    class(DisplayInfoSingleton), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if ((this%f_list%jm_size_0() > 0)) then
                call this%jm_processForced_0()
            end if
            call this%f_list%jm_clear_0()
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_processForced_0(this)
    class(DisplayInfoSingleton), target :: this
    class(SWTJOGLProcessor), pointer :: j_swtJOGLProcessor
    class(DisplayChangeEventHandler), pointer :: jtemp21
    class(LastDisplayChangeEventHandler), pointer :: jtemp22
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_swtJOGLProcessor => SWTJOGLProcessor_jm_getInstance_0()
            call j_swtJOGLProcessor%jm_clear_0()
            jtemp21 => DisplayChangeEventHandler_jm_getInstance_0()
            call jtemp21%jm_fireEvent_1(this%f_displayChangeEvent)
            jtemp22 => LastDisplayChangeEventHandler_jm_getInstance_0()
            call jtemp22%jm_fireEvent_1(this%f_displayChangeEvent)
            call j_swtJOGLProcessor%jm_onSurfaceChanged_0()
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_update_2(this, j_displayable, j_reason)
    class(DisplayInfoSingleton), target :: this
    class(Displayable), target, optional :: j_displayable
    character(len=*), intent(in) :: j_reason
    integer(4) :: j_aLastWidth
    integer(4) :: j_aLastHeight
    integer(4) :: j_aFullWidth
    integer(4) :: j_aFullHeight
    class(StringMaker), pointer :: j_stringMaker
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(GenericOperatingSystem), pointer :: j_operatingSystemInterface
    class(StringMaker), pointer :: jtemp23
    class(StringMaker), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    class(StringMaker), pointer :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(CommonLabels), pointer :: jtemp31
    class(StringMaker), pointer :: jtemp32
    class(OperatingSystemFactory), pointer :: jtemp33
    class(StringMaker), pointer :: jtemp34
    class(StringMaker), pointer :: jtemp35
    class(StringMaker), pointer :: jtemp36
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(StringMaker), pointer :: jtemp39
    class(StringMaker), pointer :: jtemp40
    class(StringMaker), pointer :: jtemp41
    class(StringMaker), pointer :: jtemp42
    class(SWTJOGLProcessor), pointer :: jtemp43
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_aLastWidth = j_displayable%jm_getWidth_0()
        j_aLastHeight = j_displayable%jm_getHeight_0()
        j_aFullWidth = j_aLastWidth
        j_aFullHeight = j_aLastHeight
        j_stringMaker => StringMaker_jnew_0()
        jtemp31 => CommonLabels_jm_getInstance_0()
        jtemp30 => j_stringMaker%jm_append_1(jtemp31%f_START_LABEL)
        jtemp29 => jtemp30%jm_append_1(j_reason)
        jtemp28 => jtemp29%jm_append_1(this%f_LAST_WIDTH)
        jtemp27 => jtemp28%jm_appendint_1(j_aLastWidth)
        jtemp26 => jtemp27%jm_append_1(this%f_LAST_HEIGHT)
        jtemp25 => jtemp26%jm_appendint_1(j_aLastHeight)
        jtemp24 => jtemp25%jm_append_1(this%f_commonSeps%f_SPACE)
        jtemp23 => jtemp24%jm_append_1(this%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp23%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
        if (((j_aLastWidth > 0) .and. (j_aLastHeight > 0))) then
            j_features => Features_jm_getInstance_0()
            j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
            if ((((.not. j_features%jm_isDefault_1(j_openGLFeatureFactory%f_OPENGL)) .or. (this%f_last_u0((this%f_WIDTH) + 1) /= j_aLastWidth)) .or. (this%f_last_u0((this%f_HEIGHT) + 1) /= j_aLastHeight))) then
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp32 => j_stringMaker%jm_append_1(this%f_UPDATE_FROM_ORIENTATION_CHANGE)
                call this%f_logUtil%jm_putF_3(jtemp32%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                jtemp33 => OperatingSystemFactory_jm_getInstance_0()
                j_operatingSystemInterface => jtemp33%jm_getOperatingSystemInstance_0()
                if (j_operatingSystemInterface%jm_isOverScan_0()) then
                    j_aLastWidth = ((j_aLastWidth * j_operatingSystemInterface%jm_getOverScanXPercent_0()) / 100)
                    j_aLastHeight = ((j_aLastHeight * j_operatingSystemInterface%jm_getOverScanYPercent_0()) / 100)
                end if
                if (j_operatingSystemInterface%jm_isScalable_0()) then
                    if (this%jm_isPortraitWH_2(j_aLastWidth, j_aLastHeight)) then
                        if ((real(j_aLastHeight, 4) > this%f_scaleLargestTo)) then
                            this%f_displayRatio = (this%f_scaleLargestTo / real(j_aLastHeight, 4))
                            this%f_ratio = (real(j_aLastHeight, 4) / this%f_scaleLargestTo)
                            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                            jtemp37 => j_stringMaker%jm_append_1(this%f_ADJUSTING_FOR_SCALING_IN_PORTRAIT)
                            jtemp36 => jtemp37%jm_appendfloat_1(this%f_displayRatio)
                            call this%f_logUtil%jm_putF_3(jtemp36%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                            j_aLastWidth = JR_d2i(real(((real(j_aLastWidth, 4) * this%f_displayRatio)), 8))
                            j_aLastHeight = JR_d2i(real(((real(j_aLastHeight, 4) * this%f_displayRatio)), 8))
                            call this%f_scalableListener%jm_scale_1(this%f_ratio)
                        else
                            this%f_ratio = 1.0
                            call this%f_scalableListener%jm_scale_1(this%f_ratio)
                        end if
                    else
                        if ((real(j_aLastWidth, 4) > this%f_scaleLargestTo)) then
                            this%f_displayRatio = (this%f_scaleLargestTo / real(j_aLastWidth, 4))
                            this%f_ratio = (real(j_aLastWidth, 4) / this%f_scaleLargestTo)
                            jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                            jtemp35 => j_stringMaker%jm_append_1(this%f_ADJUSTING_FOR_SCALING_IN_LANDSCAPE)
                            jtemp34 => jtemp35%jm_appendfloat_1(this%f_displayRatio)
                            call this%f_logUtil%jm_putF_3(jtemp34%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                            j_aLastWidth = JR_d2i(real(((real(j_aLastWidth, 4) * this%f_displayRatio)), 8))
                            j_aLastHeight = JR_d2i(real(((real(j_aLastHeight, 4) * this%f_displayRatio)), 8))
                            call this%f_scalableListener%jm_scale_1(this%f_ratio)
                        else
                            this%f_ratio = 1.0
                            call this%f_scalableListener%jm_scale_1(this%f_ratio)
                        end if
                    end if
                end if
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp42 => j_stringMaker%jm_append_1(this%f_UPDATE_FROM_ORIENTATION_CHANGE)
                jtemp41 => jtemp42%jm_append_1(this%f_LAST_WIDTH)
                jtemp40 => jtemp41%jm_appendint_1(j_aLastWidth)
                jtemp39 => jtemp40%jm_append_1(this%f_LAST_HEIGHT)
                jtemp38 => jtemp39%jm_appendint_1(j_aLastHeight)
                call this%f_logUtil%jm_putF_3(jtemp38%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                this%f_xOffset = (j_aFullWidth - j_aLastWidth)
                this%f_yOffset = (j_aFullHeight - j_aLastHeight)
                this%f_left = this%f_scalableListener%jm_getLeft_1(this%f_xOffset)
                this%f_top = this%f_scalableListener%jm_getTop_1(this%f_yOffset)
                this%f_full_u0((this%f_WIDTH) + 1) = j_aFullWidth
                this%f_full_u0((this%f_HEIGHT) + 1) = j_aFullHeight
                this%f_last_u0((this%f_WIDTH) + 1) = j_aLastWidth
                this%f_lastHalf((this%f_WIDTH) + 1) = (shifta(this%f_last_u0((this%f_WIDTH) + 1), iand(1, 31)))
                this%f_last_u0((this%f_HEIGHT) + 1) = j_aLastHeight
                this%f_lastHalf((this%f_HEIGHT) + 1) = (shifta(this%f_last_u0((this%f_HEIGHT) + 1), iand(1, 31)))
                jtemp43 => SWTJOGLProcessor_jm_getInstance_0()
                call jtemp43%jm_setCustom_3(j_aLastWidth, j_aLastHeight, this%f_ratio)
                call this%jm_add_1(this%f_commonStrings%f_UPDATE)
            end if
        end if
  end subroutine

  recursive function DisplayInfoSingleton_jm_toString_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
        j_stringBuffer => StringMaker_jnew_0()
        jresult = this%jm_toStringAppend_1(j_stringBuffer)
        return
  end function

  recursive function DisplayInfoSingleton_jm_toStringAppend_1(this, j_stringBuffer) result(jresult)
    class(DisplayInfoSingleton), target :: this
    class(StringMaker), target, optional :: j_stringBuffer
    character(len=:), allocatable :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_DISPLAY_INFO)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_FULL_u4)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_full_u0((this%f_WIDTH) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_FULL_u4)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_full_u0((this%f_HEIGHT) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_LAST_u4)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_last_u0((this%f_WIDTH) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_LAST_u4)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_last_u0((this%f_HEIGHT) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_LAST_HALF)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_lastHalf((this%f_WIDTH) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_LAST_HALF)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_lastHalf((this%f_HEIGHT) + 1))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(merge(this%f_PORTRAIT, this%f_LANDSCAPE, this%jm_isPortrait_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function DisplayInfoSingleton_jm_getTop_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_top
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLeft_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_left
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLastWidth_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_WIDTH) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLastHeight_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_HEIGHT) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLastHalfWidth_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastHalf((this%f_WIDTH) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getLastHalfHeight_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_lastHalf((this%f_HEIGHT) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getCustomLastWidth_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_CUSTOM_WIDTH) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getCustomLastHeight_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_CUSTOM_HEIGHT) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getRawLastWidth_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_WIDTH) + 1)
        return
  end function

  recursive function DisplayInfoSingleton_jm_getRawLastHeight_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_last_u0((this%f_HEIGHT) + 1)
        return
  end function

  recursive subroutine DisplayInfoSingleton_jm_setCustom_2(this, j_width, j_height)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
        this%f_last_u0((this%f_CUSTOM_WIDTH) + 1) = j_width
        this%f_lastHalf((this%f_CUSTOM_WIDTH) + 1) = (shifta(this%f_last_u0((this%f_CUSTOM_WIDTH) + 1), iand(1, 31)))
        this%f_last_u0((this%f_CUSTOM_HEIGHT) + 1) = j_height
        this%f_lastHalf((this%f_CUSTOM_HEIGHT) + 1) = (shifta(this%f_last_u0((this%f_CUSTOM_HEIGHT) + 1), iand(1, 31)))
  end subroutine

  recursive subroutine DisplayInfoSingleton_jm_setScalableListener_1(this, j_scalableListener)
    class(DisplayInfoSingleton), target :: this
    class(BaseScalable), target, optional :: j_scalableListener
        this%f_scalableListener => j_scalableListener
  end subroutine

  recursive function DisplayInfoSingleton_jm_getScalableListener_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    class(ScalableListener), pointer :: jresult
        jresult => this%f_scalableListener
        return
  end function

  recursive function DisplayInfoSingleton_jm_getRatio_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    real(4) :: jresult
        jresult = this%f_ratio
        return
  end function

  recursive function DisplayInfoSingleton_jm_getDisplayRatio_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    real(4) :: jresult
        jresult = this%f_displayRatio
        return
  end function

  recursive subroutine DisplayInfoSingleton_jm_setOffset_2(this, j_left, j_top)
    class(DisplayInfoSingleton), target :: this
    integer(4), value :: j_left
    integer(4), value :: j_top
        this%f_left = j_left
  end subroutine

  recursive function DisplayInfoSingleton_jm_getxOffset_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_xOffset
        return
  end function

  recursive function DisplayInfoSingleton_jm_getyOffset_0(this) result(jresult)
    class(DisplayInfoSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_yOffset
        return
  end function
end module DisplayInfoSingleton_m

