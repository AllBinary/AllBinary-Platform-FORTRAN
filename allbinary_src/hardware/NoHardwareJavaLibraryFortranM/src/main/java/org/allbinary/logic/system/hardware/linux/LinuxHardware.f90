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
! package org.allbinary.logic.system.hardware.linux
module LinuxHardware_m
  use JR_m
  use StdUtil_m
  use StringUtil_m
  use HardwareInterface_m
  use BridgeInterface_m
  use CpuInterface_m
  use EthernetInterface_m
  use FireWireInterface_m
  use HardDriveControllerInterface_m
  use HardDriveInterface_m
  use HardwareComponentInterface_m
  use MachineAccessControlAddressInterface_m
  use MediaInterface_m
  use MonitorInterface_m
  use UsbInterface_m
  use VideoInterface_m
  use ABHashtable_m
  implicit none

  type, extends(HardwareInterface) :: LinuxHardware
  contains
    procedure :: jm_getMultimedia_1 => LinuxHardware_jm_getMultimedia_1
    procedure :: jm_getBridge_1 => LinuxHardware_jm_getBridge_1
    procedure :: jm_getCpu_1 => LinuxHardware_jm_getCpu_1
    procedure :: jm_getEthernet_1 => LinuxHardware_jm_getEthernet_1
    procedure :: jm_getFireWire_1 => LinuxHardware_jm_getFireWire_1
    procedure :: jm_getHardDriveController_1 => LinuxHardware_jm_getHardDriveController_1
    procedure :: jm_getHardDrive_1 => LinuxHardware_jm_getHardDrive_1
    procedure :: jm_getMachineAccessControlAddress_1 => LinuxHardware_jm_getMachineAccessControlAddress_1
    procedure :: jm_getMonitor_1 => LinuxHardware_jm_getMonitor_1
    procedure :: jm_getUsb_1 => LinuxHardware_jm_getUsb_1
    procedure :: jm_getVideo_1 => LinuxHardware_jm_getVideo_1
    procedure :: jm_getComponent_1 => LinuxHardware_jm_getComponent_1
    procedure :: jm_toString_0 => LinuxHardware_jm_toString_0
    procedure :: jm_compareTo_1 => LinuxHardware_jm_compareTo_1
    procedure :: jm_difference_1 => LinuxHardware_jm_difference_1
    procedure :: jm_isNextHardware_1 => LinuxHardware_jm_isNextHardware_1
  end type


contains

  function LinuxHardware_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LinuxHardware), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LinuxHardware)
      jresult => object
    end select
  end function

  recursive function LinuxHardware_jnew_0() result(this)
    class(LinuxHardware), pointer :: this
    allocate(this)
    this%jclass = 'LinuxHardware'
        continue
  end function

  recursive function LinuxHardware_jm_getMultimedia_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(MediaInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getBridge_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(BridgeInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getCpu_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(CpuInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getEthernet_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(EthernetInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getFireWire_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(FireWireInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getHardDriveController_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(HardDriveControllerInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getHardDrive_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(HardDriveInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getMachineAccessControlAddress_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(MachineAccessControlAddressInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getMonitor_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(MonitorInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getUsb_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(UsbInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getVideo_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(VideoInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_getComponent_1(this, j_index) result(jresult)
    class(LinuxHardware), target :: this
    integer(4), value :: j_index
    class(HardwareComponentInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LinuxHardware_jm_toString_0(this) result(jresult)
    class(LinuxHardware), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function LinuxHardware_jm_compareTo_1(this, j_hardwareInterface) result(jresult)
    class(LinuxHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function LinuxHardware_jm_difference_1(this, j_hardwareInterface) result(jresult)
    class(LinuxHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp2
        jtemp2 => StdUtil_jm_getInstance_0()
        jresult => jtemp2%f_NULL_TABLE
        return
  end function

  recursive function LinuxHardware_jm_isNextHardware_1(this, j_nextLine) result(jresult)
    class(LinuxHardware), target :: this
    character(len=*), intent(in) :: j_nextLine
    logical :: jresult
        jresult = .false.
        return
  end function
end module LinuxHardware_m

