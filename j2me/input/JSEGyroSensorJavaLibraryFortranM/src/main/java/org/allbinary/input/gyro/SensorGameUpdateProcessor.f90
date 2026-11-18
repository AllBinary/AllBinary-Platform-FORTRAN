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
module SensorGameUpdateProcessor_m
  use JR_m
  use NoCompleteMotionGestureInputEventListener_m
  use AllBinarySensor_m
  use NoAllBinarySensor_m
  use AccelerometerSensorFactory_m
  use GyroSensorFactory_m
  implicit none

  type, extends(JObject) :: SensorGameUpdateProcessor
    class(AllBinarySensor), pointer :: f_inputSensor => null()
  contains
    procedure :: jm_setInputSensor_1 => SensorGameUpdateProcessor_jm_setInputSensor_1
    procedure :: jm_getInputSensor_0 => SensorGameUpdateProcessor_jm_getInputSensor_0
    procedure :: jm_process_1 => SensorGameUpdateProcessor_jm_process_1
    procedure :: jm_sendNotifications_1 => SensorGameUpdateProcessor_jm_sendNotifications_1
    procedure :: jm_isAnySensor_0 => SensorGameUpdateProcessor_jm_isAnySensor_0
    procedure :: jm_setNoSensors_0 => SensorGameUpdateProcessor_jm_setNoSensors_0
  end type


contains

  function SensorGameUpdateProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SensorGameUpdateProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SensorGameUpdateProcessor)
      jresult => object
    end select
  end function

  function SensorGameUpdateProcessor_jnew_0() result(this)
    class(SensorGameUpdateProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SensorGameUpdateProcessor'
    
  end function

  recursive subroutine SensorGameUpdateProcessor_jm_setInputSensor_1(this, j_inputSensor)
    class(SensorGameUpdateProcessor), target :: this
    class(AllBinarySensor), target, optional :: j_inputSensor
        this%f_inputSensor => j_inputSensor
  end subroutine

  recursive function SensorGameUpdateProcessor_jm_getInputSensor_0(this) result(jresult)
    class(SensorGameUpdateProcessor), target :: this
    class(AllBinarySensor), pointer :: jresult
        jresult => this%f_inputSensor
        return
  end function

  recursive subroutine SensorGameUpdateProcessor_jm_process_1(this, j_anyType)
    class(SensorGameUpdateProcessor), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive subroutine SensorGameUpdateProcessor_jm_sendNotifications_1(this, j_anyType)
    class(SensorGameUpdateProcessor), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive function SensorGameUpdateProcessor_jm_isAnySensor_0(this) result(jresult)
    class(SensorGameUpdateProcessor), target :: this
    logical :: jresult
        if (JR_same(this%f_inputSensor, NoAllBinarySensor_jm_getInstance_0())) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function

  recursive subroutine SensorGameUpdateProcessor_jm_setNoSensors_0(this)
    class(SensorGameUpdateProcessor), target :: this
    class(GyroSensorFactory), pointer :: jtemp1
    class(AccelerometerSensorFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GyroSensorFactory_jm_getInstance_0()
        call jtemp1%jm_setCompleteMotionGestureInputEventListener_1(NoCompleteMotionGestureInputEventListener_jm_getInstance_0())
        jtemp2 => AccelerometerSensorFactory_jm_getInstance_0()
        call jtemp2%jm_setCompleteMotionGestureInputEventListener_1(NoCompleteMotionGestureInputEventListener_jm_getInstance_0())
        call this%jm_setInputSensor_1(NoAllBinarySensor_jm_getInstance_0())
  end subroutine
end module SensorGameUpdateProcessor_m

