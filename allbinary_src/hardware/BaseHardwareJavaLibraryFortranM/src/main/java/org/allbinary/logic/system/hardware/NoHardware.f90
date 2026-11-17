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
! package org.allbinary.logic.system.hardware
module NoHardware_m
  use JR_m
  use StdUtil_m
  use HardwareComponentInterface_m
  use NoHardwareComponent_m
  use ABHashtable_m
  use HardwareInterface_m
  implicit none

  type, extends(HardwareInterface) :: NoHardware
  contains
    procedure :: jm_getComponent_1 => NoHardware_jm_getComponent_1
    procedure :: jm_toString_0 => NoHardware_jm_toString_0
    procedure :: jm_compareTo_1 => NoHardware_jm_compareTo_1
    procedure :: jm_difference_1 => NoHardware_jm_difference_1
  end type

  class(HardwareInterface), pointer, save :: NoHardware_jcell_instance => null()
  logical, save :: NoHardware_jset_instance = .false.

contains

  function NoHardware_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoHardware), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoHardware)
      jresult => object
    end select
  end function

  function NoHardware_jstatic_instance() result(jresult)
    class(HardwareInterface), pointer :: jresult
    if (.not. NoHardware_jset_instance) then
      NoHardware_jset_instance = .true.
      NoHardware_jcell_instance => NoHardware_jnew_0()
    end if
    jresult => NoHardware_jcell_instance
  end function

  function NoHardware_jnew_0() result(this)
    class(NoHardware), pointer :: this
    allocate(this)
    this%jclass = 'NoHardware'
  end function

  recursive function NoHardware_jm_getInstance_0() result(jresult)
    class(HardwareInterface), pointer :: jresult
        jresult => NoHardware_jstatic_instance()
        return
  end function

  recursive function NoHardware_jm_getComponent_1(this, j_index) result(jresult)
    class(NoHardware), target :: this
    integer(4), value :: j_index
    class(HardwareComponentInterface), pointer :: jresult
        jresult => NoHardwareComponent_jm_getInstance_0()
        return
  end function

  recursive function NoHardware_jm_toString_0(this) result(jresult)
    class(NoHardware), target :: this
    character(len=:), allocatable :: jresult
        jresult = 'No Hardware'
        return
  end function

  recursive function NoHardware_jm_compareTo_1(this, j_hardwareInterface) result(jresult)
    class(NoHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function NoHardware_jm_difference_1(this, j_hardwareInterface) result(jresult)
    class(NoHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp1
        jtemp1 => StdUtil_jm_getInstance_0()
        jresult => jtemp1%f_NULL_TABLE
        return
  end function
end module NoHardware_m

