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
module OnDemandResourcesFactory_m
  use JR_m
  use OnDemandResources_m
  implicit none

  type, extends(JObject) :: OnDemandResourcesFactory
  contains
    procedure :: jm_size_0 => OnDemandResourcesFactory_jm_size_0
    procedure :: jm_remove_1 => OnDemandResourcesFactory_jm_remove_1
  end type


contains

  function OnDemandResourcesFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OnDemandResourcesFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OnDemandResourcesFactory)
      jresult => object
    end select
  end function

  function OnDemandResourcesFactory_jnew_0() result(this)
    class(OnDemandResourcesFactory), pointer :: this
    allocate(this)
    this%jclass = 'OnDemandResourcesFactory'
  end function

  recursive function OnDemandResourcesFactory_jm_size_0(this) result(jresult)
    class(OnDemandResourcesFactory), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function OnDemandResourcesFactory_jm_remove_1(this, j_layerId) result(jresult)
    class(OnDemandResourcesFactory), target :: this
    integer(4), value :: j_layerId
    class(OnDemandResources), pointer :: jresult
        jresult => OnDemandResources_jstatic_NULL_ON_DEMAND_RESOURCES()
        return
  end function
end module OnDemandResourcesFactory_m

