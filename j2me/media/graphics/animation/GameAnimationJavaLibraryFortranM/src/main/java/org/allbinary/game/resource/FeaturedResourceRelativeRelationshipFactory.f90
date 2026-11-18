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
module FeaturedResourceRelativeRelationshipFactory_m
  use JR_m
  use PointFactory_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use RelativeLayerRelationship_m
  use StringMaker_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use FeaturedResourceFactory_m
  use ResourceRelativeRelationshipFactoryInterface_m
  implicit none

  type, extends(FeaturedResourceFactory) :: FeaturedResourceRelativeRelationshipFactory
    class(BasicArrayListUtil), pointer :: f_basicArrayListUtil => null()
  contains
    procedure :: jm_getRelativeRelationshipList_2 => FeaturedResourceRelativeRelationshipFactory_jm_getRelativeRelationshipList_2
    procedure :: jm_duplicate_2 => FeaturedResourceRelativeRelationshipFactory_jm_duplicate_2
  end type

  class(FeaturedResourceRelativeRelationshipFactory), pointer, save :: FeaturedResourceRelativeRelationshipFactory_jcell_INSTANCE => null()
  logical, save :: FeaturedResourceRelativeRelationshipFactory_jset_INSTANCE = .false.

contains

  function FeaturedResourceRelativeRelationshipFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FeaturedResourceRelativeRelationshipFactory)
      jresult => object
    end select
  end function

  function FeaturedResourceRelativeRelationshipFactory_jstatic_INSTANCE() result(jresult)
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: jresult
    if (.not. FeaturedResourceRelativeRelationshipFactory_jset_INSTANCE) then
      FeaturedResourceRelativeRelationshipFactory_jset_INSTANCE = .true.
      FeaturedResourceRelativeRelationshipFactory_jcell_INSTANCE => FeaturedResourceRelativeRelationshipFactory_jnew_0()
    end if
    jresult => FeaturedResourceRelativeRelationshipFactory_jcell_INSTANCE
  end function

  subroutine FeaturedResourceRelativeRelationshipFactory_jsetstatic_INSTANCE(jvalue)
    class(FeaturedResourceRelativeRelationshipFactory), target, optional :: jvalue
    FeaturedResourceRelativeRelationshipFactory_jset_INSTANCE = .true.
    if (present(jvalue)) then
      FeaturedResourceRelativeRelationshipFactory_jcell_INSTANCE => jvalue
    else
      FeaturedResourceRelativeRelationshipFactory_jcell_INSTANCE => null()
    end if
  end subroutine

  recursive function FeaturedResourceRelativeRelationshipFactory_jnew_0() result(this)
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: this
    allocate(this)
    this%jclass = 'FeaturedResourceRelativeRelationshipFactory'
    this%f_basicArrayListUtil => BasicArrayListUtil_jm_getInstance_0()
        continue
  end function

  recursive function FeaturedResourceRelativeRelationshipFactory_jm_getInstance_0() result(jresult)
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: jresult
        jresult => FeaturedResourceRelativeRelationshipFactory_jstatic_INSTANCE()
        return
  end function

  recursive function FeaturedResourceRelativeRelationshipFactory_jm_getRelativeRelationshipList_2(this, j_resource, j_layer) result(jresult)
    class(FeaturedResourceRelativeRelationshipFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(AllBinaryLayer), target, optional :: j_layer
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_featureReleaseList
    integer(4) :: j_size
    class(ResourceRelativeRelationshipFactoryInterface), pointer :: j_featureInterface
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_index
    class(BasicArrayList), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
        j_featureReleaseList => this%jm_getList_0()
        jtemp1 => this%jm_getList_0()
        j_size = jtemp1%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_featureInterface => ResourceRelativeRelationshipFactoryInterface_jcast(j_featureReleaseList%f_objectArray((j_index) + 1)%v)
            if (j_featureInterface%jm_isFeature_0()) then
                j_list => j_featureInterface%jm_getResourceRelativeRelationshipList_1(j_resource)
                if ((.not. JR_same(j_list, this%f_basicArrayListUtil%jm_getImmutableInstance_0()))) then
                    jresult => this%jm_duplicate_2(j_list, j_layer)
                    return
                end if
            end if
            j_index = j_index + 1
        end do
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1('Not available for current feature selection or Resource: ')
        jtemp2 => jtemp3%jm_append_1(j_resource)
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function FeaturedResourceRelativeRelationshipFactory_jm_duplicate_2(this, j_list, j_layer) result(jresult)
    class(FeaturedResourceRelativeRelationshipFactory), target :: this
    class(BasicArrayList), target, optional :: j_list
    class(AllBinaryLayer), target, optional :: j_layer
    class(BasicArrayList), pointer :: jresult
    class(PointFactory), pointer :: j_pointFactory
    class(BasicArrayList), pointer :: j_newList
    integer(4) :: j_size
    class(RelativeRelationship), pointer :: j_relativeRelationship
    integer(4) :: j_index
    class(BasicArrayListUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_newList => BasicArrayListD_jnew_0()
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_relativeRelationship => RelativeRelationship_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jtemp5 => BasicArrayListUtil_jm_getInstance_0()
            jdiscardBoolean = j_newList%jm_add_1(RelativeLayerRelationship_jnew_3(j_layer, j_pointFactory%jm_createXY_2(j_relativeRelationship%jm_getX_0(), j_relativeRelationship%jm_getY_0()), jtemp5%jm_getImmutableInstance_0()))
            j_index = j_index + 1
        end do
        jresult => j_newList
        return
  end function
end module FeaturedResourceRelativeRelationshipFactory_m

function FeaturedResourceRelativeRelationshipFactory_jnew_0_jext() result(this)
  use FeaturedResourceRelativeRelationshipFactory_m, only: JObject, FeaturedResourceRelativeRelationshipFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => FeaturedResourceRelativeRelationshipFactory_jnew_0()
end function

