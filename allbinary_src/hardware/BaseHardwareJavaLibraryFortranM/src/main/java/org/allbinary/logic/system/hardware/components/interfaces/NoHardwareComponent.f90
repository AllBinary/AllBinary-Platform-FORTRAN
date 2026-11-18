! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module NoHardwareComponent_m
  use JR_m
  use StringUtil_m
  use HardwareComponentInterface_m
  implicit none

  type, extends(HardwareComponentInterface) :: NoHardwareComponent
  contains
    procedure :: jm_compareTo_1 => NoHardwareComponent_jm_compareTo_1
    procedure :: jm_toString_0 => NoHardwareComponent_jm_toString_0
  end type

  class(NoHardwareComponent), pointer, save :: NoHardwareComponent_jcell_instance => null()
  logical, save :: NoHardwareComponent_jset_instance = .false.

contains

  function NoHardwareComponent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoHardwareComponent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoHardwareComponent)
      jresult => object
    end select
  end function

  function NoHardwareComponent_jstatic_instance() result(jresult)
    class(NoHardwareComponent), pointer :: jresult
    if (.not. NoHardwareComponent_jset_instance) then
      NoHardwareComponent_jset_instance = .true.
      NoHardwareComponent_jcell_instance => NoHardwareComponent_jnew_0()
    end if
    jresult => NoHardwareComponent_jcell_instance
  end function

  subroutine NoHardwareComponent_jsetstatic_instance(jvalue)
    class(NoHardwareComponent), target, optional :: jvalue
    NoHardwareComponent_jset_instance = .true.
    if (present(jvalue)) then
      NoHardwareComponent_jcell_instance => jvalue
    else
      NoHardwareComponent_jcell_instance => null()
    end if
  end subroutine

  function NoHardwareComponent_jnew_0() result(this)
    class(NoHardwareComponent), pointer :: this
    allocate(this)
    this%jclass = 'NoHardwareComponent'
  end function

  recursive function NoHardwareComponent_jm_getInstance_0() result(jresult)
    class(NoHardwareComponent), pointer :: jresult
        jresult => NoHardwareComponent_jstatic_instance()
        return
  end function

  recursive function NoHardwareComponent_jm_compareTo_1(this, j_componentInterface) result(jresult)
    class(NoHardwareComponent), target :: this
    class(HardwareComponentInterface), target, optional :: j_componentInterface
    logical :: jresult
        if (JR_same(this, j_componentInterface)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function NoHardwareComponent_jm_toString_0(this) result(jresult)
    class(NoHardwareComponent), target :: this
    character(len=:), allocatable :: jresult
    class(StringUtil), pointer :: jtemp1
        jtemp1 => StringUtil_jm_getInstance_0()
        jresult = jtemp1%f_NULL_STRING
        return
  end function
end module NoHardwareComponent_m

