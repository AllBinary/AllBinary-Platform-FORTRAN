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
module SingleSensorGameUpdateProcessor_m
  use JR_m
  use SensorGameUpdateProcessor_m
  implicit none

  type, extends(SensorGameUpdateProcessor) :: SingleSensorGameUpdateProcessor
  contains
    procedure :: jm_process_1 => SingleSensorGameUpdateProcessor_jm_process_1
    procedure :: jm_sendNotifications_1 => SingleSensorGameUpdateProcessor_jm_sendNotifications_1
  end type


contains

  function SingleSensorGameUpdateProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingleSensorGameUpdateProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingleSensorGameUpdateProcessor)
      jresult => object
    end select
  end function

  function SingleSensorGameUpdateProcessor_jnew_0() result(this)
    class(SingleSensorGameUpdateProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SingleSensorGameUpdateProcessor'
  end function

  recursive subroutine SingleSensorGameUpdateProcessor_jm_process_1(this, j_anyType)
    class(SingleSensorGameUpdateProcessor), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine

  recursive subroutine SingleSensorGameUpdateProcessor_jm_sendNotifications_1(this, j_anyType)
    class(SingleSensorGameUpdateProcessor), target :: this
    class(JObject), target, optional :: j_anyType
    continue
  end subroutine
end module SingleSensorGameUpdateProcessor_m

function SingleSensorGameUpdateProcessor_jnew_0_jext() result(this)
  use SingleSensorGameUpdateProcessor_m, only: JObject, SingleSensorGameUpdateProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SingleSensorGameUpdateProcessor_jnew_0()
end function

