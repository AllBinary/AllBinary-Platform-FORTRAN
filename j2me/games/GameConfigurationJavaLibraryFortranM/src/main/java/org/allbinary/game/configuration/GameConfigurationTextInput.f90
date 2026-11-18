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
module GameConfigurationTextInput_m
  use JR_m
  use StdUtil_m
  use StringUtil_m
  use ABHashtable_m
  implicit none

  type, extends(JObject) :: GameConfigurationTextInput
    character(len=:), allocatable :: f_label
    character(len=:), allocatable :: f_text
  contains
    procedure :: jm_setText_1 => GameConfigurationTextInput_jm_setText_1
    procedure :: jm_getText_0 => GameConfigurationTextInput_jm_getText_0
    procedure :: jm_setLabel_1 => GameConfigurationTextInput_jm_setLabel_1
    procedure :: jm_getLabel_0 => GameConfigurationTextInput_jm_getLabel_0
  end type

  class(ABHashtable), pointer, save :: GameConfigurationTextInput_jcell_hashtable => null()
  logical, save :: GameConfigurationTextInput_jset_hashtable = .false.
  class(GameConfigurationTextInput), pointer, save :: GameConfigurationTextInput_jcell_SIMULATOR_IP => null()
  logical, save :: GameConfigurationTextInput_jset_SIMULATOR_IP = .false.
  class(GameConfigurationTextInput), pointer, save :: GameConfigurationTextInput_jcell_SIMULATOR_PORT => null()
  logical, save :: GameConfigurationTextInput_jset_SIMULATOR_PORT = .false.

contains

  function GameConfigurationTextInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationTextInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationTextInput)
      jresult => object
    end select
  end function

  function GameConfigurationTextInput_jstatic_hashtable() result(jresult)
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp1
    if (.not. GameConfigurationTextInput_jset_hashtable) then
      GameConfigurationTextInput_jset_hashtable = .true.
      jtemp1 => StdUtil_jm_getInstance_0()
    GameConfigurationTextInput_jcell_hashtable => jtemp1%jm_createHashtable_0()
    end if
    jresult => GameConfigurationTextInput_jcell_hashtable
  end function

  subroutine GameConfigurationTextInput_jsetstatic_hashtable(jvalue)
    class(ABHashtable), target, optional :: jvalue
    GameConfigurationTextInput_jset_hashtable = .true.
    if (present(jvalue)) then
      GameConfigurationTextInput_jcell_hashtable => jvalue
    else
      GameConfigurationTextInput_jcell_hashtable => null()
    end if
  end subroutine

  function GameConfigurationTextInput_jstatic_SIMULATOR_IP() result(jresult)
    class(GameConfigurationTextInput), pointer :: jresult
    if (.not. GameConfigurationTextInput_jset_SIMULATOR_IP) then
      GameConfigurationTextInput_jset_SIMULATOR_IP = .true.
      GameConfigurationTextInput_jcell_SIMULATOR_IP => GameConfigurationTextInput_jnew_2('IP: ', '192.168.1.3')
    end if
    jresult => GameConfigurationTextInput_jcell_SIMULATOR_IP
  end function

  subroutine GameConfigurationTextInput_jsetstatic_SIMULATOR_IP(jvalue)
    class(GameConfigurationTextInput), target, optional :: jvalue
    GameConfigurationTextInput_jset_SIMULATOR_IP = .true.
    if (present(jvalue)) then
      GameConfigurationTextInput_jcell_SIMULATOR_IP => jvalue
    else
      GameConfigurationTextInput_jcell_SIMULATOR_IP => null()
    end if
  end subroutine

  function GameConfigurationTextInput_jstatic_SIMULATOR_PORT() result(jresult)
    class(GameConfigurationTextInput), pointer :: jresult
    if (.not. GameConfigurationTextInput_jset_SIMULATOR_PORT) then
      GameConfigurationTextInput_jset_SIMULATOR_PORT = .true.
      GameConfigurationTextInput_jcell_SIMULATOR_PORT => GameConfigurationTextInput_jnew_2('Port: ', '8010')
    end if
    jresult => GameConfigurationTextInput_jcell_SIMULATOR_PORT
  end function

  subroutine GameConfigurationTextInput_jsetstatic_SIMULATOR_PORT(jvalue)
    class(GameConfigurationTextInput), target, optional :: jvalue
    GameConfigurationTextInput_jset_SIMULATOR_PORT = .true.
    if (present(jvalue)) then
      GameConfigurationTextInput_jcell_SIMULATOR_PORT => jvalue
    else
      GameConfigurationTextInput_jcell_SIMULATOR_PORT => null()
    end if
  end subroutine

  recursive function GameConfigurationTextInput_jnew_2(j_label, j_text) result(this)
    character(len=*), intent(in) :: j_label
    character(len=*), intent(in) :: j_text
    class(GameConfigurationTextInput), pointer :: this
    class(StringUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameConfigurationTextInput'
    this%f_label = ''
    this%f_text = ''
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_label = jtemp2%f_EMPTY_STRING
    jtemp3 => StringUtil_jm_getInstance_0()
    this%f_text = jtemp3%f_EMPTY_STRING
        call this%jm_setText_1(j_text)
        call this%jm_setLabel_1(j_label)
        associate (jstaticref1 => GameConfigurationTextInput_jstatic_hashtable())
        jdiscardRef => jstaticref1%jm_put_2(this%jm_getLabel_0(), this)
        end associate
  end function

  recursive subroutine GameConfigurationTextInput_jm_update_1(j_textField)
    class(TextField), target, optional :: j_textField
    class(JObject), pointer :: j_anyType
    class(GameConfigurationTextInput), pointer :: j_gameConfigurationTextInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_anyType => j_textField%jm_getLabel_0()
        associate (jstaticref2 => GameConfigurationTextInput_jstatic_hashtable())
        j_gameConfigurationTextInput => GameConfigurationTextInput_jcast(jstaticref2%jm_get_1(j_anyType))
        end associate
        call j_gameConfigurationTextInput%jm_setText_1(j_textField%jm_getString_0())
  end subroutine

  recursive subroutine GameConfigurationTextInput_jm_setText_1(this, j_text)
    class(GameConfigurationTextInput), target :: this
    character(len=*), intent(in) :: j_text
        this%f_text = j_text
  end subroutine

  recursive function GameConfigurationTextInput_jm_getText_0(this) result(jresult)
    class(GameConfigurationTextInput), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_text
        return
  end function

  recursive subroutine GameConfigurationTextInput_jm_setLabel_1(this, j_label)
    class(GameConfigurationTextInput), target :: this
    character(len=*), intent(in) :: j_label
        this%f_label = j_label
  end subroutine

  recursive function GameConfigurationTextInput_jm_getLabel_0(this) result(jresult)
    class(GameConfigurationTextInput), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_label
        return
  end function

  recursive function GameConfigurationTextInput_jm_getHashtable_0() result(jresult)
    class(ABHashtable), pointer :: jresult
        jresult => GameConfigurationTextInput_jstatic_hashtable()
        return
  end function
end module GameConfigurationTextInput_m

