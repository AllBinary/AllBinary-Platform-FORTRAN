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
! package org.allbinary.game.ag.layer.pickup.life
module LifeResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: LifeResources
    character(len=:), allocatable :: f_RESOURCE
  end type

  class(LifeResources), pointer, save :: LifeResources_jcell_SINGLETON => null()
  logical, save :: LifeResources_jset_SINGLETON = .false.

contains

  function LifeResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeResources)
      jresult => object
    end select
  end function

  function LifeResources_jstatic_SINGLETON() result(jresult)
    class(LifeResources), pointer :: jresult
    if (.not. LifeResources_jset_SINGLETON) then
      LifeResources_jset_SINGLETON = .true.
      LifeResources_jcell_SINGLETON => LifeResources_jnew_0()
    end if
    jresult => LifeResources_jcell_SINGLETON
  end function

  subroutine LifeResources_jsetstatic_SINGLETON(jvalue)
    class(LifeResources), target, optional :: jvalue
    LifeResources_jset_SINGLETON = .true.
    if (present(jvalue)) then
      LifeResources_jcell_SINGLETON => jvalue
    else
      LifeResources_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function LifeResources_jnew_0() result(this)
    class(LifeResources), pointer :: this
    allocate(this)
    this%jclass = 'LifeResources'
    this%f_RESOURCE = ''
    this%f_RESOURCE = 'life_drop_20_by_20.png'
        continue
  end function

  recursive function LifeResources_jm_getInstance_0() result(jresult)
    class(LifeResources), pointer :: jresult
        jresult => LifeResources_jstatic_SINGLETON()
        return
  end function
end module LifeResources_m

