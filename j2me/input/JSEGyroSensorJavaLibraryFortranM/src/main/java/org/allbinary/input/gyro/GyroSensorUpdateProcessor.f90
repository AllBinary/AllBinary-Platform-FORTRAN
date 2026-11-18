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
module GyroSensorUpdateProcessor_m
  use JR_m
  use Processor_m
  implicit none

  type, extends(Processor) :: GyroSensorUpdateProcessor
  contains
    procedure :: jm_process_0 => GyroSensorUpdateProcessor_jm_process_0
  end type


contains

  function GyroSensorUpdateProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GyroSensorUpdateProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GyroSensorUpdateProcessor)
      jresult => object
    end select
  end function

  function GyroSensorUpdateProcessor_jnew_0() result(this)
    class(GyroSensorUpdateProcessor), pointer :: this
    allocate(this)
    this%jclass = 'GyroSensorUpdateProcessor'
  end function

  recursive subroutine GyroSensorUpdateProcessor_jm_process_0(this)
    class(GyroSensorUpdateProcessor), target :: this
    continue
  end subroutine
end module GyroSensorUpdateProcessor_m

function GyroSensorUpdateProcessor_jnew_0_jext() result(this)
  use GyroSensorUpdateProcessor_m, only: JObject, GyroSensorUpdateProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GyroSensorUpdateProcessor_jnew_0()
end function

