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
module GameConfigurationCentral_m
  use JR_m
  use GameConfigurationPersistanceSingleton_m
  use KeyValuePersistance_m
  use NullUtil_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use CommonSeps_m
  use CommonStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use Integer_m
  use GameConfiguration_m
  implicit none

  type, extends(JObject) :: GameConfigurationCentral
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameConfiguration), pointer :: f_SCALE => null()
    class(GameConfiguration), pointer :: f_ORIENTATION => null()
    class(GameConfiguration), pointer :: f_SENSOR_UPDATE_RATE => null()
    class(GameConfiguration), pointer :: f_VIBRATION => null()
    class(GameConfiguration), pointer :: f_CHALLENGE_LEVEL => null()
    class(GameConfiguration), pointer :: f_COLLIDE_DAMAGE => null()
    class(GameConfiguration), pointer :: f_DURABILITY_CHALLENGE_LEVEL => null()
    class(GameConfiguration), pointer :: f_SPEED_CHALLENGE_LEVEL => null()
    class(GameConfiguration), pointer :: f_ATTACK_CHALLENGE_LEVEL => null()
    class(GameConfiguration), pointer :: f_CONTROL_LEVEL => null()
    class(GameConfiguration), pointer :: f_PLAYER_INPUT_WAIT => null()
    class(GameConfiguration), pointer :: f_SPEED => null()
    class(GameConfiguration), pointer :: f_SOUND_VOLUME => null()
    class(GameConfiguration), pointer :: f_MAX_GAME_OBJECTS => null()
    class(GameConfiguration), pointer :: f_MAX_LAYERS => null()
    integer(4) :: f_gameControlFidelity = 0
  contains
    procedure :: jm_load_1 => GameConfigurationCentral_jm_load_1
    procedure :: jm_setGameControlFidelity_1 => GameConfigurationCentral_jm_setGameControlFidelity_1
    procedure :: jm_getGameControlFidelity_0 => GameConfigurationCentral_jm_getGameControlFidelity_0
    procedure :: jm_toString_0 => GameConfigurationCentral_jm_toString_0
  end type

  class(JObject), pointer, save :: GameConfigurationCentral_jcell_SINGLETON => null()
  logical, save :: GameConfigurationCentral_jset_SINGLETON = .false.

contains

  function GameConfigurationCentral_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationCentral), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationCentral)
      jresult => object
    end select
  end function

  function GameConfigurationCentral_jstatic_SINGLETON() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameConfigurationCentral_jset_SINGLETON) then
      GameConfigurationCentral_jset_SINGLETON = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameConfigurationCentral_jcell_SINGLETON => jtemp1%f_NULL_OBJECT
    end if
    jresult => GameConfigurationCentral_jcell_SINGLETON
  end function

  subroutine GameConfigurationCentral_jsetstatic_SINGLETON(jvalue)
    class(JObject), target, optional :: jvalue
    GameConfigurationCentral_jset_SINGLETON = .true.
    if (present(jvalue)) then
      GameConfigurationCentral_jcell_SINGLETON => jvalue
    else
      GameConfigurationCentral_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function GameConfigurationCentral_jnew_0() result(this)
    class(GameConfigurationCentral), pointer :: this
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    allocate(this)
    this%jclass = 'GameConfigurationCentral'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    this%f_gameControlFidelity = 36
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        this%f_SCALE => GameConfiguration_jnew_4('Scale', j_smallIntegerSingletonFactory%jm_getAt_1(2), j_smallIntegerSingletonFactory%jm_getAt_1(2), j_smallIntegerSingletonFactory%jm_getAt_1(3))
        this%f_ORIENTATION => GameConfiguration_jnew_4('Orientation', j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(8))
        this%f_SENSOR_UPDATE_RATE => GameConfiguration_jnew_4('Sensor Update Rate', j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(3))
        this%f_VIBRATION => GameConfiguration_jnew_4('Vibration', j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(3))
        this%f_CHALLENGE_LEVEL => GameConfiguration_jnew_4('Global Challenge Level', j_smallIntegerSingletonFactory%jm_getAt_1(3), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_COLLIDE_DAMAGE => GameConfiguration_jnew_4('Collide Damage Challenge Level', j_smallIntegerSingletonFactory%jm_getAt_1(3), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_DURABILITY_CHALLENGE_LEVEL => GameConfiguration_jnew_4('Enemy Durability Challenge Level', j_smallIntegerSingletonFactory%jm_getAt_1(3), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_SPEED_CHALLENGE_LEVEL => GameConfiguration_jnew_4('Enemy Speed Challenge Level', j_smallIntegerSingletonFactory%jm_getAt_1(3), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_ATTACK_CHALLENGE_LEVEL => GameConfiguration_jnew_4('Enemy Attack Challenge Level', j_smallIntegerSingletonFactory%jm_getAt_1(3), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_CONTROL_LEVEL => GameConfiguration_jnew_4('Control Fidelity', j_smallIntegerSingletonFactory%jm_getAt_1(5), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_PLAYER_INPUT_WAIT => GameConfiguration_jnew_4('Input Wait', j_smallIntegerSingletonFactory%jm_getAt_1(5), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_SPEED => GameConfiguration_jnew_4('Game Speed (Device Specific)', j_smallIntegerSingletonFactory%jm_getAt_1(5), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_SOUND_VOLUME => GameConfiguration_jnew_4('Sound Volume', j_smallIntegerSingletonFactory%jm_getAt_1(6), j_smallIntegerSingletonFactory%jm_getAt_1(0), j_smallIntegerSingletonFactory%jm_getAt_1(10))
        this%f_MAX_GAME_OBJECTS => GameConfiguration_jnew_4('Max Game Objects', j_smallIntegerSingletonFactory%jm_getAt_1(20), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(50))
        this%f_MAX_LAYERS => GameConfiguration_jnew_4('Max Layers', j_smallIntegerSingletonFactory%jm_getAt_1(20), j_smallIntegerSingletonFactory%jm_getAt_1(1), j_smallIntegerSingletonFactory%jm_getAt_1(50))
  end function

  recursive function GameConfigurationCentral_jm_getInstance_0() result(jresult)
    class(GameConfigurationCentral), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GameConfigurationCentral_jstatic_SINGLETON(), jtemp2%f_NULL_OBJECT)) then
            call GameConfigurationCentral_jsetstatic_SINGLETON(GameConfigurationCentral_jnew_0())
        end if
        jresult => GameConfigurationCentral_jcast(GameConfigurationCentral_jstatic_SINGLETON())
        return
  end function

  recursive subroutine GameConfigurationCentral_jm_load_1(this, j_abeClientInformation)
    class(GameConfigurationCentral), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommonStrings), pointer :: j_commonStrings
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    class(KeyValuePersistance), pointer :: j_keyValuePersistance
    class(BasicArrayList), pointer :: j_list
    class(ABHashtable), pointer :: j_hashtable
    class(JObject), pointer :: j_anyType
    character(len=:), allocatable :: j_value
    class(JObject), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! try
            j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
            j_keyValuePersistance => GameConfigurationPersistanceSingleton_jm_getInstance_0()
            call j_keyValuePersistance%jm_clear_0()
            call j_keyValuePersistance%jm_loadAll_1(j_abeClientInformation)
            j_list => j_keyValuePersistance%jm_getIds_0()
            if ((j_list%jm_size_0() > 0)) then
                j_hashtable => j_keyValuePersistance%jm_get_1(0)
                j_anyType => this%f_SCALE%jm_getName_0()
                j_value = j_hashtable%jm_get_1(j_anyType)
                jtemp3 => j_value
                call this%f_SCALE%jm_setValue_1(j_smallIntegerSingletonFactory%jm_getAt_1(jtemp3%jm_intValue_0()))
            else
                call this%f_logUtil%jm_putF_3('No Game Configuration To Load', this, j_commonStrings%f_LOAD)
            end if
  end subroutine

  recursive subroutine GameConfigurationCentral_jm_setGameControlFidelity_1(this, j_gameControlFidelity)
    class(GameConfigurationCentral), target :: this
    integer(4), value :: j_gameControlFidelity
        this%f_gameControlFidelity = j_gameControlFidelity
  end subroutine

  recursive function GameConfigurationCentral_jm_getGameControlFidelity_0(this) result(jresult)
    class(GameConfigurationCentral), target :: this
    integer(4) :: jresult
        jresult = this%f_gameControlFidelity
        return
  end function

  recursive function GameConfigurationCentral_jm_toString_0(this) result(jresult)
    class(GameConfigurationCentral), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonStrings
    class(Integer), pointer :: jtemp4
    class(Integer), pointer :: jtemp5
    class(Integer), pointer :: jtemp6
    class(Integer), pointer :: jtemp7
    class(Integer), pointer :: jtemp8
    class(Integer), pointer :: jtemp9
    class(Integer), pointer :: jtemp10
    class(Integer), pointer :: jtemp11
    class(Integer), pointer :: jtemp12
    class(Integer), pointer :: jtemp13
    class(Integer), pointer :: jtemp14
    class(Integer), pointer :: jtemp15
    class(Integer), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonStrings => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SCALE%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp4 => this%f_SCALE%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp4%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_ORIENTATION%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp5 => this%f_ORIENTATION%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp5%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SENSOR_UPDATE_RATE%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp6 => this%f_SENSOR_UPDATE_RATE%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp6%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_VIBRATION%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp7 => this%f_VIBRATION%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp7%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_CHALLENGE_LEVEL%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp8 => this%f_CHALLENGE_LEVEL%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp8%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_COLLIDE_DAMAGE%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp9 => this%f_COLLIDE_DAMAGE%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp9%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_DURABILITY_CHALLENGE_LEVEL%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp10 => this%f_DURABILITY_CHALLENGE_LEVEL%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp10%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPEED_CHALLENGE_LEVEL%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp11 => this%f_SPEED_CHALLENGE_LEVEL%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp11%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_ATTACK_CHALLENGE_LEVEL%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp12 => this%f_ATTACK_CHALLENGE_LEVEL%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp12%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_CONTROL_LEVEL%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp13 => this%f_CONTROL_LEVEL%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp13%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPEED%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp14 => this%f_SPEED%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp14%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_MAX_GAME_OBJECTS%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp15 => this%f_MAX_GAME_OBJECTS%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp15%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_COMMA_SEP)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_MAX_LAYERS%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonStrings%f_EQUALS)
        jtemp16 => this%f_MAX_LAYERS%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp16%jm_intValue_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module GameConfigurationCentral_m

