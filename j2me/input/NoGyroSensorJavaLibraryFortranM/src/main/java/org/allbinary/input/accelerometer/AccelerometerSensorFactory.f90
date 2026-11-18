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
module AccelerometerSensorFactory_m
  use JR_m
  use Features_m
  use SensorFeatureFactory_m
  use AllBinaryOrientationSensor_m
  use NoAccelerometerSensor_m
  implicit none

  type, extends(JObject) :: AccelerometerSensorFactory
  end type

  class(AllBinaryOrientationSensor), pointer, save :: AccelerometerSensorFactory_jcell_allBinaryAccelerometerSensor => null()
  logical, save :: AccelerometerSensorFactory_jset_allBinaryAccelerometerSensor = .false.

contains

  function AccelerometerSensorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AccelerometerSensorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AccelerometerSensorFactory)
      jresult => object
    end select
  end function

  function AccelerometerSensorFactory_jstatic_allBinaryAccelerometerSensor() result(jresult)
    class(AllBinaryOrientationSensor), pointer :: jresult
    if (.not. AccelerometerSensorFactory_jset_allBinaryAccelerometerSensor) then
      AccelerometerSensorFactory_jset_allBinaryAccelerometerSensor = .true.
      AccelerometerSensorFactory_jcell_allBinaryAccelerometerSensor => AllBinaryOrientationSensor_jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR()
    end if
    jresult => AccelerometerSensorFactory_jcell_allBinaryAccelerometerSensor
  end function

  subroutine AccelerometerSensorFactory_jsetstatic_allBinaryAccelerometerSensor(jvalue)
    class(AllBinaryOrientationSensor), target, optional :: jvalue
    AccelerometerSensorFactory_jset_allBinaryAccelerometerSensor = .true.
    if (present(jvalue)) then
      AccelerometerSensorFactory_jcell_allBinaryAccelerometerSensor => jvalue
    else
      AccelerometerSensorFactory_jcell_allBinaryAccelerometerSensor => null()
    end if
  end subroutine

  function AccelerometerSensorFactory_jnew_0() result(this)
    class(AccelerometerSensorFactory), pointer :: this
    allocate(this)
    this%jclass = 'AccelerometerSensorFactory'
  end function

  recursive subroutine AccelerometerSensorFactory_jm_init_0()
    class(Features), pointer :: j_features
    class(SensorFeatureFactory), pointer :: j_sensorFeatureFactory
        j_features => Features_jm_getInstance_0()
        j_sensorFeatureFactory => SensorFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isFeature_1(j_sensorFeatureFactory%f_ORIENTATION_SENSORS)) then
            error stop JR_toString(JR_newJObject('Exception'))
        else if (j_features%jm_isFeature_1(j_sensorFeatureFactory%f_SIMULATED_ORIENTATION_SENSORS)) then
            error stop JR_toString(JR_newJObject('Exception'))
        else if (j_features%jm_isFeature_1(j_sensorFeatureFactory%f_NO_ORIENTATION)) then
            call AccelerometerSensorFactory_jsetstatic_allBinaryAccelerometerSensor(NoAccelerometerSensor_jnew_0())
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end subroutine

  recursive function AccelerometerSensorFactory_jm_getInstance_0() result(jresult)
    class(AllBinaryOrientationSensor), pointer :: jresult
        jresult => AccelerometerSensorFactory_jstatic_allBinaryAccelerometerSensor()
        return
  end function
end module AccelerometerSensorFactory_m

