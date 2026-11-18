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
! package org.allbinary.media
module AllBinaryVibration_m
  use JR_m
  use GameConfigurationCentral_m
  use AllBinaryVibrationME_m
  use AllBinaryNoVibration_m
  implicit none

  type, extends(AllBinaryVibrationME) :: AllBinaryVibration
  contains
    procedure :: jm_vibrate_3 => AllBinaryVibration_jm_vibrate_3
  end type

  class(AllBinaryVibrationME), pointer, save :: AllBinaryVibration_jcell_VIBRATION => null()
  logical, save :: AllBinaryVibration_jset_VIBRATION = .false.

contains

  function AllBinaryVibration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryVibration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryVibration)
      jresult => object
    end select
  end function

  function AllBinaryVibration_jstatic_VIBRATION() result(jresult)
    class(AllBinaryVibrationME), pointer :: jresult
    if (.not. AllBinaryVibration_jset_VIBRATION) then
      AllBinaryVibration_jset_VIBRATION = .true.
      AllBinaryVibration_jcell_VIBRATION => AllBinaryNoVibration_jstatic_NO_VIBRATION()
    end if
    jresult => AllBinaryVibration_jcell_VIBRATION
  end function

  subroutine AllBinaryVibration_jsetstatic_VIBRATION(jvalue)
    class(AllBinaryVibrationME), target, optional :: jvalue
    AllBinaryVibration_jset_VIBRATION = .true.
    if (present(jvalue)) then
      AllBinaryVibration_jcell_VIBRATION => jvalue
    else
      AllBinaryVibration_jcell_VIBRATION => null()
    end if
  end subroutine

  recursive function AllBinaryVibration_jnew_0() result(this)
    class(AllBinaryVibration), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryVibration'
        continue
  end function

  recursive function AllBinaryVibration_jm_getInstance_0() result(jresult)
    class(AllBinaryVibrationME), pointer :: jresult
        jresult => AllBinaryVibration_jstatic_VIBRATION()
        return
  end function

  recursive subroutine AllBinaryVibration_jm_init_0()
    class(JObject), pointer :: jtemp1
    class(GameConfigurationCentral), pointer :: jtemp2
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        jtemp1 => jtemp2%f_VIBRATION%jm_getValue_0()
        if ((jtemp1%jm_intValue_0() == 0)) then
            call AllBinaryVibration_jsetstatic_VIBRATION(AllBinaryNoVibration_jstatic_NO_VIBRATION())
        else
            call AllBinaryVibration_jsetstatic_VIBRATION(AllBinaryVibration_jnew_0())
        end if
  end subroutine

  recursive subroutine AllBinaryVibration_jm_vibrate_3(this, j_duration, j_type, j_volume)
    class(AllBinaryVibration), target :: this
    integer(4), value :: j_duration
    integer(4), value :: j_type
    integer(4), value :: j_volume
    continue
  end subroutine
end module AllBinaryVibration_m

function AllBinaryVibration_jnew_0_jext() result(this)
  use AllBinaryVibration_m, only: JObject, AllBinaryVibration_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryVibration_jnew_0()
end function

