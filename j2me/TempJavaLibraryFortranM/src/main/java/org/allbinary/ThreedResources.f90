! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary
module ThreedResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: ThreedResources
  contains
    procedure :: jm_add_0 => ThreedResources_jm_add_0
  end type

  class(ThreedResources), pointer, save :: ThreedResources_jcell_threedResources => null()
  logical, save :: ThreedResources_jset_threedResources = .false.

contains

  function ThreedResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreedResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreedResources)
      jresult => object
    end select
  end function

  function ThreedResources_jstatic_threedResources() result(jresult)
    class(ThreedResources), pointer :: jresult
    if (.not. ThreedResources_jset_threedResources) then
      ThreedResources_jset_threedResources = .true.
      ThreedResources_jcell_threedResources => ThreedResources_jnew_0()
    end if
    jresult => ThreedResources_jcell_threedResources
  end function

  subroutine ThreedResources_jsetstatic_threedResources(jvalue)
    class(ThreedResources), target, optional :: jvalue
    ThreedResources_jset_threedResources = .true.
    if (present(jvalue)) then
      ThreedResources_jcell_threedResources => jvalue
    else
      ThreedResources_jcell_threedResources => null()
    end if
  end subroutine

  function ThreedResources_jnew_0() result(this)
    class(ThreedResources), pointer :: this
    allocate(this)
    this%jclass = 'ThreedResources'
  end function

  recursive function ThreedResources_jm_getThreedResources_0() result(jresult)
    class(ThreedResources), pointer :: jresult
        jresult => ThreedResources_jstatic_threedResources()
        return
  end function

  recursive subroutine ThreedResources_jm_add_0(this)
    class(ThreedResources), target :: this
    continue
  end subroutine
end module ThreedResources_m

