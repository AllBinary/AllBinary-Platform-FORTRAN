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
! package org.allbinary.input.magnetic.field
module AllBinaryMagneticFieldSensor_m
  use JR_m
  use AllBinarySensor_m
  implicit none

  type, extends(AllBinarySensor) :: AllBinaryMagneticFieldSensor
  end type


contains

  function AllBinaryMagneticFieldSensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryMagneticFieldSensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryMagneticFieldSensor)
      jresult => object
    end select
  end function

  recursive function AllBinaryMagneticFieldSensor_jnew_0() result(this)
    class(AllBinaryMagneticFieldSensor), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryMagneticFieldSensor'
        continue
  end function
end module AllBinaryMagneticFieldSensor_m

function AllBinaryMagneticFieldSensor_jnew_0_jext() result(this)
  use AllBinaryMagneticFieldSensor_m, only: JObject, AllBinaryMagneticFieldSensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryMagneticFieldSensor_jnew_0()
end function

