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
module AllBinarySensor_m
  use JR_m
  use ForcedLogUtil_m
  use LogUtil_m
  use CommonStrings_m
  use AllBinarySensorListener_m
  implicit none

  type, extends(AllBinarySensorListener) :: AllBinarySensor
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_init_0 => AllBinarySensor_jm_init_0
    procedure :: jm_update_0 => AllBinarySensor_jm_update_0
    procedure :: jm_getId_0 => AllBinarySensor_jm_getId_0
    procedure :: jm_shutdown_0 => AllBinarySensor_jm_shutdown_0
    procedure :: jm_onSensorChange_0 => AllBinarySensor_jm_onSensorChange_0
  end type

  class(AllBinarySensor), pointer, save :: AllBinarySensor_jcell_NULL_ALLBINARY_SENSOR => null()
  logical, save :: AllBinarySensor_jset_NULL_ALLBINARY_SENSOR = .false.
  integer(4), save :: AllBinarySensor_jcell_max
  logical, save :: AllBinarySensor_jset_max = .false.

contains

  function AllBinarySensor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinarySensor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinarySensor)
      jresult => object
    end select
  end function

  function AllBinarySensor_jstatic_NULL_ALLBINARY_SENSOR() result(jresult)
    class(AllBinarySensor), pointer :: jresult
    if (.not. AllBinarySensor_jset_NULL_ALLBINARY_SENSOR) then
      AllBinarySensor_jset_NULL_ALLBINARY_SENSOR = .true.
      AllBinarySensor_jcell_NULL_ALLBINARY_SENSOR => AllBinarySensor_jnew_0()
    end if
    jresult => AllBinarySensor_jcell_NULL_ALLBINARY_SENSOR
  end function

  subroutine AllBinarySensor_jsetstatic_NULL_ALLBINARY_SENSOR(jvalue)
    class(AllBinarySensor), target, optional :: jvalue
    AllBinarySensor_jset_NULL_ALLBINARY_SENSOR = .true.
    if (present(jvalue)) then
      AllBinarySensor_jcell_NULL_ALLBINARY_SENSOR => jvalue
    else
      AllBinarySensor_jcell_NULL_ALLBINARY_SENSOR => null()
    end if
  end subroutine

  function AllBinarySensor_jstatic_max() result(jresult)
    integer(4) :: jresult
    if (.not. AllBinarySensor_jset_max) then
      AllBinarySensor_jset_max = .true.
      AllBinarySensor_jcell_max = 100
    end if
    jresult = AllBinarySensor_jcell_max
  end function

  subroutine AllBinarySensor_jsetstatic_max(jvalue)
    integer(4), value :: jvalue
    AllBinarySensor_jset_max = .true.
    AllBinarySensor_jcell_max = jvalue
  end subroutine

  recursive function AllBinarySensor_jnew_0() result(this)
    class(AllBinarySensor), pointer :: this
    allocate(this)
    this%jclass = 'AllBinarySensor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
        continue
  end function

  recursive subroutine AllBinarySensor_jm_init_0(this)
    class(AllBinarySensor), target :: this
    continue
  end subroutine

  recursive subroutine AllBinarySensor_jm_update_0(this)
    class(AllBinarySensor), target :: this
    continue
  end subroutine

  recursive subroutine AllBinarySensor_jm_setMax_1(j_max)
    integer(4), value :: j_max
        call AllBinarySensor_jsetstatic_max(j_max)
  end subroutine

  recursive function AllBinarySensor_jm_getMax_0() result(jresult)
    integer(4) :: jresult
        jresult = AllBinarySensor_jstatic_max()
        return
  end function

  recursive function AllBinarySensor_jm_getId_0(this) result(jresult)
    class(AllBinarySensor), target :: this
    integer(4) :: jresult
        jresult = AllBinarySensor_jm_getMax_0()
        return
  end function

  recursive subroutine AllBinarySensor_jm_shutdown_0(this)
    class(AllBinarySensor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'shutdown')
  end subroutine

  recursive subroutine AllBinarySensor_jm_onSensorChange_0(this)
    class(AllBinarySensor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
  end subroutine
end module AllBinarySensor_m

