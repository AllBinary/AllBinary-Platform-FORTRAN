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
! package org.allbinary.logic.system.os
module OperatingSystemInterface_m
  use JR_m
  use CharacterSet_m
  implicit none

  type, extends(JObject) :: OperatingSystemInterface
  contains
    procedure :: jm_getName_0 => OperatingSystemInterface_jm_getName_0
    procedure :: jm_getVersion_0 => OperatingSystemInterface_jm_getVersion_0
    procedure :: jm_getArch_0 => OperatingSystemInterface_jm_getArch_0
    procedure :: jm_getCharacterSet_0 => OperatingSystemInterface_jm_getCharacterSet_0
    procedure :: jm_isOverScan_0 => OperatingSystemInterface_jm_isOverScan_0
    procedure :: jm_getOverScanXPercent_0 => OperatingSystemInterface_jm_getOverScanXPercent_0
    procedure :: jm_getOverScanYPercent_0 => OperatingSystemInterface_jm_getOverScanYPercent_0
    procedure :: jm_isScalable_0 => OperatingSystemInterface_jm_isScalable_0
    procedure :: jm_isAutoHide_0 => OperatingSystemInterface_jm_isAutoHide_0
    procedure :: jm_toString_0 => OperatingSystemInterface_jm_toString_0
  end type


contains

  function OperatingSystemInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OperatingSystemInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OperatingSystemInterface)
      jresult => object
    end select
  end function

  function OperatingSystemInterface_jnew_0() result(this)
    class(OperatingSystemInterface), pointer :: this
    allocate(this)
    this%jclass = 'OperatingSystemInterface'
  end function

  recursive function OperatingSystemInterface_jm_getName_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getName'
  end function

  recursive function OperatingSystemInterface_jm_getVersion_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getVersion'
  end function

  recursive function OperatingSystemInterface_jm_getArch_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getArch'
  end function

  recursive function OperatingSystemInterface_jm_getCharacterSet_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    class(CharacterSet), pointer :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getCharacterSet'
  end function

  recursive function OperatingSystemInterface_jm_isOverScan_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.isOverScan'
  end function

  recursive function OperatingSystemInterface_jm_getOverScanXPercent_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getOverScanXPercent'
  end function

  recursive function OperatingSystemInterface_jm_getOverScanYPercent_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.getOverScanYPercent'
  end function

  recursive function OperatingSystemInterface_jm_isScalable_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.isScalable'
  end function

  recursive function OperatingSystemInterface_jm_isAutoHide_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.isAutoHide'
  end function

  recursive function OperatingSystemInterface_jm_toString_0(this) result(jresult)
    class(OperatingSystemInterface), target :: this
    character(len=:), allocatable :: jresult
    error stop 'AbstractMethodError: OperatingSystemInterface.toString'
  end function
end module OperatingSystemInterface_m

