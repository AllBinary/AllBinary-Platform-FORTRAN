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
! package org.allbinary.logic.system.security.licensing
module LockedUtil_m
  use JR_m
  use LockedUtilInterface_m
  use LockableFeature_m
  implicit none

  type, extends(LockedUtilInterface) :: LockedUtil
  contains
    procedure :: jm_isLocked_0 => LockedUtil_jm_isLocked_0
    procedure :: jm_isLockedFeature_1 => LockedUtil_jm_isLockedFeature_1
  end type

  class(LockedUtil), pointer, save :: LockedUtil_jcell_instance => null()
  logical, save :: LockedUtil_jset_instance = .false.

contains

  function LockedUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockedUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockedUtil)
      jresult => object
    end select
  end function

  function LockedUtil_jstatic_instance() result(jresult)
    class(LockedUtil), pointer :: jresult
    if (.not. LockedUtil_jset_instance) then
      LockedUtil_jset_instance = .true.
      LockedUtil_jcell_instance => LockedUtil_jnew_0()
    end if
    jresult => LockedUtil_jcell_instance
  end function

  subroutine LockedUtil_jsetstatic_instance(jvalue)
    class(LockedUtil), target, optional :: jvalue
    LockedUtil_jset_instance = .true.
    if (present(jvalue)) then
      LockedUtil_jcell_instance => jvalue
    else
      LockedUtil_jcell_instance => null()
    end if
  end subroutine

  function LockedUtil_jnew_0() result(this)
    class(LockedUtil), pointer :: this
    allocate(this)
    this%jclass = 'LockedUtil'
  end function

  recursive function LockedUtil_jm_getInstance_0() result(jresult)
    class(LockedUtil), pointer :: jresult
        jresult => LockedUtil_jstatic_instance()
        return
  end function

  recursive function LockedUtil_jm_isLocked_0(this) result(jresult)
    class(LockedUtil), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function LockedUtil_jm_isLockedFeature_1(this, j_lockableFeatrue) result(jresult)
    class(LockedUtil), target :: this
    class(LockableFeature), target, optional :: j_lockableFeatrue
    logical :: jresult
        jresult = .true.
        return
  end function
end module LockedUtil_m

