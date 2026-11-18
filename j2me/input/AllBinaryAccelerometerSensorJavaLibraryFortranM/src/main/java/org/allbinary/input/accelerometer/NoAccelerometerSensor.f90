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
! package org.allbinary.input.accelerometer
module NoAccelerometerSensor_m
  use JR_m
  use AllBinaryOrientationSensor_m
  use Orientation_m
  implicit none

  type, extends(AllBinaryOrientationSensor) :: NoAccelerometerSensor
  contains
    procedure :: jm_getOrientation_0 => NoAccelerometerSensor_jm_getOrientation_0
    procedure :: jm_onSensorChange_0 => NoAccelerometerSensor_jm_onSensorChange_0
  end type


contains

  function NoAccelerometerSensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoAccelerometerSensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoAccelerometerSensor)
      jresult => object
    end select
  end function

  recursive function NoAccelerometerSensor_jnew_0() result(this)
    class(NoAccelerometerSensor), pointer :: this
    allocate(this)
    this%jclass = 'NoAccelerometerSensor'
        continue
  end function

  recursive function NoAccelerometerSensor_jm_getOrientation_0(this) result(jresult)
    class(NoAccelerometerSensor), target :: this
    class(Orientation), pointer :: jresult
        jresult => Orientation_jstatic_NONE()
        return
  end function

  recursive subroutine NoAccelerometerSensor_jm_onSensorChange_0(this)
    class(NoAccelerometerSensor), target :: this
    continue
  end subroutine
end module NoAccelerometerSensor_m

function NoAccelerometerSensor_jnew_0_jext() result(this)
  use NoAccelerometerSensor_m, only: JObject, NoAccelerometerSensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoAccelerometerSensor_jnew_0()
end function

