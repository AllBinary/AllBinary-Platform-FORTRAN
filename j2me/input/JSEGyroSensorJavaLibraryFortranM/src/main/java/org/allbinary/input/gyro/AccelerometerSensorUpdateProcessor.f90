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
module AccelerometerSensorUpdateProcessor_m
  use JR_m
  use Processor_m
  use Features_m
  use SensorFeatureFactory_m
  use NoCompleteMotionGestureInputEventListener_m
  use SingleKeyPressGameKeyFromMotionGestureEventListener_m
  use AccelerometerSensorFactory_m
  implicit none

  type, extends(Processor) :: AccelerometerSensorUpdateProcessor
  contains
    procedure :: jm_process_0 => AccelerometerSensorUpdateProcessor_jm_process_0
  end type


contains

  function AccelerometerSensorUpdateProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AccelerometerSensorUpdateProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AccelerometerSensorUpdateProcessor)
      jresult => object
    end select
  end function

  function AccelerometerSensorUpdateProcessor_jnew_0() result(this)
    class(AccelerometerSensorUpdateProcessor), pointer :: this
    allocate(this)
    this%jclass = 'AccelerometerSensorUpdateProcessor'
  end function

  recursive subroutine AccelerometerSensorUpdateProcessor_jm_process_0(this)
    class(AccelerometerSensorUpdateProcessor), target :: this
    class(SensorFeatureFactory), pointer :: j_sensorFeatureFactory
    class(Features), pointer :: jtemp1
    class(Features), pointer :: jtemp2
    class(Features), pointer :: jtemp3
    class(AccelerometerSensorFactory), pointer :: jtemp4
    class(AccelerometerSensorFactory), pointer :: jtemp5
    class(AccelerometerSensorFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_sensorFeatureFactory => SensorFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(j_sensorFeatureFactory%f_ORIENTATION_SENSORS)) then
            jtemp6 => AccelerometerSensorFactory_jm_getInstance_0()
            call jtemp6%jm_setCompleteMotionGestureInputEventListener_1(SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0())
        else if (jtemp2%jm_isFeature_1(j_sensorFeatureFactory%f_SIMULATED_ORIENTATION_SENSORS)) then
            jtemp5 => AccelerometerSensorFactory_jm_getInstance_0()
            call jtemp5%jm_setCompleteMotionGestureInputEventListener_1(SingleKeyPressGameKeyFromMotionGestureEventListener_jnew_0())
        else if (jtemp3%jm_isFeature_1(j_sensorFeatureFactory%f_NO_ORIENTATION)) then
            jtemp4 => AccelerometerSensorFactory_jm_getInstance_0()
            call jtemp4%jm_setCompleteMotionGestureInputEventListener_1(NoCompleteMotionGestureInputEventListener_jm_getInstance_0())
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end subroutine
end module AccelerometerSensorUpdateProcessor_m

function AccelerometerSensorUpdateProcessor_jnew_0_jext() result(this)
  use AccelerometerSensorUpdateProcessor_m, only: JObject, AccelerometerSensorUpdateProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AccelerometerSensorUpdateProcessor_jnew_0()
end function

