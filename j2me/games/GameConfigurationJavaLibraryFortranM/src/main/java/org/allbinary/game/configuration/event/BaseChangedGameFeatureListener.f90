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
! package org.allbinary.game.configuration.event
module BaseChangedGameFeatureListener_m
  use JR_m
  use Feature_m
  use Features_m
  use GameFeatureUtil_m
  use ForcedLogUtil_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use GameFeatureListenerInterface_m
  use GameFeatureEvent_m
  implicit none

  type, extends(GameFeatureListenerInterface) :: BaseChangedGameFeatureListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameFeatureUtil), pointer :: f_gameFeatureUtil => null()
    class(BasicArrayList), pointer :: f_list => null()
    logical :: f_changed = .false.
  contains
    procedure :: jm_onEvent_1 => BaseChangedGameFeatureListener_jm_onEvent_1
    procedure :: jm_onGameFeatureChange_1 => BaseChangedGameFeatureListener_jm_onGameFeatureChange_1
    procedure :: jm_add_1 => BaseChangedGameFeatureListener_jm_add_1
    procedure :: jm_remove_1 => BaseChangedGameFeatureListener_jm_remove_1
    procedure :: jm_setChanged_1 => BaseChangedGameFeatureListener_jm_setChanged_1
    procedure :: jm_isChangedFeature_1 => BaseChangedGameFeatureListener_jm_isChangedFeature_1
    procedure :: jm_isChanged_0 => BaseChangedGameFeatureListener_jm_isChanged_0
  end type


contains

  function BaseChangedGameFeatureListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseChangedGameFeatureListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseChangedGameFeatureListener)
      jresult => object
    end select
  end function

  function BaseChangedGameFeatureListener_jnew_0() result(this)
    class(BaseChangedGameFeatureListener), pointer :: this
    allocate(this)
    this%jclass = 'BaseChangedGameFeatureListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameFeatureUtil => GameFeatureUtil_jm_getInstance_0()
    this%f_list => BasicArrayListD_jnew_0()
    this%f_changed = .true.
  end function

  recursive subroutine BaseChangedGameFeatureListener_jm_onEvent_1(this, j_eventObject)
    class(BaseChangedGameFeatureListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(CommonStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => CommonStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_NOT_IMPLEMENTED, this)
  end subroutine

  recursive subroutine BaseChangedGameFeatureListener_jm_onGameFeatureChange_1(this, j_gameFeatureEvent)
    class(BaseChangedGameFeatureListener), target :: this
    class(GameFeatureEvent), target, optional :: j_gameFeatureEvent
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1(this%f_gameFeatureUtil%f_GAME_FEATURE_CHANGED)
        jtemp2 => jtemp3%jm_append_1(j_gameFeatureEvent%jm_getWhatChanged_0())
        call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, this%f_gameFeatureUtil%f_ON_GAME_FEATURE_CHANGE)
        jdiscardBoolean = this%f_list%jm_add_1(j_gameFeatureEvent%jm_getGameOption_0())
        call this%jm_setChanged_1(.true.)
  end subroutine

  recursive subroutine BaseChangedGameFeatureListener_jm_add_1(this, j_gameFeature)
    class(BaseChangedGameFeatureListener), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_gameFeature)
  end subroutine

  recursive subroutine BaseChangedGameFeatureListener_jm_remove_1(this, j_gameFeature)
    class(BaseChangedGameFeatureListener), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_remove_1(j_gameFeature)
  end subroutine

  recursive subroutine BaseChangedGameFeatureListener_jm_setChanged_1(this, j_initialized)
    class(BaseChangedGameFeatureListener), target :: this
    logical, value :: j_initialized
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_changed = j_initialized
        if ((.not. this%jm_isChanged_0())) then
            call this%f_list%jm_clear_0()
        end if
  end subroutine

  recursive function BaseChangedGameFeatureListener_jm_isChangedFeature_1(this, j_gameFeature) result(jresult)
    class(BaseChangedGameFeatureListener), target :: this
    class(Feature), target, optional :: j_gameFeature
    logical :: jresult
    logical :: j_isChanged
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp5
    class(Features), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_isChanged = this%f_list%jm_contains_1(j_gameFeature)
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('GameFeature: ')
        jtemp5 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%jm_toString_1(j_gameFeature))
        jdiscardRef => j_stringBuffer%jm_append_1(' isFeature: ')
        jtemp6 => Features_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(jtemp6%jm_isFeature_1(j_gameFeature))
        jdiscardRef => j_stringBuffer%jm_append_1(' isChanged: ')
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(j_isChanged)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'isChanged')
        jresult = j_isChanged
        return
  end function

  recursive function BaseChangedGameFeatureListener_jm_isChanged_0(this) result(jresult)
    class(BaseChangedGameFeatureListener), target :: this
    logical :: jresult
        jresult = this%f_changed
        return
  end function
end module BaseChangedGameFeatureListener_m

