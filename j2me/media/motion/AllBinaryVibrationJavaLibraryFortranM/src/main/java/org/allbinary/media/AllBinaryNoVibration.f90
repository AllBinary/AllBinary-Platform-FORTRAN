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
module AllBinaryNoVibration_m
  use JR_m
  use AllBinaryVibrationME_m
  implicit none

  type, extends(AllBinaryVibrationME) :: AllBinaryNoVibration
  contains
    procedure :: jm_vibrate_3 => AllBinaryNoVibration_jm_vibrate_3
  end type

  class(AllBinaryVibrationME), pointer, save :: AllBinaryNoVibration_jcell_NO_VIBRATION => null()
  logical, save :: AllBinaryNoVibration_jset_NO_VIBRATION = .false.

contains

  function AllBinaryNoVibration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryNoVibration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryNoVibration)
      jresult => object
    end select
  end function

  function AllBinaryNoVibration_jstatic_NO_VIBRATION() result(jresult)
    class(AllBinaryVibrationME), pointer :: jresult
    if (.not. AllBinaryNoVibration_jset_NO_VIBRATION) then
      AllBinaryNoVibration_jset_NO_VIBRATION = .true.
      AllBinaryNoVibration_jcell_NO_VIBRATION => AllBinaryNoVibration_jnew_0()
    end if
    jresult => AllBinaryNoVibration_jcell_NO_VIBRATION
  end function

  subroutine AllBinaryNoVibration_jsetstatic_NO_VIBRATION(jvalue)
    class(AllBinaryVibrationME), target, optional :: jvalue
    AllBinaryNoVibration_jset_NO_VIBRATION = .true.
    if (present(jvalue)) then
      AllBinaryNoVibration_jcell_NO_VIBRATION => jvalue
    else
      AllBinaryNoVibration_jcell_NO_VIBRATION => null()
    end if
  end subroutine

  function AllBinaryNoVibration_jnew_0() result(this)
    class(AllBinaryNoVibration), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryNoVibration'
  end function

  recursive subroutine AllBinaryNoVibration_jm_vibrate_3(this, j_duration, j_type, j_volume)
    class(AllBinaryNoVibration), target :: this
    integer(4), value :: j_duration
    integer(4), value :: j_type
    integer(4), value :: j_volume
    continue
  end subroutine
end module AllBinaryNoVibration_m

function AllBinaryNoVibration_jnew_0_jext() result(this)
  use AllBinaryNoVibration_m, only: JObject, AllBinaryNoVibration_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryNoVibration_jnew_0()
end function

