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
module ResourceRelativeRelationshipFactory_m
  use JR_m
  use RelativeRelationship_m
  use StdUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use ResourceRelativeRelationshipFactoryInterface_m
  implicit none

  type, extends(ResourceRelativeRelationshipFactoryInterface) :: ResourceRelativeRelationshipFactory
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
    class(ABHashtable), pointer :: f_hashtable => null()
    logical :: f_initialized = .false.
  contains
    procedure :: jm_init_1 => ResourceRelativeRelationshipFactory_jm_init_1
    procedure :: jm_getResourceRelativeRelationshipList_1 => ResourceRelativeRelationshipFactory_jm_getResourceRelativeRelationshipList_1
    procedure :: jm_addResourceRelativeRelationship_2 => ResourceRelativeRelationshipFactory_jm_addResourceRelativeRelationship_2
    procedure :: jm_isLoadingLevel_1 => ResourceRelativeRelationshipFactory_jm_isLoadingLevel_1
    procedure :: jm_isFeature_0 => ResourceRelativeRelationshipFactory_jm_isFeature_0
    procedure :: jm_setInitialized_1 => ResourceRelativeRelationshipFactory_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => ResourceRelativeRelationshipFactory_jm_isInitialized_0
  end type


contains

  function ResourceRelativeRelationshipFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ResourceRelativeRelationshipFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ResourceRelativeRelationshipFactory)
      jresult => object
    end select
  end function

  function ResourceRelativeRelationshipFactory_jnew_0() result(this)
    class(ResourceRelativeRelationshipFactory), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ResourceRelativeRelationshipFactory'
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
    
  end function

  recursive subroutine ResourceRelativeRelationshipFactory_jm_init_1(this, j_level)
    class(ResourceRelativeRelationshipFactory), target :: this
    integer(4), value :: j_level
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setInitialized_1(.true.)
  end subroutine

  recursive function ResourceRelativeRelationshipFactory_jm_getResourceRelativeRelationshipList_1(this, j_resource) result(jresult)
    class(ResourceRelativeRelationshipFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicArrayList), pointer :: jresult
    class(JObject), pointer :: j_listCanBeNull
        j_listCanBeNull => this%f_hashtable%jm_get_1(j_resource)
        if ((.not. associated(j_listCanBeNull))) then
            jresult => this%f_basicArrayListUtil%jm_getImmutableInstance_0()
            return
        end if
        jresult => BasicArrayList_jcast(j_listCanBeNull)
        return
  end function

  recursive subroutine ResourceRelativeRelationshipFactory_jm_addResourceRelativeRelationship_2(this, j_resource, j_relativeRelationship)
    class(ResourceRelativeRelationshipFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getResourceRelativeRelationshipList_1(j_resource)
        if (JR_same(j_list, this%f_basicArrayListUtil%jm_getImmutableInstance_0())) then
            j_list => BasicArrayListD_jnew_0()
        end if
        jdiscardBoolean = j_list%jm_add_1(j_relativeRelationship)
        jdiscardRef => this%f_hashtable%jm_put_2(j_resource, j_list)
  end subroutine

  recursive function ResourceRelativeRelationshipFactory_jm_isLoadingLevel_1(this, j_level) result(jresult)
    class(ResourceRelativeRelationshipFactory), target :: this
    integer(4), value :: j_level
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function ResourceRelativeRelationshipFactory_jm_isFeature_0(this) result(jresult)
    class(ResourceRelativeRelationshipFactory), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine ResourceRelativeRelationshipFactory_jm_setInitialized_1(this, j_initialized)
    class(ResourceRelativeRelationshipFactory), target :: this
    logical, value :: j_initialized
        this%f_initialized = j_initialized
  end subroutine

  recursive function ResourceRelativeRelationshipFactory_jm_isInitialized_0(this) result(jresult)
    class(ResourceRelativeRelationshipFactory), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function
end module ResourceRelativeRelationshipFactory_m

