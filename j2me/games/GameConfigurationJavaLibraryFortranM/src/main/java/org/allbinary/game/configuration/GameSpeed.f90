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
module GameSpeed_m
  use JR_m
  use GameConfigurationCentral_m
  use GameConfiguration_m
  implicit none

  type, extends(JObject) :: GameSpeed
  contains
    procedure :: jm_getSpeed_0 => GameSpeed_jm_getSpeed_0
    procedure :: jm_getDelay_0 => GameSpeed_jm_getDelay_0
  end type

  class(GameSpeed), pointer, save :: GameSpeed_jcell_instance => null()
  logical, save :: GameSpeed_jset_instance = .false.

contains

  function GameSpeed_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameSpeed), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameSpeed)
      jresult => object
    end select
  end function

  function GameSpeed_jstatic_instance() result(jresult)
    class(GameSpeed), pointer :: jresult
    if (.not. GameSpeed_jset_instance) then
      GameSpeed_jset_instance = .true.
      GameSpeed_jcell_instance => GameSpeed_jnew_0()
    end if
    jresult => GameSpeed_jcell_instance
  end function

  subroutine GameSpeed_jsetstatic_instance(jvalue)
    class(GameSpeed), target, optional :: jvalue
    GameSpeed_jset_instance = .true.
    if (present(jvalue)) then
      GameSpeed_jcell_instance => jvalue
    else
      GameSpeed_jcell_instance => null()
    end if
  end subroutine

  function GameSpeed_jnew_0() result(this)
    class(GameSpeed), pointer :: this
    allocate(this)
    this%jclass = 'GameSpeed'
  end function

  recursive function GameSpeed_jm_getSpeed_0(this) result(jresult)
    class(GameSpeed), target :: this
    integer(4) :: jresult
    class(GameConfiguration), pointer :: j_speedGameConfiguration
    class(GameConfigurationCentral), pointer :: jtemp1
    class(Integer), pointer :: jtemp2
    class(Integer), pointer :: jtemp3
        jtemp1 => GameConfigurationCentral_jm_getInstance_0()
        j_speedGameConfiguration => jtemp1%f_SPEED
        jtemp2 => j_speedGameConfiguration%jm_getMaxValue_0()
        jtemp3 => j_speedGameConfiguration%jm_getValue_0()
        jresult = (((jtemp2%jm_intValue_0() - jtemp3%jm_intValue_0()) + 1))
        return
  end function

  recursive function GameSpeed_jm_getDelay_0(this) result(jresult)
    class(GameSpeed), target :: this
    integer(4) :: jresult
    class(GameConfiguration), pointer :: j_speedGameConfiguration
    class(GameConfigurationCentral), pointer :: jtemp4
    class(Integer), pointer :: jtemp5
    class(Integer), pointer :: jtemp6
        jtemp4 => GameConfigurationCentral_jm_getInstance_0()
        j_speedGameConfiguration => jtemp4%f_SPEED
        jtemp5 => j_speedGameConfiguration%jm_getMaxValue_0()
        jtemp6 => j_speedGameConfiguration%jm_getValue_0()
        jresult = (19 * ((jtemp5%jm_intValue_0() - jtemp6%jm_intValue_0())))
        return
  end function

  recursive function GameSpeed_jm_getInstance_0() result(jresult)
    class(GameSpeed), pointer :: jresult
        jresult => GameSpeed_jstatic_instance()
        return
  end function
end module GameSpeed_m

