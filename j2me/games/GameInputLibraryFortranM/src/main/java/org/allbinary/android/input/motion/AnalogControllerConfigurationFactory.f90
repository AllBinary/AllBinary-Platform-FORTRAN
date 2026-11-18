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
! package org.allbinary.android.input.motion
module AnalogControllerConfigurationFactory_m
  use JR_m
  use AnalogControllerConfigurationEvent_m
  use AnalogControllerConfigurationEventHandler_m
  use ScaleFactorFactory_m
  implicit none

  type, extends(JObject) :: AnalogControllerConfigurationFactory
    integer(4) :: f_SCALE_FACTOR = 0
    integer(4) :: f_SCALE_VALUE = 0
    logical :: f_available = .false.
    class(AnalogControllerConfigurationEvent), pointer :: f_analogControllerConfigurationEvent => null()
  contains
    procedure :: jm_isAvailable_0 => AnalogControllerConfigurationFactory_jm_isAvailable_0
    procedure :: jm_setAvailable_1 => AnalogControllerConfigurationFactory_jm_setAvailable_1
  end type

  class(AnalogControllerConfigurationFactory), pointer, save :: AnalogControllerConfigurationFactory_jcell_instance => null()
  logical, save :: AnalogControllerConfigurationFactory_jset_instance = .false.

contains

  function AnalogControllerConfigurationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerConfigurationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerConfigurationFactory)
      jresult => object
    end select
  end function

  function AnalogControllerConfigurationFactory_jstatic_instance() result(jresult)
    class(AnalogControllerConfigurationFactory), pointer :: jresult
    if (.not. AnalogControllerConfigurationFactory_jset_instance) then
      AnalogControllerConfigurationFactory_jset_instance = .true.
      AnalogControllerConfigurationFactory_jcell_instance => AnalogControllerConfigurationFactory_jnew_0()
    end if
    jresult => AnalogControllerConfigurationFactory_jcell_instance
  end function

  subroutine AnalogControllerConfigurationFactory_jsetstatic_instance(jvalue)
    class(AnalogControllerConfigurationFactory), target, optional :: jvalue
    AnalogControllerConfigurationFactory_jset_instance = .true.
    if (present(jvalue)) then
      AnalogControllerConfigurationFactory_jcell_instance => jvalue
    else
      AnalogControllerConfigurationFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function AnalogControllerConfigurationFactory_jnew_0() result(this)
    class(AnalogControllerConfigurationFactory), pointer :: this
    class(ScaleFactorFactory), pointer :: jtemp1
    class(ScaleFactorFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'AnalogControllerConfigurationFactory'
    jtemp1 => ScaleFactorFactory_jm_getInstance_0()
    this%f_SCALE_FACTOR = jtemp1%f_DEFAULT_SCALE_FACTOR
    jtemp2 => ScaleFactorFactory_jm_getInstance_0()
    this%f_SCALE_VALUE = jtemp2%f_DEFAULT_SCALE_VALUE
    
    this%f_analogControllerConfigurationEvent => AnalogControllerConfigurationEvent_jnew_1(this)
        continue
  end function

  recursive function AnalogControllerConfigurationFactory_jm_getInstance_0() result(jresult)
    class(AnalogControllerConfigurationFactory), pointer :: jresult
        jresult => AnalogControllerConfigurationFactory_jstatic_instance()
        return
  end function

  recursive function AnalogControllerConfigurationFactory_jm_isAvailable_0(this) result(jresult)
    class(AnalogControllerConfigurationFactory), target :: this
    logical :: jresult
        jresult = this%f_available
        return
  end function

  recursive subroutine AnalogControllerConfigurationFactory_jm_setAvailable_1(this, j_available)
    class(AnalogControllerConfigurationFactory), target :: this
    logical, value :: j_available
    class(AnalogControllerConfigurationEventHandler), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_available = j_available
        jtemp3 => AnalogControllerConfigurationEventHandler_jm_getInstance_0()
        call jtemp3%jm_fireEvent_1(this%f_analogControllerConfigurationEvent)
  end subroutine
end module AnalogControllerConfigurationFactory_m

