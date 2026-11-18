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
! package org.allbinary.game.layer.resources
module OnDemandResources_m
  use JR_m
  use BaseResourceAnimationInterfaceFactoryInterfaceFactory_m
  use ImageCache_m
  use LogUtil_m
  implicit none

  type, extends(JObject) :: OnDemandResources
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_waitFor_0 => OnDemandResources_jm_waitFor_0
    procedure :: jm_init_0 => OnDemandResources_jm_init_0
    procedure :: jm_initAt_5 => OnDemandResources_jm_initAt_5
  end type

  class(OnDemandResources), pointer, save :: OnDemandResources_jcell_NULL_ON_DEMAND_RESOURCES => null()
  logical, save :: OnDemandResources_jset_NULL_ON_DEMAND_RESOURCES = .false.

contains

  function OnDemandResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OnDemandResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OnDemandResources)
      jresult => object
    end select
  end function

  function OnDemandResources_jstatic_NULL_ON_DEMAND_RESOURCES() result(jresult)
    class(OnDemandResources), pointer :: jresult
    if (.not. OnDemandResources_jset_NULL_ON_DEMAND_RESOURCES) then
      OnDemandResources_jset_NULL_ON_DEMAND_RESOURCES = .true.
      OnDemandResources_jcell_NULL_ON_DEMAND_RESOURCES => OnDemandResources_jnew_0()
    end if
    jresult => OnDemandResources_jcell_NULL_ON_DEMAND_RESOURCES
  end function

  subroutine OnDemandResources_jsetstatic_NULL_ON_DEMAND_RESOURCES(jvalue)
    class(OnDemandResources), target, optional :: jvalue
    OnDemandResources_jset_NULL_ON_DEMAND_RESOURCES = .true.
    if (present(jvalue)) then
      OnDemandResources_jcell_NULL_ON_DEMAND_RESOURCES => jvalue
    else
      OnDemandResources_jcell_NULL_ON_DEMAND_RESOURCES => null()
    end if
  end subroutine

  recursive function OnDemandResources_jnew_0() result(this)
    class(OnDemandResources), pointer :: this
    allocate(this)
    this%jclass = 'OnDemandResources'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive subroutine OnDemandResources_jm_waitFor_0(this)
    class(OnDemandResources), target :: this
    continue
  end subroutine

  recursive subroutine OnDemandResources_jm_init_0(this)
    class(OnDemandResources), target :: this
    continue
  end subroutine

  recursive function OnDemandResources_jm_initAt_5(this, j_imageCache, j_resourceAnimationInterfaceFactoryInterfaceFactory, j_portion, j_loadingString, j_index) result(jresult)
    class(OnDemandResources), target :: this
    class(ImageCache), target, optional :: j_imageCache
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target, optional :: j_resourceAnimationInterfaceFactoryInterfaceFactory
    integer(4), value :: j_portion
    character(len=*), intent(in) :: j_loadingString
    integer(4), value :: j_index
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module OnDemandResources_m

