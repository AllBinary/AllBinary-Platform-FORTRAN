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
module GameConfigurationGauge_m
  use JR_m
  use GameConfiguration_m
  implicit none

  type, extends(Gauge) :: GameConfigurationGauge
  end type


contains

  function GameConfigurationGauge_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameConfigurationGauge), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameConfigurationGauge)
      jresult => object
    end select
  end function

  recursive function GameConfigurationGauge_jnew_1(j_gameConfiguration) result(this)
    class(GameConfiguration), target, optional :: j_gameConfiguration
    class(GameConfigurationGauge), pointer :: this
    class(Boolean), pointer :: jtemp1
    class(Integer), pointer :: jtemp2
    class(Integer), pointer :: jtemp3
    class(Integer), pointer :: jtemp4
    class(Integer), pointer :: jtemp5
    allocate(this)
    this%jclass = 'GameConfigurationGauge'
        jtemp2 => j_gameConfiguration%jm_getMaxValue_0()
        jtemp3 => j_gameConfiguration%jm_getMinValue_0()
        jtemp4 => j_gameConfiguration%jm_getValue_0()
        jtemp5 => j_gameConfiguration%jm_getMinValue_0()
        jtemp1 => j_gameConfiguration%jm_isModifiable_0()
        continue ! super()
  end function
end module GameConfigurationGauge_m

