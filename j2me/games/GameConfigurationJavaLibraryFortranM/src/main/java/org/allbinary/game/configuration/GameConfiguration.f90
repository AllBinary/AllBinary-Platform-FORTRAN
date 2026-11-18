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
module GameConfiguration_m
  use JR_m
  use GameFeatureEvent_m
  use GameFeatureEventHandler_m
  use BooleanFactory_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use Integer_m
  use Boolean_m
  use GameConfigurationSingleton_m
  implicit none

  type, extends(JObject) :: GameConfiguration
    character(len=:), allocatable :: f_name
    integer(4) :: f_defaultValue = 0
    integer(4) :: f_value = 0
    integer(4) :: f_minValue = 0
    integer(4) :: f_maxValue = 0
    logical :: f_modifiable = .false.
  contains
    procedure :: jm_setValue_1 => GameConfiguration_jm_setValue_1
    procedure :: jm_getValue_0 => GameConfiguration_jm_getValue_0
    procedure :: jm_setMaxValue_1 => GameConfiguration_jm_setMaxValue_1
    procedure :: jm_getMaxValue_0 => GameConfiguration_jm_getMaxValue_0
    procedure :: jm_setMinValue_1 => GameConfiguration_jm_setMinValue_1
    procedure :: jm_getMinValue_0 => GameConfiguration_jm_getMinValue_0
    procedure :: jm_setName_1 => GameConfiguration_jm_setName_1
    procedure :: jm_getName_0 => GameConfiguration_jm_getName_0
    procedure :: jm_setDefaultValue_1 => GameConfiguration_jm_setDefaultValue_1
    procedure :: jm_getDefaultValue_0 => GameConfiguration_jm_getDefaultValue_0
    procedure :: jm_setDefault_0 => GameConfiguration_jm_setDefault_0
    procedure :: jm_toString_0 => GameConfiguration_jm_toString_0
    procedure :: jm_setModifiable_1 => GameConfiguration_jm_setModifiable_1
    procedure :: jm_isModifiable_0 => GameConfiguration_jm_isModifiable_0
  end type

  integer(4), save :: GameConfiguration_jcell_MIN_VALUE
  logical, save :: GameConfiguration_jset_MIN_VALUE = .false.

contains

  function GameConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfiguration)
      jresult => object
    end select
  end function

  function GameConfiguration_jstatic_MIN_VALUE() result(jresult)
    integer(4) :: jresult
    if (.not. GameConfiguration_jset_MIN_VALUE) then
      GameConfiguration_jset_MIN_VALUE = .true.
      GameConfiguration_jcell_MIN_VALUE = Integer_jstatic_MIN_VALUE()
    end if
    jresult = GameConfiguration_jcell_MIN_VALUE
  end function

  subroutine GameConfiguration_jsetstatic_MIN_VALUE(jvalue)
    integer(4), value :: jvalue
    GameConfiguration_jset_MIN_VALUE = .true.
    GameConfiguration_jcell_MIN_VALUE = jvalue
  end subroutine

  recursive function GameConfiguration_jnew_4(j_name, j_defaultValue, j_minValue, j_maxValue) result(this)
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_defaultValue
    integer(4), value :: j_minValue
    integer(4), value :: j_maxValue
    class(GameConfiguration), pointer :: this
    class(ABHashtable), pointer :: jtemp4
    class(GameConfigurationSingleton), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp1
    class(SmallIntegerSingletonFactory), pointer :: jtemp2
    class(BooleanFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameConfiguration'
    this%f_name = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
    jtemp2 => SmallIntegerSingletonFactory_jm_getInstance_0()
    this%f_defaultValue = jtemp2%jm_getAt_1(0)
    this%f_value = GameConfiguration_jstatic_MIN_VALUE()
    this%f_minValue = this%f_defaultValue
    this%f_maxValue = this%f_defaultValue
    jtemp3 => BooleanFactory_jm_getInstance_0()
    this%f_modifiable = jtemp3%f_TRUE
        call this%jm_setName_1(j_name)
        call this%jm_setDefaultValue_1(j_defaultValue)
        this%f_value = this%jm_getDefaultValue_0()
        call this%jm_setMinValue_1(j_minValue)
        call this%jm_setMaxValue_1(j_maxValue)
        jtemp5 => GameConfigurationSingleton_jm_getInstance_0()
        jtemp4 => jtemp5%jm_getHashtable_0()
        jdiscardRef => jtemp4%jm_put_2(this%jm_getName_0(), this)
  end function

  recursive subroutine GameConfiguration_jm_setValue_1(this, j_value)
    class(GameConfiguration), target :: this
    integer(4), value :: j_value
    integer(4) :: j_oldValue
    class(GameFeatureEventHandler), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_same(this%f_value, j_value))) then
            j_oldValue = this%f_value
            this%f_value = j_value
            jtemp12 => StringMaker_jnew_0()
            jtemp11 => jtemp12%jm_append_1(this%f_name)
            jtemp10 => jtemp11%jm_append_1(' value: from: ')
            jtemp9 => jtemp10%jm_appendint_1(int(j_oldValue, 4))
            jtemp8 => jtemp9%jm_append_1(' to ')
            jtemp7 => jtemp8%jm_appendint_1(int(this%f_value, 4))
            jtemp6 => GameFeatureEventHandler_jm_getInstance_0()
            call jtemp6%jm_fireEvent_1(GameFeatureEvent_jnew_2(this, jtemp7%jm_toString_0()))
        end if
  end subroutine

  recursive function GameConfiguration_jm_getValue_0(this) result(jresult)
    class(GameConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function

  recursive subroutine GameConfiguration_jm_setMaxValue_1(this, j_maxValue)
    class(GameConfiguration), target :: this
    integer(4), value :: j_maxValue
        this%f_maxValue = j_maxValue
  end subroutine

  recursive function GameConfiguration_jm_getMaxValue_0(this) result(jresult)
    class(GameConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_maxValue
        return
  end function

  recursive subroutine GameConfiguration_jm_setMinValue_1(this, j_minValue)
    class(GameConfiguration), target :: this
    integer(4), value :: j_minValue
        this%f_minValue = j_minValue
  end subroutine

  recursive function GameConfiguration_jm_getMinValue_0(this) result(jresult)
    class(GameConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_minValue
        return
  end function

  recursive subroutine GameConfiguration_jm_setName_1(this, j_name)
    class(GameConfiguration), target :: this
    character(len=*), intent(in) :: j_name
        this%f_name = j_name
  end subroutine

  recursive function GameConfiguration_jm_getName_0(this) result(jresult)
    class(GameConfiguration), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine GameConfiguration_jm_setDefaultValue_1(this, j_defaultValue)
    class(GameConfiguration), target :: this
    integer(4), value :: j_defaultValue
        this%f_defaultValue = j_defaultValue
  end subroutine

  recursive function GameConfiguration_jm_getDefaultValue_0(this) result(jresult)
    class(GameConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_defaultValue
        return
  end function

  recursive subroutine GameConfiguration_jm_setDefault_0(this)
    class(GameConfiguration), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setValue_1(this%jm_getDefaultValue_0())
  end subroutine

  recursive function GameConfiguration_jm_toString_0(this) result(jresult)
    class(GameConfiguration), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(Integer), pointer :: jtemp13
    class(Integer), pointer :: jtemp14
    class(Integer), pointer :: jtemp15
    class(Integer), pointer :: jtemp16
    class(Boolean), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Name: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_name)
        jdiscardRef => j_stringBuffer%jm_append_1(' Min: ')
        jtemp13 => this%jm_getMinValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(int(jtemp13, 4))
        jdiscardRef => j_stringBuffer%jm_append_1(' Max: ')
        jtemp14 => this%jm_getMaxValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(int(jtemp14, 4))
        jdiscardRef => j_stringBuffer%jm_append_1(' Value: ')
        jtemp15 => this%jm_getValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(int(jtemp15, 4))
        jdiscardRef => j_stringBuffer%jm_append_1(' Default: ')
        jtemp16 => this%jm_getDefaultValue_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(int(jtemp16, 4))
        jdiscardRef => j_stringBuffer%jm_append_1(' Modifiable: ')
        jtemp17 => this%jm_isModifiable_0()
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(jtemp17)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive subroutine GameConfiguration_jm_setModifiable_1(this, j_modifiable)
    class(GameConfiguration), target :: this
    logical, value :: j_modifiable
        this%f_modifiable = j_modifiable
  end subroutine

  recursive function GameConfiguration_jm_isModifiable_0(this) result(jresult)
    class(GameConfiguration), target :: this
    logical :: jresult
        jresult = this%f_modifiable
        return
  end function
end module GameConfiguration_m

