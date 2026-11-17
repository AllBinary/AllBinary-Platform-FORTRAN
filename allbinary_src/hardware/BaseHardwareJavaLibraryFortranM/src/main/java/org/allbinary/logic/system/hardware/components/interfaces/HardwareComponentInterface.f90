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
! package org.allbinary.logic.system.hardware.components.interfaces
module HardwareComponentInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: HardwareComponentInterface
  contains
    procedure :: jm_compareTo_1 => HardwareComponentInterface_jm_compareTo_1
    procedure :: jm_toString_0 => HardwareComponentInterface_jm_toString_0
  end type


contains

  function HardwareComponentInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardwareComponentInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardwareComponentInterface)
      jresult => object
    end select
  end function

  function HardwareComponentInterface_jnew_0() result(this)
    class(HardwareComponentInterface), pointer :: this
    allocate(this)
    this%jclass = 'HardwareComponentInterface'
  end function

  recursive function HardwareComponentInterface_jm_compareTo_1(this, j_componentInterface) result(jresult)
    class(HardwareComponentInterface), target :: this
    class(HardwareComponentInterface), target, optional :: j_componentInterface
    logical :: jresult
    error stop 'AbstractMethodError: HardwareComponentInterface.compareTo'
  end function

  recursive function HardwareComponentInterface_jm_toString_0(this) result(jresult)
    class(HardwareComponentInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: HardwareComponentInterface.toString'
  end function
end module HardwareComponentInterface_m

