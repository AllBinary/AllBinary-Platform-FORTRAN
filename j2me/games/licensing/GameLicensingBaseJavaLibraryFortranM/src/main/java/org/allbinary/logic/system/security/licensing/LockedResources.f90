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
module LockedResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: LockedResources
    character(len=:), allocatable :: f_LOCKED_DEMO_GAME_FEATURE_RESOURCE
  end type

  class(LockedResources), pointer, save :: LockedResources_jcell_instance => null()
  logical, save :: LockedResources_jset_instance = .false.

contains

  function LockedResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockedResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockedResources)
      jresult => object
    end select
  end function

  function LockedResources_jstatic_instance() result(jresult)
    class(LockedResources), pointer :: jresult
    if (.not. LockedResources_jset_instance) then
      LockedResources_jset_instance = .true.
      LockedResources_jcell_instance => LockedResources_jnew_0()
    end if
    jresult => LockedResources_jcell_instance
  end function

  subroutine LockedResources_jsetstatic_instance(jvalue)
    class(LockedResources), target, optional :: jvalue
    LockedResources_jset_instance = .true.
    if (present(jvalue)) then
      LockedResources_jcell_instance => jvalue
    else
      LockedResources_jcell_instance => null()
    end if
  end subroutine

  function LockedResources_jnew_0() result(this)
    class(LockedResources), pointer :: this
    allocate(this)
    this%jclass = 'LockedResources'
    this%f_LOCKED_DEMO_GAME_FEATURE_RESOURCE = ''
    this%f_LOCKED_DEMO_GAME_FEATURE_RESOURCE = '/locked_demo_game_feature_64_by_64.png'
  end function

  recursive function LockedResources_jm_getInstance_0() result(jresult)
    class(LockedResources), pointer :: jresult
        jresult => LockedResources_jstatic_instance()
        return
  end function
end module LockedResources_m

