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
module NoMagneticFieldSensor_m
  use JR_m
  use AllBinarySensorListener_m
  use Orientation_m
  use AllBinaryMagneticFieldSensor_m
  implicit none

  type, extends(AllBinaryMagneticFieldSensor) :: NoMagneticFieldSensor
  contains
    procedure :: jm_getOrientation_0 => NoMagneticFieldSensor_jm_getOrientation_0
    procedure :: jm_onSensorChange_0 => NoMagneticFieldSensor_jm_onSensorChange_0
  end type


contains

  function NoMagneticFieldSensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoMagneticFieldSensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoMagneticFieldSensor)
      jresult => object
    end select
  end function

  function NoMagneticFieldSensor_jnew_0() result(this)
    class(NoMagneticFieldSensor), pointer :: this
    allocate(this)
    this%jclass = 'NoMagneticFieldSensor'
  end function

  recursive function NoMagneticFieldSensor_jm_getOrientation_0(this) result(jresult)
    class(NoMagneticFieldSensor), target :: this
    class(Orientation), pointer :: jresult
        jresult => Orientation_jstatic_NONE()
        return
  end function

  recursive subroutine NoMagneticFieldSensor_jm_onSensorChange_0(this)
    class(NoMagneticFieldSensor), target :: this
    continue
  end subroutine
end module NoMagneticFieldSensor_m

function NoMagneticFieldSensor_jnew_0_jext() result(this)
  use NoMagneticFieldSensor_m, only: JObject, NoMagneticFieldSensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoMagneticFieldSensor_jnew_0()
end function

