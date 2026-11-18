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
! package org.allbinary.game.configuration
module InGameFeatures_m
  use JR_m
  use Features_m
  use GameFeatureChoiceGroups_m
  use InGameFeatureChoiceGroups_m
  use SensorFeatureFactory_m
  use TouchFeatureFactory_m
  use Init_m
  use OrientationData_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(Init) :: InGameFeatures
  contains
    procedure :: jm_init_0 => InGameFeatures_jm_init_0
    procedure :: jm_addToInGameMenu_0 => InGameFeatures_jm_addToInGameMenu_0
    procedure :: jm_isAny_0 => InGameFeatures_jm_isAny_0
  end type


contains

  function InGameFeatures_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InGameFeatures), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InGameFeatures)
      jresult => object
    end select
  end function

  function InGameFeatures_jnew_0() result(this)
    class(InGameFeatures), pointer :: this
    allocate(this)
    this%jclass = 'InGameFeatures'
  end function

  recursive subroutine InGameFeatures_jm_init_0(this)
    class(InGameFeatures), target :: this
    character(len=:), allocatable :: j_LABEL
    class(OrientationData), pointer :: j_orientationData
    class(BasicArrayList), pointer :: j_exclusiveOrientationSensorVector
    class(InGameFeatureChoiceGroups), pointer :: j_inGameFeatureChoiceGroups
    class(JObject), pointer :: j_inGameExclusiveOrientationSensorVectorCanBeNull
    class(BasicArrayList), pointer :: j_inGameExclusiveOrientationSensorVector
    class(Features), pointer :: j_features
    class(BasicArrayList), pointer :: j_exclusiveScreenButtonsVector
    class(TouchFeatureFactory), pointer :: j_touchFeatureFactory
    class(ABHashtable), pointer :: jtemp1
    class(GameFeatureChoiceGroups), pointer :: jtemp2
    class(ABHashtable), pointer :: jtemp3
    class(TouchFeatureFactory), pointer :: jtemp4
    class(TouchFeatureFactory), pointer :: jtemp5
    class(TouchFeatureFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_LABEL = 'Screen Buttons'
        j_orientationData => OrientationData_jm_getInstance_0()
        jtemp2 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        jtemp1 => jtemp2%jm_get_0()
        j_exclusiveOrientationSensorVector => BasicArrayList_jcast(jtemp1%jm_get_1(j_orientationData%f_ORIENTATION_SENSOR_INPUT))
        j_inGameFeatureChoiceGroups => InGameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        if (associated(j_exclusiveOrientationSensorVector)) then
            jtemp3 => j_inGameFeatureChoiceGroups%jm_get_0()
            j_inGameExclusiveOrientationSensorVectorCanBeNull => jtemp3%jm_get_1(j_orientationData%f_ORIENTATION_SENSOR_INPUT)
            if ((.not. associated(j_inGameExclusiveOrientationSensorVectorCanBeNull))) then
                call this%jm_addToInGameMenu_0()
            else
                j_inGameExclusiveOrientationSensorVector => BasicArrayList_jcast(j_inGameExclusiveOrientationSensorVectorCanBeNull)
                if ((j_inGameExclusiveOrientationSensorVector%jm_size_0() == 0)) then
                    call this%jm_addToInGameMenu_0()
                end if
            end if
        end if
        j_features => Features_jm_getInstance_0()
        jtemp4 => TouchFeatureFactory_jm_getInstance_0()
        jtemp5 => TouchFeatureFactory_jm_getInstance_0()
        jtemp6 => TouchFeatureFactory_jm_getInstance_0()
        if (((j_features%jm_isFeature_1(jtemp4%f_SHOW_SCREEN_BUTTONS) .or. j_features%jm_isFeature_1(jtemp5%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)) .or. j_features%jm_isFeature_1(jtemp6%f_HIDE_SCREEN_BUTTONS))) then
            j_exclusiveScreenButtonsVector => BasicArrayListD_jnew_0()
            j_touchFeatureFactory => TouchFeatureFactory_jm_getInstance_0()
            jdiscardBoolean = j_exclusiveScreenButtonsVector%jm_add_1(j_touchFeatureFactory%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            jdiscardBoolean = j_exclusiveScreenButtonsVector%jm_add_1(j_touchFeatureFactory%f_SHOW_SCREEN_BUTTONS)
            jdiscardBoolean = j_exclusiveScreenButtonsVector%jm_add_1(j_touchFeatureFactory%f_HIDE_SCREEN_BUTTONS)
            call j_inGameFeatureChoiceGroups%jm_add_2(j_LABEL, j_exclusiveScreenButtonsVector)
        end if
  end subroutine

  recursive subroutine InGameFeatures_jm_addToInGameMenu_0(this)
    class(InGameFeatures), target :: this
    class(OrientationData), pointer :: j_orientationData
    class(BasicArrayList), pointer :: j_inGameExclusiveOrientationSensorVector
    class(SensorFeatureFactory), pointer :: jtemp7
    class(SensorFeatureFactory), pointer :: jtemp8
    class(InGameFeatureChoiceGroups), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_orientationData => OrientationData_jm_getInstance_0()
        j_inGameExclusiveOrientationSensorVector => BasicArrayListD_jnew_0()
        jtemp7 => SensorFeatureFactory_jm_getInstance_0()
        jdiscardBoolean = j_inGameExclusiveOrientationSensorVector%jm_add_1(jtemp7%f_ORIENTATION_SENSORS)
        jtemp8 => SensorFeatureFactory_jm_getInstance_0()
        jdiscardBoolean = j_inGameExclusiveOrientationSensorVector%jm_add_1(jtemp8%f_NO_ORIENTATION)
        jtemp9 => InGameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        call jtemp9%jm_add_2(j_orientationData%f_ORIENTATION_SENSOR_INPUT, j_inGameExclusiveOrientationSensorVector)
  end subroutine

  recursive function InGameFeatures_jm_isAny_0(this) result(jresult)
    class(InGameFeatures), target :: this
    logical :: jresult
    class(Features), pointer :: j_features
    class(TouchFeatureFactory), pointer :: j_touchFeatureFactory
    class(BasicArrayList), pointer :: j_exclusiveOrientationSensorVector
    class(ABHashtable), pointer :: jtemp10
    class(GameFeatureChoiceGroups), pointer :: jtemp11
    class(OrientationData), pointer :: jtemp12
        j_features => Features_jm_getInstance_0()
        j_touchFeatureFactory => TouchFeatureFactory_jm_getInstance_0()
        if (((j_features%jm_isFeature_1(j_touchFeatureFactory%f_SHOW_SCREEN_BUTTONS) .or. j_features%jm_isFeature_1(j_touchFeatureFactory%f_AUTO_HIDE_SHOW_SCREEN_BUTTONS)) .or. j_features%jm_isFeature_1(j_touchFeatureFactory%f_HIDE_SCREEN_BUTTONS))) then
            jresult = .true.
            return
        end if
        jtemp12 => OrientationData_jm_getInstance_0()
        jtemp11 => GameFeatureChoiceGroups_jm_getExclusiveInstance_0()
        jtemp10 => jtemp11%jm_get_0()
        j_exclusiveOrientationSensorVector => BasicArrayList_jcast(jtemp10%jm_get_1(jtemp12%f_ORIENTATION_SENSOR_INPUT))
        if (associated(j_exclusiveOrientationSensorVector)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function
end module InGameFeatures_m

function InGameFeatures_jnew_0_jext() result(this)
  use InGameFeatures_m, only: JObject, InGameFeatures_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => InGameFeatures_jnew_0()
end function

