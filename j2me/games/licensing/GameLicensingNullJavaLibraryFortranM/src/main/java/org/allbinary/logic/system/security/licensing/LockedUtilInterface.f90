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
! package org.allbinary.logic.system.security.licensing
module LockedUtilInterface_m
  use JR_m
  use LockableFeature_m
  implicit none

  type, extends(JObject) :: LockedUtilInterface
  contains
    procedure :: jm_isLocked_0 => LockedUtilInterface_jm_isLocked_0
    procedure :: jm_isLockedFeature_1 => LockedUtilInterface_jm_isLockedFeature_1
  end type


contains

  function LockedUtilInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockedUtilInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockedUtilInterface)
      jresult => object
    end select
  end function

  function LockedUtilInterface_jnew_0() result(this)
    class(LockedUtilInterface), pointer :: this
    allocate(this)
    this%jclass = 'LockedUtilInterface'
  end function

  recursive function LockedUtilInterface_jm_isLocked_0(this) result(jresult)
    class(LockedUtilInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LockedUtilInterface.isLocked'
  end function

  recursive function LockedUtilInterface_jm_isLockedFeature_1(this, j_lockableFeatrue) result(jresult)
    class(LockedUtilInterface), target :: this
    class(LockableFeature), target, optional :: j_lockableFeatrue
    logical :: jresult
    error stop 'AbstractMethodError: LockedUtilInterface.isLockedFeature'
  end function
end module LockedUtilInterface_m

