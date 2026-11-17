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
! package org.allbinary.logic.system.hardware.windows
module WindowsHardware_m
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

  type, extends(HardwareInterface) :: WindowsHardware
  contains
    procedure :: jm_getMultimedia_1 => WindowsHardware_jm_getMultimedia_1
    procedure :: jm_getBridge_1 => WindowsHardware_jm_getBridge_1
    procedure :: jm_getCpu_1 => WindowsHardware_jm_getCpu_1
    procedure :: jm_getEthernet_1 => WindowsHardware_jm_getEthernet_1
    procedure :: jm_getFireWire_1 => WindowsHardware_jm_getFireWire_1
    procedure :: jm_getHardDriveController_1 => WindowsHardware_jm_getHardDriveController_1
    procedure :: jm_getHardDrive_1 => WindowsHardware_jm_getHardDrive_1
    procedure :: jm_getMachineAccessControlAddress_1 => WindowsHardware_jm_getMachineAccessControlAddress_1
    procedure :: jm_getMonitor_1 => WindowsHardware_jm_getMonitor_1
    procedure :: jm_getUsb_1 => WindowsHardware_jm_getUsb_1
    procedure :: jm_getVideo_1 => WindowsHardware_jm_getVideo_1
    procedure :: jm_getComponent_1 => WindowsHardware_jm_getComponent_1
    procedure :: jm_toString_0 => WindowsHardware_jm_toString_0
    procedure :: jm_compareTo_1 => WindowsHardware_jm_compareTo_1
    procedure :: jm_difference_1 => WindowsHardware_jm_difference_1
  end type


contains

  function WindowsHardware_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WindowsHardware), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WindowsHardware)
      jresult => object
    end select
  end function

  recursive function WindowsHardware_jnew_0() result(this)
    class(WindowsHardware), pointer :: this
    allocate(this)
    this%jclass = 'WindowsHardware'
        continue
  end function

  recursive function WindowsHardware_jm_getMultimedia_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(MediaInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getBridge_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(BridgeInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getCpu_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(CpuInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getEthernet_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(EthernetInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getFireWire_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(FireWireInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getHardDriveController_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(HardDriveControllerInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getHardDrive_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(HardDriveInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getMachineAccessControlAddress_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(MachineAccessControlAddressInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getMonitor_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(MonitorInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getUsb_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(UsbInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getVideo_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(VideoInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_getComponent_1(this, j_index) result(jresult)
    class(WindowsHardware), target :: this
    integer(4), value :: j_index
    class(HardwareComponentInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WindowsHardware_jm_toString_0(this) result(jresult)
    class(WindowsHardware), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_EMPTY_STRING
        return
  end function

  recursive function WindowsHardware_jm_compareTo_1(this, j_hardwareInterface) result(jresult)
    class(WindowsHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function WindowsHardware_jm_difference_1(this, j_hardwareInterface) result(jresult)
    class(WindowsHardware), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp2
        jtemp2 => StdUtil_jm_getInstance_0()
        jresult => jtemp2%f_NULL_TABLE
        return
  end function
end module WindowsHardware_m

