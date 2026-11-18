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
module AllBinaryVibrationME_m
  use JR_m
  implicit none

  type, extends(JObject) :: AllBinaryVibrationME
  contains
    procedure :: jm_vibrate_3 => AllBinaryVibrationME_jm_vibrate_3
  end type


contains

  function AllBinaryVibrationME_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryVibrationME), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryVibrationME)
      jresult => object
    end select
  end function

  function AllBinaryVibrationME_jnew_0() result(this)
    class(AllBinaryVibrationME), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryVibrationME'
  end function

  recursive subroutine AllBinaryVibrationME_jm_vibrate_3(this, j_duration, j_type, j_volume)
    class(AllBinaryVibrationME), target :: this
    integer(4), value :: j_duration
    integer(4), value :: j_type
    integer(4), value :: j_volume
    continue
  end subroutine
end module AllBinaryVibrationME_m

