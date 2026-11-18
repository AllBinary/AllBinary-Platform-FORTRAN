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
! package org.allbinary.game.configuration.feature
module Features_m
  use JR_m
  use GameFeatureEvent_m
  use GameFeatureEventHandler_m
  use NullUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use GenericOperatingSystem_m
  use OperatingSystemFactory_m
  use CommonLabels_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Feature_m
  use GameFeatureFactory_m
  use InputFeatureFactory_m
  use SensorFeatureFactory_m
  use TouchFeatureFactory_m
  use MainFeatureFactory_m
  implicit none

  type, extends(JObject) :: Features
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_list => null()
    class(BasicArrayList), pointer :: f_defaultList => null()
  contains
    procedure :: jm_addDefault_1 => Features_jm_addDefault_1
    procedure :: jm_add_1 => Features_jm_add_1
    procedure :: jm_removeDefault_1 => Features_jm_removeDefault_1
    procedure :: jm_remove_1 => Features_jm_remove_1
    procedure :: jm_init_0 => Features_jm_init_0
    procedure :: jm_isDefault_1 => Features_jm_isDefault_1
    procedure :: jm_isFeature_1 => Features_jm_isFeature_1
    procedure :: jm_toggle_1 => Features_jm_toggle_1
  end type

  class(JObject), pointer, save :: Features_jcell_SINGLETON => null()
  logical, save :: Features_jset_SINGLETON = .false.

contains

  function Features_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Features), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Features)
      jresult => object
    end select
  end function

  function Features_jstatic_SINGLETON() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. Features_jset_SINGLETON) then
      Features_jset_SINGLETON = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    Features_jcell_SINGLETON => jtemp1%f_NULL_OBJECT
    end if
    jresult => Features_jcell_SINGLETON
  end function

  subroutine Features_jsetstatic_SINGLETON(jvalue)
    class(JObject), target, optional :: jvalue
    Features_jset_SINGLETON = .true.
    if (present(jvalue)) then
      Features_jcell_SINGLETON => jvalue
    else
      Features_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function Features_jnew_0() result(this)
    class(Features), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Features'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
        this%f_list => BasicArrayListD_jnew_0()
        this%f_defaultList => BasicArrayListD_jnew_0()
        call this%jm_init_0()
  end function

  recursive function Features_jm_getInstance_0() result(jresult)
    class(Features), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(Features_jstatic_SINGLETON(), jtemp2%f_NULL_OBJECT)) then
            call Features_jsetstatic_SINGLETON(Features_jnew_0())
        end if
        jresult => Features_jcast(Features_jstatic_SINGLETON())
        return
  end function

  recursive subroutine Features_jm_addDefault_1(this, j_gameFeature)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_add_1(j_gameFeature)
        if ((.not. this%f_defaultList%jm_contains_1(j_gameFeature))) then
            jdiscardBoolean = this%f_defaultList%jm_add_1(j_gameFeature)
        end if
  end subroutine

  recursive subroutine Features_jm_add_1(this, j_gameFeature)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    class(GameFeatureEventHandler), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_list%jm_contains_1(j_gameFeature))) then
            jtemp6 => CommonLabels_jm_getInstance_0()
            jtemp5 => StringMaker_jnew_0()
            jtemp4 => jtemp5%jm_append_1(jtemp6%f_START_LABEL)
            jtemp3 => jtemp4%jm_append_1(j_gameFeature%jm_toString_0())
            call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_ADD)
            jdiscardBoolean = this%f_list%jm_add_1(j_gameFeature)
            jtemp7 => GameFeatureEventHandler_jm_getInstance_0()
            call jtemp7%jm_fireEvent_1(GameFeatureEvent_jnew_2(j_gameFeature, j_gameFeature%jm_toString_0()))
        end if
  end subroutine

  recursive subroutine Features_jm_removeDefault_1(this, j_gameFeature)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(CommonLabels), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp11 => CommonLabels_jm_getInstance_0()
        jtemp10 => StringMaker_jnew_0()
        jtemp9 => jtemp10%jm_append_1(jtemp11%f_START_LABEL)
        jtemp8 => jtemp9%jm_append_1(j_gameFeature%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp8%jm_toString_0(), this, 'removeDefault')
        call this%jm_remove_1(j_gameFeature)
        jdiscardBoolean = this%f_defaultList%jm_remove_1(j_gameFeature)
  end subroutine

  recursive subroutine Features_jm_remove_1(this, j_gameFeature)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(GameFeatureEventHandler), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_list%jm_contains_1(j_gameFeature)) then
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_REMOVE)
            jdiscardBoolean = this%f_list%jm_remove_1(j_gameFeature)
            jtemp12 => GameFeatureEventHandler_jm_getInstance_0()
            call jtemp12%jm_fireEvent_1(GameFeatureEvent_jnew_2(j_gameFeature, j_gameFeature%jm_toString_0()))
        end if
  end subroutine

  recursive subroutine Features_jm_init_0(this)
    class(Features), target :: this
    class(GameFeatureFactory), pointer :: j_gameFeatureFactory
    class(InputFeatureFactory), pointer :: j_inputFeatureFactory
    class(SensorFeatureFactory), pointer :: j_sensorFeatureFactory
    class(TouchFeatureFactory), pointer :: j_touchFeatureFactory
    class(GenericOperatingSystem), pointer :: j_operatingSystemInterface
    class(OperatingSystemFactory), pointer :: jtemp13
    class(MainFeatureFactory), pointer :: jtemp14
    class(MainFeatureFactory), pointer :: jtemp15
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
            j_inputFeatureFactory => InputFeatureFactory_jm_getInstance_0()
            j_sensorFeatureFactory => SensorFeatureFactory_jm_getInstance_0()
            j_touchFeatureFactory => TouchFeatureFactory_jm_getInstance_0()
            call this%jm_addDefault_1(j_gameFeatureFactory%f_ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            call this%jm_addDefault_1(j_gameFeatureFactory%f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            call this%jm_addDefault_1(j_gameFeatureFactory%f_GAME_INPUT_LAYER_PROCESSOR)
            call this%jm_addDefault_1(j_gameFeatureFactory%f_TICKABLE_LAYER_PROCESSOR)
            call this%jm_addDefault_1(j_inputFeatureFactory%f_MULTI_KEY_PRESS)
            call this%jm_addDefault_1(j_inputFeatureFactory%f_REMOVE_DUPLICATE_KEY_PRESSES)
            call this%jm_addDefault_1(j_gameFeatureFactory%f_SCREEN_SHAKE)
            call this%jm_addDefault_1(j_gameFeatureFactory%f_POST_IMAGE_LOADING_MODIFICATION)
            jtemp13 => OperatingSystemFactory_jm_getInstance_0()
            j_operatingSystemInterface => jtemp13%jm_getOperatingSystemInstance_0()
            if (j_operatingSystemInterface%jm_isOverScan_0()) then
                call this%jm_addDefault_1(j_sensorFeatureFactory%f_NO_ORIENTATION)
                call this%jm_addDefault_1(j_touchFeatureFactory%f_HIDE_SCREEN_BUTTONS)
            else
                call this%jm_addDefault_1(j_sensorFeatureFactory%f_ORIENTATION_SENSORS)
                call this%jm_addDefault_1(j_touchFeatureFactory%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            end if
            call this%jm_addDefault_1(j_touchFeatureFactory%f_TOUCH_ENABLED)
            jtemp14 => MainFeatureFactory_jm_getInstance_0()
            call this%jm_addDefault_1(jtemp14%f_FULL_SCREEN)
            jtemp15 => MainFeatureFactory_jm_getInstance_0()
            call this%jm_addDefault_1(jtemp15%f_LOAD_ONDEMAND)
  end subroutine

  recursive function Features_jm_isDefault_1(this, j_gameFeature) result(jresult)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    logical :: jresult
        jresult = this%f_defaultList%jm_contains_1(j_gameFeature)
        return
  end function

  recursive function Features_jm_isFeature_1(this, j_gameFeature) result(jresult)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    logical :: jresult
        jresult = this%f_list%jm_contains_1(j_gameFeature)
        return
  end function

  recursive subroutine Features_jm_toggle_1(this, j_gameFeature)
    class(Features), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%jm_isFeature_1(j_gameFeature)) then
            call this%jm_remove_1(j_gameFeature)
        else
            call this%jm_add_1(j_gameFeature)
        end if
  end subroutine
end module Features_m

