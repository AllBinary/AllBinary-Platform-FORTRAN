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
module GameFeatureItemStateListener_m
  use JR_m
  use GameConfigurationGauge_m
  use GameConfigurationUtil_m
  use GameOptionsForm_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameFeatureFactory_m
  use GameFeature_m
  use GameFeatureUtil_m
  implicit none

  type, extends(ItemStateListener) :: GameFeatureItemStateListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameOptionsForm), pointer :: f_gameOptionsForm => null()
  contains
    procedure :: jm_itemStateChanged_1 => GameFeatureItemStateListener_jm_itemStateChanged_1
  end type

  class(BasicArrayList), pointer, save :: GameFeatureItemStateListener_jcell_toggleList => null()
  logical, save :: GameFeatureItemStateListener_jset_toggleList = .false.

contains

  function GameFeatureItemStateListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureItemStateListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureItemStateListener)
      jresult => object
    end select
  end function

  function GameFeatureItemStateListener_jstatic_toggleList() result(jresult)
    class(BasicArrayList), pointer :: jresult
    if (.not. GameFeatureItemStateListener_jset_toggleList) then
      GameFeatureItemStateListener_jset_toggleList = .true.
      GameFeatureItemStateListener_jcell_toggleList => BasicArrayListD_jnew_0()
    end if
    jresult => GameFeatureItemStateListener_jcell_toggleList
  end function

  subroutine GameFeatureItemStateListener_jsetstatic_toggleList(jvalue)
    class(BasicArrayList), target, optional :: jvalue
    GameFeatureItemStateListener_jset_toggleList = .true.
    if (present(jvalue)) then
      GameFeatureItemStateListener_jcell_toggleList => jvalue
    else
      GameFeatureItemStateListener_jcell_toggleList => null()
    end if
  end subroutine

  recursive function GameFeatureItemStateListener_jnew_1(j_gameOptionsForm) result(this)
    class(GameOptionsForm), target, optional :: j_gameOptionsForm
    class(GameFeatureItemStateListener), pointer :: this
    class(GameFeatureFactory), pointer :: j_gameFeatureFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameFeatureItemStateListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_gameOptionsForm => j_gameOptionsForm
        j_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_ARTIFICIAL_INTELLEGENCE_PROCESSOR)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_DAMAGE_FLOATERS)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_DROPPED_ITEMS)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_GAME_INPUT_LAYER_PROCESSOR)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_HEALTH_BARS)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_SOUND)
        jdiscardBoolean = GameFeatureItemStateListener_jm_add_1(j_gameFeatureFactory%f_TICKABLE_LAYER_PROCESSOR)
  end function

  recursive subroutine GameFeatureItemStateListener_jm_add_1(j_gameFeature)
    class(GameFeature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => GameFeatureItemStateListener_jstatic_toggleList())
        if ((.not. jstaticref1%jm_contains_1(j_gameFeature))) then
            associate (jstaticref2 => GameFeatureItemStateListener_jstatic_toggleList())
            jdiscardBoolean = jstaticref2%jm_add_1(j_gameFeature)
            end associate
        end if
        end associate
  end subroutine

  recursive subroutine GameFeatureItemStateListener_jm_itemStateChanged_1(this, j_item)
    class(GameFeatureItemStateListener), target :: this
    class(Item), target, optional :: j_item
    character(len=:), allocatable :: j_itemLabel
    class(GameFeatureUtil), pointer :: j_gameFeatureUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(CommonLabels), pointer :: jtemp4
    class(GameConfigurationUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_itemLabel = j_item%jm_getLabel_0()
            jtemp4 => CommonLabels_jm_getInstance_0()
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1(jtemp4%f_ITEM_LABEL)
            jtemp1 => jtemp2%jm_append_1(j_itemLabel)
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, 'itemStateChanged')
            if ((JR_className(j_item) == 'GameConfigurationGauge')) then
                jtemp5 => GameConfigurationUtil_jm_getInstance_0()
                call jtemp5%jm_change_2(this%f_gameOptionsForm, GameConfigurationGauge_jcast(j_item))
            else if ((JR_className(j_item) == 'ChoiceGroup')) then
                j_gameFeatureUtil => GameFeatureUtil_jm_getInstance_0()
                if (j_gameFeatureUtil%jm_isExclusive_1(j_itemLabel)) then
                    call j_gameFeatureUtil%jm_updateExclusiveForChoiceGroup_1(ChoiceGroup_jcast(j_item))
                else
                    call j_gameFeatureUtil%jm_updateMultiple_1(ChoiceGroup_jcast(j_item))
                end if
            end if
  end subroutine
end module GameFeatureItemStateListener_m

