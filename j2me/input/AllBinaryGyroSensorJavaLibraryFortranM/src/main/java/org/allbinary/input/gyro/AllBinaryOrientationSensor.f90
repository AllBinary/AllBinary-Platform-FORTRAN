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
module AllBinaryOrientationSensor_m
  use JR_m
  use CompleteMotionGestureInputEventListenerInterface_m
  use NoCompleteMotionGestureInputEventListener_m
  use AllBinarySensor_m
  use Orientation_m
  use PrimitiveFloatUtil_m
  implicit none

  type, extends(AllBinarySensor) :: AllBinaryOrientationSensor
    real(4), allocatable :: f_sensorDataFloatArray(:)
    class(CompleteMotionGestureInputEventListenerInterface), pointer :: f_listener => null()
  contains
    procedure :: jm_setCompleteMotionGestureInputEventListener_1 => AllBinaryOrientationSensor_jm_setCompleteMotionGestureInputEventListener_1
    procedure :: jm_getOrientation_0 => AllBinaryOrientationSensor_jm_getOrientation_0
  end type

  class(AllBinaryOrientationSensor), pointer, save :: AllBinaryOrientationSensor_jcell_NULL_ALLBINARY_ORIENTATION_SENSOR => null()
  logical, save :: AllBinaryOrientationSensor_jset_NULL_ALLBINARY_ORIENTATION_SENSOR = .false.

contains

  function AllBinaryOrientationSensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryOrientationSensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryOrientationSensor)
      jresult => object
    end select
  end function

  function AllBinaryOrientationSensor_jstatic_NULL_ALLBINARY_ORIENTATION_SENSOR() result(jresult)
    class(AllBinaryOrientationSensor), pointer :: jresult
    if (.not. AllBinaryOrientationSensor_jset_NULL_ALLBINARY_ORIENTATION_SENSOR) then
      AllBinaryOrientationSensor_jset_NULL_ALLBINARY_ORIENTATION_SENSOR = .true.
      AllBinaryOrientationSensor_jcell_NULL_ALLBINARY_ORIENTATION_SENSOR => AllBinaryOrientationSensor_jnew_0()
    end if
    jresult => AllBinaryOrientationSensor_jcell_NULL_ALLBINARY_ORIENTATION_SENSOR
  end function

  subroutine AllBinaryOrientationSensor_jsetstatic_NULL_ALLBINARY_ORIENTATION_SENSOR(jvalue)
    class(AllBinaryOrientationSensor), target, optional :: jvalue
    AllBinaryOrientationSensor_jset_NULL_ALLBINARY_ORIENTATION_SENSOR = .true.
    if (present(jvalue)) then
      AllBinaryOrientationSensor_jcell_NULL_ALLBINARY_ORIENTATION_SENSOR => jvalue
    else
      AllBinaryOrientationSensor_jcell_NULL_ALLBINARY_ORIENTATION_SENSOR => null()
    end if
  end subroutine

  recursive function AllBinaryOrientationSensor_jnew_0() result(this)
    class(AllBinaryOrientationSensor), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryOrientationSensor'
    this%f_sensorDataFloatArray = PrimitiveFloatUtil_jm_getArrayInstance_0()
    this%f_listener => NoCompleteMotionGestureInputEventListener_jm_getInstance_0()
        continue
  end function

  recursive subroutine AllBinaryOrientationSensor_jm_setCompleteMotionGestureInputEventListener_1(this, j_completeMotionGestureInputEventListenerInterface)
    class(AllBinaryOrientationSensor), target :: this
    class(CompleteMotionGestureInputEventListenerInterface), target, optional :: j_completeMotionGestureInputEventListenerInterface
        this%f_listener => j_completeMotionGestureInputEventListenerInterface
  end subroutine

  recursive function AllBinaryOrientationSensor_jm_getOrientation_0(this) result(jresult)
    class(AllBinaryOrientationSensor), target :: this
    class(Orientation), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function
end module AllBinaryOrientationSensor_m

function AllBinaryOrientationSensor_jnew_0_jext() result(this)
  use AllBinaryOrientationSensor_m, only: JObject, AllBinaryOrientationSensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllBinaryOrientationSensor_jnew_0()
end function

