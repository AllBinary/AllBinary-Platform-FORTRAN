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
! package org.allbinary.input
module AllBinarySensorManager_m
  use JR_m
  use AccelerometerSensorFactory_m
  use GyroSensorFactory_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: AllBinarySensorManager
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    character(len=:), allocatable :: f_ORIENTATION_SENSOR_INPUT
    character(len=:), allocatable :: f_ORIENTATION_TYPE
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_init_0 => AllBinarySensorManager_jm_init_0
    procedure :: jm_getSensorNamesList_0 => AllBinarySensorManager_jm_getSensorNamesList_0
    procedure :: jm_shutdown_0 => AllBinarySensorManager_jm_shutdown_0
  end type

  class(JObject), pointer, save :: AllBinarySensorManager_jcell_instance => null()
  logical, save :: AllBinarySensorManager_jset_instance = .false.

contains

  function AllBinarySensorManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinarySensorManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinarySensorManager)
      jresult => object
    end select
  end function

  function AllBinarySensorManager_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. AllBinarySensorManager_jset_instance) then
      AllBinarySensorManager_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    AllBinarySensorManager_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => AllBinarySensorManager_jcell_instance
  end function

  subroutine AllBinarySensorManager_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    AllBinarySensorManager_jset_instance = .true.
    if (present(jvalue)) then
      AllBinarySensorManager_jcell_instance => jvalue
    else
      AllBinarySensorManager_jcell_instance => null()
    end if
  end subroutine

  recursive function AllBinarySensorManager_jnew_0() result(this)
    class(AllBinarySensorManager), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinarySensorManager'
    this%f_ORIENTATION_SENSOR_INPUT = ''
    this%f_ORIENTATION_TYPE = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_ORIENTATION_SENSOR_INPUT = 'Orientation Sensor Input'
    this%f_ORIENTATION_TYPE = 'Orientation Type'
    this%f_list => BasicArrayListD_jnew_0()
        continue ! try
            call GyroSensorFactory_jm_init_0()
            call AccelerometerSensorFactory_jm_init_0()
  end function

  recursive function AllBinarySensorManager_jm_getInstance_0() result(jresult)
    class(AllBinarySensorManager), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(AllBinarySensorManager_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call AllBinarySensorManager_jsetstatic_instance(AllBinarySensorManager_jnew_0())
        end if
        jresult => AllBinarySensorManager_jcast(AllBinarySensorManager_jstatic_instance())
        return
  end function

  recursive subroutine AllBinarySensorManager_jm_init_0(this)
    class(AllBinarySensorManager), target :: this
    continue
  end subroutine

  recursive function AllBinarySensorManager_jm_getSensorNamesList_0(this) result(jresult)
    class(AllBinarySensorManager), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function

  recursive subroutine AllBinarySensorManager_jm_shutdown_0(this)
    class(AllBinarySensorManager), target :: this
    continue
  end subroutine
end module AllBinarySensorManager_m

