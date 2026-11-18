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
! package org.allbinary.animation.resource
module ResourceAnimationInterfaceFactoryInterface_m
  use JR_m
  use BasicAnimationInterfaceFactoryInterface_m
  implicit none

  type, extends(JObject) :: ResourceAnimationInterfaceFactoryInterface
  contains
    procedure :: jm_getBasicAnimationInterfaceFactoryInstance_1 => ResourceAnimationInterfaceFactoryInterface_jm_getBasicAnimationInterfaceFactoryInstance_1
  end type


contains

  function ResourceAnimationInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceAnimationInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceAnimationInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function ResourceAnimationInterfaceFactoryInterface_jnew_0() result(this)
    class(ResourceAnimationInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ResourceAnimationInterfaceFactoryInterface'
  end function

  recursive function ResourceAnimationInterfaceFactoryInterface_jm_getBasicAnimationInterfaceFactoryInstance_1(this, j_resource) result(jresult)
    class(ResourceAnimationInterfaceFactoryInterface), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicAnimationInterfaceFactoryInterface), pointer :: jresult
    error stop 'AbstractMethodError: ResourceAnimationInterfaceFactoryInterface.getBasicAnimationInterfaceFactoryInstance'
  end function
end module ResourceAnimationInterfaceFactoryInterface_m

