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
module CpuInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: CpuInterface
  contains
    procedure :: jm_getProcessor_0 => CpuInterface_jm_getProcessor_0
    procedure :: jm_getVendorId_0 => CpuInterface_jm_getVendorId_0
    procedure :: jm_getCpuFamily_0 => CpuInterface_jm_getCpuFamily_0
    procedure :: jm_getModel_0 => CpuInterface_jm_getModel_0
    procedure :: jm_getModelName_0 => CpuInterface_jm_getModelName_0
    procedure :: jm_getStepping_0 => CpuInterface_jm_getStepping_0
    procedure :: jm_getCpuSpeed_0 => CpuInterface_jm_getCpuSpeed_0
    procedure :: jm_getCacheSize_0 => CpuInterface_jm_getCacheSize_0
    procedure :: jm_compareTo_1 => CpuInterface_jm_compareTo_1
  end type


contains

  function CpuInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CpuInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CpuInterface)
      jresult => object
    end select
  end function

  function CpuInterface_jnew_0() result(this)
    class(CpuInterface), pointer :: this
    allocate(this)
    this%jclass = 'CpuInterface'
  end function

  recursive function CpuInterface_jm_getProcessor_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getProcessor'
  end function

  recursive function CpuInterface_jm_getVendorId_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getVendorId'
  end function

  recursive function CpuInterface_jm_getCpuFamily_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getCpuFamily'
  end function

  recursive function CpuInterface_jm_getModel_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getModel'
  end function

  recursive function CpuInterface_jm_getModelName_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getModelName'
  end function

  recursive function CpuInterface_jm_getStepping_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getStepping'
  end function

  recursive function CpuInterface_jm_getCpuSpeed_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getCpuSpeed'
  end function

  recursive function CpuInterface_jm_getCacheSize_0(this) result(jresult)
    class(CpuInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: CpuInterface.getCacheSize'
  end function

  recursive function CpuInterface_jm_compareTo_1(this, j_cpuInterface) result(jresult)
    class(CpuInterface), target :: this
    class(CpuInterface), target, optional :: j_cpuInterface
    logical :: jresult
    error stop 'AbstractMethodError: CpuInterface.compareTo'
  end function
end module CpuInterface_m

