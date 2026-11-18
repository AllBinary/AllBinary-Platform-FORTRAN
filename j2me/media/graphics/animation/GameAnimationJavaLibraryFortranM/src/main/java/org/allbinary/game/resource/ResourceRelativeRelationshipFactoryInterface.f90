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
! package org.allbinary.game.resource
module ResourceRelativeRelationshipFactoryInterface_m
  use JR_m
  use GameFeatureControlledInterface_m
  use RelativeRelationship_m
  use BasicArrayList_m
  implicit none

  type, extends(GameFeatureControlledInterface) :: ResourceRelativeRelationshipFactoryInterface
  contains
    procedure :: jm_getResourceRelativeRelationshipList_1 => ResourceRelativeRelationshipFactoryInterface_jm_getResourceRelativeRelationshipList_1
    procedure :: jm_addResourceRelativeRelationship_2 => ResourceRelativeRelationshipFactoryInterface_jm_addResourceRelativeRelationship_2
  end type


contains

  function ResourceRelativeRelationshipFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceRelativeRelationshipFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceRelativeRelationshipFactoryInterface)
      jresult => object
    end select
  end function

  function ResourceRelativeRelationshipFactoryInterface_jnew_0() result(this)
    class(ResourceRelativeRelationshipFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ResourceRelativeRelationshipFactoryInterface'
  end function

  recursive function ResourceRelativeRelationshipFactoryInterface_jm_getResourceRelativeRelationshipList_1(this, j_resource) result(jresult)
    class(ResourceRelativeRelationshipFactoryInterface), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicArrayList), pointer :: jresult
    error stop 'AbstractMethodError: ResourceRelativeRelationshipFactoryInterface.getResourceRelativeRelationshipList'
  end function

  recursive subroutine ResourceRelativeRelationshipFactoryInterface_jm_addResourceRelativeRelationship_2(this, j_resource, j_relativeRelationship)
    class(ResourceRelativeRelationshipFactoryInterface), target :: this
    character(len=*), intent(in) :: j_resource
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    error stop 'AbstractMethodError: ResourceRelativeRelationshipFactoryInterface.addResourceRelativeRelationship'
  end subroutine
end module ResourceRelativeRelationshipFactoryInterface_m

