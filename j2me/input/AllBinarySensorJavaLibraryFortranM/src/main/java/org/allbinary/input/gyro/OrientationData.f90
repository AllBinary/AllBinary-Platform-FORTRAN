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
module OrientationData_m
  use JR_m
  implicit none

  type, extends(JObject) :: OrientationData
    character(len=:), allocatable :: f_ORIENTATION_SENSOR_INPUT
    character(len=:), allocatable :: f_ORIENTATION_TYPE
  end type

  class(OrientationData), pointer, save :: OrientationData_jcell_SINGLETON => null()
  logical, save :: OrientationData_jset_SINGLETON = .false.

contains

  function OrientationData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OrientationData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OrientationData)
      jresult => object
    end select
  end function

  function OrientationData_jstatic_SINGLETON() result(jresult)
    class(OrientationData), pointer :: jresult
    if (.not. OrientationData_jset_SINGLETON) then
      OrientationData_jset_SINGLETON = .true.
      OrientationData_jcell_SINGLETON => OrientationData_jnew_0()
    end if
    jresult => OrientationData_jcell_SINGLETON
  end function

  subroutine OrientationData_jsetstatic_SINGLETON(jvalue)
    class(OrientationData), target, optional :: jvalue
    OrientationData_jset_SINGLETON = .true.
    if (present(jvalue)) then
      OrientationData_jcell_SINGLETON => jvalue
    else
      OrientationData_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function OrientationData_jnew_0() result(this)
    class(OrientationData), pointer :: this
    allocate(this)
    this%jclass = 'OrientationData'
    this%f_ORIENTATION_SENSOR_INPUT = ''
    this%f_ORIENTATION_TYPE = ''
    this%f_ORIENTATION_SENSOR_INPUT = 'Orientation Sensor Input'
    this%f_ORIENTATION_TYPE = 'Orientation Type'
        continue
  end function

  recursive function OrientationData_jm_getInstance_0() result(jresult)
    class(OrientationData), pointer :: jresult
        jresult => OrientationData_jstatic_SINGLETON()
        return
  end function
end module OrientationData_m

