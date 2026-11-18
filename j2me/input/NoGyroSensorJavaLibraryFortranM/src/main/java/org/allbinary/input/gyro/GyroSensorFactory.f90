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
! package org.allbinary.input.gyro
module GyroSensorFactory_m
  use JR_m
  use AllBinaryOrientationSensor_m
  use NoGyroSensor_m
  implicit none

  type, extends(JObject) :: GyroSensorFactory
  end type

  class(AllBinaryOrientationSensor), pointer, save :: GyroSensorFactory_jcell_allBinaryGyroSensor => null()
  logical, save :: GyroSensorFactory_jset_allBinaryGyroSensor = .false.

contains

  function GyroSensorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GyroSensorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GyroSensorFactory)
      jresult => object
    end select
  end function

  function GyroSensorFactory_jstatic_allBinaryGyroSensor() result(jresult)
    class(AllBinaryOrientationSensor), pointer :: jresult
    if (.not. GyroSensorFactory_jset_allBinaryGyroSensor) then
      GyroSensorFactory_jset_allBinaryGyroSensor = .true.
      GyroSensorFactory_jcell_allBinaryGyroSensor => AllBinaryOrientationSensor_jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR()
    end if
    jresult => GyroSensorFactory_jcell_allBinaryGyroSensor
  end function

  subroutine GyroSensorFactory_jsetstatic_allBinaryGyroSensor(jvalue)
    class(AllBinaryOrientationSensor), target, optional :: jvalue
    GyroSensorFactory_jset_allBinaryGyroSensor = .true.
    if (present(jvalue)) then
      GyroSensorFactory_jcell_allBinaryGyroSensor => jvalue
    else
      GyroSensorFactory_jcell_allBinaryGyroSensor => null()
    end if
  end subroutine

  function GyroSensorFactory_jnew_0() result(this)
    class(GyroSensorFactory), pointer :: this
    allocate(this)
    this%jclass = 'GyroSensorFactory'
  end function

  recursive subroutine GyroSensorFactory_jm_init_0()
        call GyroSensorFactory_jsetstatic_allBinaryGyroSensor(NoGyroSensor_jnew_0())
  end subroutine

  recursive function GyroSensorFactory_jm_getInstance_0() result(jresult)
    class(AllBinaryOrientationSensor), pointer :: jresult
        jresult => GyroSensorFactory_jstatic_allBinaryGyroSensor()
        return
  end function
end module GyroSensorFactory_m

