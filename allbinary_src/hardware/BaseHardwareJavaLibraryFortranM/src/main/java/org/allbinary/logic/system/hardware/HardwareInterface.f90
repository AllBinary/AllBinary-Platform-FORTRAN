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
module HardwareInterface_m
  use JR_m
  use HardwareComponentInterface_m
  use ABHashtable_m
  implicit none

  type, extends(JObject) :: HardwareInterface
  contains
    procedure :: jm_getComponent_1 => HardwareInterface_jm_getComponent_1
    procedure :: jm_toString_0 => HardwareInterface_jm_toString_0
    procedure :: jm_compareTo_1 => HardwareInterface_jm_compareTo_1
    procedure :: jm_difference_1 => HardwareInterface_jm_difference_1
  end type


contains

  function HardwareInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HardwareInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HardwareInterface)
      jresult => object
    end select
  end function

  function HardwareInterface_jnew_0() result(this)
    class(HardwareInterface), pointer :: this
    allocate(this)
    this%jclass = 'HardwareInterface'
  end function

  recursive function HardwareInterface_jm_getComponent_1(this, j_index) result(jresult)
    class(HardwareInterface), target :: this
    integer(4), value :: j_index
    class(HardwareComponentInterface), pointer :: jresult
    error stop 'AbstractMethodError: HardwareInterface.getComponent'
  end function

  recursive function HardwareInterface_jm_toString_0(this) result(jresult)
    class(HardwareInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: HardwareInterface.toString'
  end function

  recursive function HardwareInterface_jm_compareTo_1(this, j_hardwareInterface) result(jresult)
    class(HardwareInterface), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    logical :: jresult
    error stop 'AbstractMethodError: HardwareInterface.compareTo'
  end function

  recursive function HardwareInterface_jm_difference_1(this, j_hardwareInterface) result(jresult)
    class(HardwareInterface), target :: this
    class(HardwareInterface), target, optional :: j_hardwareInterface
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: HardwareInterface.difference'
  end function
end module HardwareInterface_m

