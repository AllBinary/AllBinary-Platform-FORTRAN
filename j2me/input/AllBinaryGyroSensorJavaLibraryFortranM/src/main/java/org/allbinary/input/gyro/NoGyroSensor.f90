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
module NoGyroSensor_m
  use JR_m
  use AllBinarySensorListener_m
  use Orientation_m
  use AllBinaryOrientationSensor_m
  implicit none

  type, extends(AllBinaryOrientationSensor) :: NoGyroSensor
  contains
    procedure :: jm_getOrientation_0 => NoGyroSensor_jm_getOrientation_0
    procedure :: jm_onSensorChange_0 => NoGyroSensor_jm_onSensorChange_0
  end type

  ! NoGyroSensor used as a AllBinarySensorListener
  type, extends(AllBinarySensorListener) :: NoGyroSensor_jas_AllBinarySensorListener
    class(NoGyroSensor), pointer :: jtarget => null()
  contains
    procedure :: jm_onSensorChange_0 => NoGyroSensor_jas_AllBinarySensorListener_jm_onSensorChange_0
  end type


contains

  function NoGyroSensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoGyroSensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoGyroSensor)
      jresult => object
    end select
  end function

  function NoGyroSensor_jas_AllBinarySensorListener_jnew(object) result(jresult)
    class(NoGyroSensor), target :: object
    class(NoGyroSensor_jas_AllBinarySensorListener), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NoGyroSensor'
    jresult%jtarget => object
  end function

  recursive subroutine NoGyroSensor_jas_AllBinarySensorListener_jm_onSensorChange_0(this)
    class(NoGyroSensor_jas_AllBinarySensorListener), target :: this
    call this%jtarget%jm_onSensorChange_0()
  end subroutine

  recursive function NoGyroSensor_jnew_0() result(this)
    class(NoGyroSensor), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NoGyroSensor'
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
  end function

  recursive function NoGyroSensor_jm_getOrientation_0(this) result(jresult)
    class(NoGyroSensor), target :: this
    class(Orientation), pointer :: jresult
        jresult => Orientation_jstatic_NONE()
        return
  end function

  recursive subroutine NoGyroSensor_jm_onSensorChange_0(this)
    class(NoGyroSensor), target :: this
    continue
  end subroutine
end module NoGyroSensor_m

function NoGyroSensor_jnew_0_jext() result(this)
  use NoGyroSensor_m, only: JObject, NoGyroSensor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoGyroSensor_jnew_0()
end function

