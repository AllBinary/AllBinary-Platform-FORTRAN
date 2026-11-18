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
! package org.allbinary.game.ag.layer.pickup.health
module HealthResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: HealthResources
    character(len=:), allocatable :: f_RESOURCE
  end type

  class(HealthResources), pointer, save :: HealthResources_jcell_SINGLETON => null()
  logical, save :: HealthResources_jset_SINGLETON = .false.

contains

  function HealthResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HealthResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HealthResources)
      jresult => object
    end select
  end function

  function HealthResources_jstatic_SINGLETON() result(jresult)
    class(HealthResources), pointer :: jresult
    if (.not. HealthResources_jset_SINGLETON) then
      HealthResources_jset_SINGLETON = .true.
      HealthResources_jcell_SINGLETON => HealthResources_jnew_0()
    end if
    jresult => HealthResources_jcell_SINGLETON
  end function

  subroutine HealthResources_jsetstatic_SINGLETON(jvalue)
    class(HealthResources), target, optional :: jvalue
    HealthResources_jset_SINGLETON = .true.
    if (present(jvalue)) then
      HealthResources_jcell_SINGLETON => jvalue
    else
      HealthResources_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function HealthResources_jnew_0() result(this)
    class(HealthResources), pointer :: this
    allocate(this)
    this%jclass = 'HealthResources'
    this%f_RESOURCE = ''
    this%f_RESOURCE = 'health_drop_20_by_20.png'
        continue
  end function

  recursive function HealthResources_jm_getInstance_0() result(jresult)
    class(HealthResources), pointer :: jresult
        jresult => HealthResources_jstatic_SINGLETON()
        return
  end function
end module HealthResources_m

