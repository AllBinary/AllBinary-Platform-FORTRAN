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
! package org.allbinary.logic.system.hardware.components
module ComponentFactory_m
  use JR_m
  use CommonStrings_m
  use Component_m
  implicit none

  type, extends(JObject) :: ComponentFactory
    class(Component), pointer :: f_VGA => null()
    class(Component), pointer :: f_IDE => null()
    class(Component), pointer :: f_SCSI => null()
    class(Component), pointer :: f_BRIDGE => null()
    class(Component), pointer :: f_ETHERNET => null()
    class(Component), pointer :: f_USB => null()
    class(Component), pointer :: f_MULTIMEDIA => null()
    class(Component), pointer :: f_PCI => null()
    class(Component), pointer :: f_RAID => null()
    class(Component), pointer :: f_SMBUS => null()
    class(Component), pointer :: f_PIC => null()
    class(Component), pointer :: f_Class => null()
    class(Component), pointer :: f_UNKNOWN => null()
  end type

  class(ComponentFactory), pointer, save :: ComponentFactory_jcell_instance => null()
  logical, save :: ComponentFactory_jset_instance = .false.

contains

  function ComponentFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ComponentFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ComponentFactory)
      jresult => object
    end select
  end function

  function ComponentFactory_jstatic_instance() result(jresult)
    class(ComponentFactory), pointer :: jresult
    if (.not. ComponentFactory_jset_instance) then
      ComponentFactory_jset_instance = .true.
      ComponentFactory_jcell_instance => ComponentFactory_jnew_0()
    end if
    jresult => ComponentFactory_jcell_instance
  end function

  function ComponentFactory_jnew_0() result(this)
    class(ComponentFactory), pointer :: this
    class(CommonStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ComponentFactory'
    this%f_VGA => Component_jnew_1('VGA')
    this%f_IDE => Component_jnew_1('IDE')
    this%f_SCSI => Component_jnew_1('SCSI')
    this%f_BRIDGE => Component_jnew_1('bridge')
    this%f_ETHERNET => Component_jnew_1('Ethernet')
    this%f_USB => Component_jnew_1('USB')
    this%f_MULTIMEDIA => Component_jnew_1('Multimedia')
    this%f_PCI => Component_jnew_1('PCI')
    this%f_RAID => Component_jnew_1('RAID')
    this%f_SMBUS => Component_jnew_1('SMBus')
    this%f_PIC => Component_jnew_1('PIC')
    this%f_Class => Component_jnew_1('Class')
    jtemp1 => CommonStrings_jm_getInstance_0()
    this%f_UNKNOWN => Component_jnew_1(jtemp1%f_UNKNOWN)
  end function

  recursive function ComponentFactory_jm_getInstance_0() result(jresult)
    class(ComponentFactory), pointer :: jresult
        jresult => ComponentFactory_jstatic_instance()
        return
  end function
end module ComponentFactory_m

