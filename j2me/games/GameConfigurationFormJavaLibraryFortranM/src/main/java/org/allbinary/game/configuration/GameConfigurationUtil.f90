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
module GameConfigurationUtil_m
  use JR_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use CommonStrings_m
  use Integer_m
  use GameConfigurationSingleton_m
  use GameConfiguration_m
  use GameOptionsForm_m
  use GameConfigurationGauge_m
  use GameConfigurationCentral_m
  implicit none

  type, extends(JObject) :: GameConfigurationUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_GAUGE_UPDATE
    character(len=:), allocatable :: f_FROM
    character(len=:), allocatable :: f_TO
    integer(4) :: f_COMPETITION_VALUE = 0
  contains
    procedure :: jm_change_2 => GameConfigurationUtil_jm_change_2
    procedure :: jm_update_1 => GameConfigurationUtil_jm_update_1
    procedure :: jm_setDefault_1 => GameConfigurationUtil_jm_setDefault_1
    procedure :: jm_updateChallange_2 => GameConfigurationUtil_jm_updateChallange_2
    procedure :: jm_updateCompetitionValue_0 => GameConfigurationUtil_jm_updateCompetitionValue_0
    procedure :: jm_getCompetitionValue_0 => GameConfigurationUtil_jm_getCompetitionValue_0
  end type

  class(GameConfigurationUtil), pointer, save :: GameConfigurationUtil_jcell_instance => null()
  logical, save :: GameConfigurationUtil_jset_instance = .false.

contains

  function GameConfigurationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationUtil)
      jresult => object
    end select
  end function

  function GameConfigurationUtil_jstatic_instance() result(jresult)
    class(GameConfigurationUtil), pointer :: jresult
    if (.not. GameConfigurationUtil_jset_instance) then
      GameConfigurationUtil_jset_instance = .true.
      GameConfigurationUtil_jcell_instance => GameConfigurationUtil_jnew_0()
    end if
    jresult => GameConfigurationUtil_jcell_instance
  end function

  subroutine GameConfigurationUtil_jsetstatic_instance(jvalue)
    class(GameConfigurationUtil), target, optional :: jvalue
    GameConfigurationUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameConfigurationUtil_jcell_instance => jvalue
    else
      GameConfigurationUtil_jcell_instance => null()
    end if
  end subroutine

  function GameConfigurationUtil_jnew_0() result(this)
    class(GameConfigurationUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameConfigurationUtil'
    this%f_GAUGE_UPDATE = ''
    this%f_FROM = ''
    this%f_TO = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_GAUGE_UPDATE = 'Gauge Update: '
    this%f_FROM = ' from: '
    this%f_TO = ' to: '
    this%f_COMPETITION_VALUE = 1
  end function

  recursive function GameConfigurationUtil_jm_getInstance_0() result(jresult)
    class(GameConfigurationUtil), pointer :: jresult
        jresult => GameConfigurationUtil_jstatic_instance()
        return
  end function

  recursive subroutine GameConfigurationUtil_jm_change_2(this, j_gameOptionsForm, j_gauge)
    class(GameConfigurationUtil), target :: this
    class(GameOptionsForm), target, optional :: j_gameOptionsForm
    class(GameConfigurationGauge), target, optional :: j_gauge
    class(GameConfigurationSingleton), pointer :: j_gameConfigurationSingleton
    class(GameConfiguration), pointer :: j_gameConfiguration
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_update_1(j_gauge)
        j_gameConfigurationSingleton => GameConfigurationSingleton_jm_getInstance_0()
        j_gameConfiguration => j_gameConfigurationSingleton%jm_getInstanceByName_1(j_gauge%jm_getLabel_0())
        call this%jm_updateChallange_2(j_gameOptionsForm, j_gameConfiguration)
  end subroutine

  recursive subroutine GameConfigurationUtil_jm_update_1(this, j_gauge)
    class(GameConfigurationUtil), target :: this
    class(GameConfigurationGauge), target, optional :: j_gauge
    class(GameConfigurationSingleton), pointer :: j_gameConfigurationSingleton
    class(GameConfiguration), pointer :: j_gameConfiguration
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    integer(4) :: j_value
    class(StringMaker), pointer :: j_stringBuffer
    class(Integer), pointer :: jtemp1
    class(Integer), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameConfigurationSingleton => GameConfigurationSingleton_jm_getInstance_0()
        j_gameConfiguration => j_gameConfigurationSingleton%jm_getInstanceByName_1(j_gauge%jm_getLabel_0())
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp1 => j_gameConfiguration%jm_getMinValue_0()
        j_value = j_smallIntegerSingletonFactory%jm_getAt_1((j_gauge%jm_getValue_0() + jtemp1%jm_intValue_0()))
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_GAUGE_UPDATE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_gameConfiguration%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_FROM)
        jtemp2 => j_gameConfiguration%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp2%jm_intValue_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_TO)
        jdiscardRef => j_stringBuffer%jm_appendint_1(int(j_value, 4))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
        call j_gameConfiguration%jm_setValue_1(j_value)
  end subroutine

  recursive subroutine GameConfigurationUtil_jm_setDefault_1(this, j_gauge)
    class(GameConfigurationUtil), target :: this
    class(GameConfigurationGauge), target, optional :: j_gauge
    class(GameConfigurationSingleton), pointer :: j_gameConfigurationSingleton
    class(GameConfiguration), pointer :: j_gameConfiguration
    class(StringMaker), pointer :: j_stringBuffer
    class(Integer), pointer :: jtemp3
    class(Integer), pointer :: jtemp4
    class(Integer), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameConfigurationSingleton => GameConfigurationSingleton_jm_getInstance_0()
        j_gameConfiguration => j_gameConfigurationSingleton%jm_getInstanceByName_1(j_gauge%jm_getLabel_0())
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Gauge Default: ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_gameConfiguration%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_TO)
        jtemp3 => j_gameConfiguration%jm_getDefaultValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp3%jm_intValue_0())
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, 'setDefault')
        jtemp4 => j_gameConfiguration%jm_getDefaultValue_0()
        jtemp5 => j_gameConfiguration%jm_getMinValue_0()
        call j_gauge%jm_setValue_1((jtemp4%jm_intValue_0() - jtemp5%jm_intValue_0()))
        call j_gameConfiguration%jm_setValue_1(j_gameConfiguration%jm_getDefaultValue_0())
  end subroutine

  recursive subroutine GameConfigurationUtil_jm_updateChallange_2(this, j_gameOptionsForm, j_gameConfiguration)
    class(GameConfigurationUtil), target :: this
    class(GameOptionsForm), target, optional :: j_gameOptionsForm
    class(GameConfiguration), target, optional :: j_gameConfiguration
    class(GameConfigurationSingleton), pointer :: j_gameConfigurationSingleton
    class(GameConfigurationCentral), pointer :: j_gameConfigurationCentral
    integer(4) :: j_size
    class(Item), pointer :: j_item
    class(GameConfigurationGauge), pointer :: j_gauge
    character(len=:), allocatable :: j_name
    class(GameConfiguration), pointer :: j_nextGameConfiguration
    integer(4) :: j_index
    class(JObject), pointer :: jtemp6
    class(Integer), pointer :: jtemp7
    class(JObject), pointer :: jtemp8
    class(Integer), pointer :: jtemp9
    class(JObject), pointer :: jtemp10
    class(Integer), pointer :: jtemp11
    class(JObject), pointer :: jtemp12
    class(Integer), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameConfigurationSingleton => GameConfigurationSingleton_jm_getInstance_0()
        j_gameConfigurationCentral => GameConfigurationCentral_jm_getInstance_0()
        if (JR_same(j_gameConfiguration, j_gameConfigurationCentral%f_CHALLENGE_LEVEL)) then
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'updateChallange')
            call j_gameConfigurationCentral%f_COLLIDE_DAMAGE%jm_setValue_1(j_gameConfiguration%jm_getValue_0())
            call j_gameConfigurationCentral%f_ATTACK_CHALLENGE_LEVEL%jm_setValue_1(j_gameConfiguration%jm_getValue_0())
            call j_gameConfigurationCentral%f_DURABILITY_CHALLENGE_LEVEL%jm_setValue_1(j_gameConfiguration%jm_getValue_0())
            call j_gameConfigurationCentral%f_SPEED_CHALLENGE_LEVEL%jm_setValue_1(j_gameConfiguration%jm_getValue_0())
            j_size = j_gameOptionsForm%jm_size_0()
            j_index = 0
            do while ((j_index < j_size))
                j_item => j_gameOptionsForm%jm_get_1(j_index)
                if ((JR_className(j_item) == 'GameConfigurationGauge')) then
                    j_gauge => GameConfigurationGauge_jcast(j_item)
                    j_name = j_item%jm_getLabel_0()
                    j_nextGameConfiguration => j_gameConfigurationSingleton%jm_getInstanceByName_1(j_name)
                    if (JR_same(j_nextGameConfiguration, j_gameConfigurationCentral%f_COLLIDE_DAMAGE)) then
                        jtemp12 => j_gameConfigurationCentral%f_COLLIDE_DAMAGE%jm_getValue_0()
                        jtemp13 => j_gameConfiguration%jm_getMinValue_0()
                        call j_gauge%jm_setValue_1((jtemp12%jm_intValue_0() - jtemp13%jm_intValue_0()))
                    else if (JR_same(j_nextGameConfiguration, j_gameConfigurationCentral%f_DURABILITY_CHALLENGE_LEVEL)) then
                        jtemp10 => j_gameConfigurationCentral%f_DURABILITY_CHALLENGE_LEVEL%jm_getValue_0()
                        jtemp11 => j_gameConfiguration%jm_getMinValue_0()
                        call j_gauge%jm_setValue_1((jtemp10%jm_intValue_0() - jtemp11%jm_intValue_0()))
                    else if (JR_same(j_nextGameConfiguration, j_gameConfigurationCentral%f_ATTACK_CHALLENGE_LEVEL)) then
                        jtemp8 => j_gameConfigurationCentral%f_ATTACK_CHALLENGE_LEVEL%jm_getValue_0()
                        jtemp9 => j_gameConfiguration%jm_getMinValue_0()
                        call j_gauge%jm_setValue_1((jtemp8%jm_intValue_0() - jtemp9%jm_intValue_0()))
                    else if (JR_same(j_nextGameConfiguration, j_gameConfigurationCentral%f_SPEED_CHALLENGE_LEVEL)) then
                        jtemp6 => j_gameConfigurationCentral%f_SPEED_CHALLENGE_LEVEL%jm_getValue_0()
                        jtemp7 => j_gameConfiguration%jm_getMinValue_0()
                        call j_gauge%jm_setValue_1((jtemp6%jm_intValue_0() - jtemp7%jm_intValue_0()))
                    end if
                end if
                j_index = j_index + 1
            end do
        end if
  end subroutine

  recursive subroutine GameConfigurationUtil_jm_updateCompetitionValue_0(this)
    class(GameConfigurationUtil), target :: this
    class(GameConfigurationCentral), pointer :: j_gameConfigurationCentral
    class(JObject), pointer :: jtemp14
    class(JObject), pointer :: jtemp15
    class(JObject), pointer :: jtemp16
    class(JObject), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'updateCompetitionValue')
        j_gameConfigurationCentral => GameConfigurationCentral_jm_getInstance_0()
        jtemp14 => j_gameConfigurationCentral%f_COLLIDE_DAMAGE%jm_getValue_0()
        jtemp15 => j_gameConfigurationCentral%f_ATTACK_CHALLENGE_LEVEL%jm_getValue_0()
        jtemp16 => j_gameConfigurationCentral%f_DURABILITY_CHALLENGE_LEVEL%jm_getValue_0()
        jtemp17 => j_gameConfigurationCentral%f_SPEED_CHALLENGE_LEVEL%jm_getValue_0()
        this%f_COMPETITION_VALUE = (((jtemp14%jm_intValue_0() + jtemp15%jm_intValue_0()) + jtemp16%jm_intValue_0()) + jtemp17%jm_intValue_0())
        this%f_COMPETITION_VALUE = (shifta(this%f_COMPETITION_VALUE, iand(2, 31)))
  end subroutine

  recursive function GameConfigurationUtil_jm_getCompetitionValue_0(this) result(jresult)
    class(GameConfigurationUtil), target :: this
    integer(4) :: jresult
        jresult = this%f_COMPETITION_VALUE
        return
  end function
end module GameConfigurationUtil_m

