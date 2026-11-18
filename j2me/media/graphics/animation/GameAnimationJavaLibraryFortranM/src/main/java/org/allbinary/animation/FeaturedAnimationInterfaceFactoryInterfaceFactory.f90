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
! package org.allbinary.animation
module FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use JR_m
  use FeatureResourceAnimationInterfaceFactoryInterface_m
  use GameConfigurationCentral_m
  use FeaturedResourceFactory_m
  use PointFactory_m
  use Rectangle_m
  use RectangleFactory_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use AnimationInterfaceFactoryInterface_m
  use BasicAnimationInterfaceFactoryInterface_m
  use NullAnimationFactory_m
  implicit none

  type, extends(FeaturedResourceFactory) :: FeaturedAnimationInterfaceFactoryInterfaceFactory
  contains
    procedure :: jm_getRectangle_1 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getRectangle_1
    procedure :: jm_getRectangleXY_3 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleXY_3
    procedure :: jm_getProcedural_1 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getProcedural_1
    procedure :: jm_get_1 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_get_1
    procedure :: jm_getBasicAnimationInterfaceFactoryInstance_1 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInstance_1
  end type

  class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer, save :: FeaturedAnimationInterfaceFactoryInterfaceFactory_jcell_INSTANCE => null()
  logical, save :: FeaturedAnimationInterfaceFactoryInterfaceFactory_jset_INSTANCE = .false.

contains

  function FeaturedAnimationInterfaceFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FeaturedAnimationInterfaceFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  function FeaturedAnimationInterfaceFactoryInterfaceFactory_jstatic_INSTANCE() result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
    if (.not. FeaturedAnimationInterfaceFactoryInterfaceFactory_jset_INSTANCE) then
      FeaturedAnimationInterfaceFactoryInterfaceFactory_jset_INSTANCE = .true.
      FeaturedAnimationInterfaceFactoryInterfaceFactory_jcell_INSTANCE => FeaturedAnimationInterfaceFactoryInterfaceFactory_jnew_0()
    end if
    jresult => FeaturedAnimationInterfaceFactoryInterfaceFactory_jcell_INSTANCE
  end function

  subroutine FeaturedAnimationInterfaceFactoryInterfaceFactory_jsetstatic_INSTANCE(jvalue)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target, optional :: jvalue
    FeaturedAnimationInterfaceFactoryInterfaceFactory_jset_INSTANCE = .true.
    if (present(jvalue)) then
      FeaturedAnimationInterfaceFactoryInterfaceFactory_jcell_INSTANCE => jvalue
    else
      FeaturedAnimationInterfaceFactoryInterfaceFactory_jcell_INSTANCE => null()
    end if
  end subroutine

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jnew_0() result(this)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'FeaturedAnimationInterfaceFactoryInterfaceFactory'
        continue
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0() result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
        jresult => FeaturedAnimationInterfaceFactoryInterfaceFactory_jstatic_INSTANCE()
        return
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getRectangle_1(this, j_resource) result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(Rectangle), pointer :: jresult
        jresult => this%jm_getRectangleXY_3(j_resource, 0, 0)
        return
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getRectangleXY_3(this, j_resource, j_x, j_y) result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(Rectangle), pointer :: jresult
    class(PointFactory), pointer :: j_pointFactory
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_scale
    integer(4) :: j_size
    class(FeatureResourceAnimationInterfaceFactoryInterface), pointer :: j_featureInterface
    class(Rectangle), pointer :: j_rectangle
    integer(4) :: j_index
    class(JObject), pointer :: jtemp1
    class(GameConfigurationCentral), pointer :: jtemp2
    class(BasicArrayList), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_list => this%jm_getList_0()
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        jtemp1 => jtemp2%f_SCALE%jm_getValue_0()
        j_scale = jtemp1%jm_intValue_0()
        jtemp3 => this%jm_getList_0()
        j_size = jtemp3%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_featureInterface => FeatureResourceAnimationInterfaceFactoryInterface_jcast(j_list%f_objectArray((j_index) + 1)%v)
            if (j_featureInterface%jm_isFeature_0()) then
                j_rectangle => j_featureInterface%jm_getRectangle_1(j_resource)
                if ((.not. JR_same(j_rectangle, RectangleFactory_jstatic_SINGLETON()))) then
                    jresult => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(j_x, j_y), (shifta(((j_rectangle%jm_getWidth_0() * j_scale)), iand(1, 31))), (shifta(((j_rectangle%jm_getHeight_0() * j_scale)), iand(1, 31))))
                    return
                end if
            end if
            j_index = j_index + 1
        end do
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1('No rectangle available for current feature selection or Resource: ')
        jtemp4 => jtemp5%jm_append_1(j_resource)
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getProcedural_1(this, j_resource) result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
        jresult => ProceduralAnimationInterfaceFactoryInterface_jcast(this%jm_getBasicAnimationInterfaceFactoryInstance_1(j_resource))
        return
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_get_1(this, j_resource) result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(AnimationInterfaceFactoryInterface), pointer :: jresult
        jresult => AnimationInterfaceFactoryInterface_jcast(this%jm_getBasicAnimationInterfaceFactoryInstance_1(j_resource))
        return
  end function

  recursive function FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInstance_1(this, j_resource) result(jresult)
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), target :: this
    character(len=*), intent(in) :: j_resource
    class(BasicAnimationInterfaceFactoryInterface), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(BasicArrayList), pointer :: j_resourceTypeAvailableList
    integer(4) :: j_size
    class(FeatureResourceAnimationInterfaceFactoryInterface), pointer :: j_featureInterface
    class(BasicAnimationInterfaceFactoryInterface), pointer :: j_animationInterfaceFactoryInterface
    integer(4) :: j_index
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_result
    character(len=:), allocatable :: j_NO_ANIMATION_AVAILABLE_FROM
    character(len=:), allocatable :: j_FOR_FACTORIES
    character(len=:), allocatable :: j_FOR_RESOURCE
    character(len=:), allocatable :: j_HAS_KEY
    character(len=:), allocatable :: j_RESOURCES_LABEL
    integer(4) :: j_size2
    class(BasicArrayList), pointer :: jtemp7
    class(CommonSeps), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(CommonSeps), pointer :: jtemp13
    class(JObject), pointer :: jtemp14
    class(CommonSeps), pointer :: jtemp15
    class(CommonSeps), pointer :: jtemp16
    class(StringUtil), pointer :: jtemp17
    class(ABHashtable), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%jm_getList_0()
        j_resourceTypeAvailableList => BasicArrayListD_jnew_0()
        jtemp7 => this%jm_getList_0()
        j_size = jtemp7%jm_size_0()
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_featureInterface => FeatureResourceAnimationInterfaceFactoryInterface_jcast(j_list%f_objectArray((j_index) + 1)%v)
            if (j_featureInterface%jm_isFeature_0()) then
                jdiscardBoolean = j_resourceTypeAvailableList%jm_add_1(j_featureInterface)
                j_animationInterfaceFactoryInterface => j_featureInterface%jm_getBasicAnimationInterfaceFactoryInstance_1(j_resource)
                if ((.not. JR_same(j_animationInterfaceFactoryInterface, NullAnimationFactory_jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY()))) then
                    jresult => j_animationInterfaceFactoryInterface
                    return
                end if
            end if
            j_index = j_index + 1
        end do
        if ((j_resourceTypeAvailableList%jm_size_0() > 0)) then
            j_NO_ANIMATION_AVAILABLE_FROM = 'No animation available from: '
            j_FOR_FACTORIES = ' factories: '
            j_FOR_RESOURCE = ' for Resource: '
            j_HAS_KEY = ' has: '
            j_RESOURCES_LABEL = ' resources '
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1(j_NO_ANIMATION_AVAILABLE_FROM)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_resourceTypeAvailableList%jm_size_0())
            jtemp13 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp13%f_FORWARD_SLASH)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_size)
            jdiscardRef => j_stringBuffer%jm_append_1(j_FOR_FACTORIES)
            j_size2 = j_resourceTypeAvailableList%jm_size_0()
            j_index = 0
            do while ((j_index < j_size2))
                jtemp14 => j_resourceTypeAvailableList%jm_get_1(j_index)
                jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(jtemp14))
                jtemp15 => CommonSeps_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp15%f_COMMA_SEP)
                j_index = j_index + 1
            end do
            jdiscardRef => j_stringBuffer%jm_append_1(j_FOR_RESOURCE)
            jdiscardRef => j_stringBuffer%jm_append_1(j_resource)
            j_index = 0
            do while ((j_index < j_size))
                jtemp16 => CommonSeps_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp16%f_NEW_LINE)
                j_featureInterface => FeatureResourceAnimationInterfaceFactoryInterface_jcast(j_list%f_objectArray((j_index) + 1)%v)
                if (j_featureInterface%jm_isFeature_0()) then
                    jtemp17 => StringUtil_jm_getInstance_0()
                    jdiscardRef => j_stringBuffer%jm_append_1(jtemp17%jm_toString_1(j_featureInterface))
                    jdiscardRef => j_stringBuffer%jm_append_1(j_HAS_KEY)
                    jtemp18 => j_featureInterface%jm_getHashtable_0()
                    jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp18%jm_size_0())
                    jdiscardRef => j_stringBuffer%jm_append_1(j_RESOURCES_LABEL)
                end if
                j_index = j_index + 1
            end do
            error stop JR_toString(JR_newJObject('Exception'))
        else
            j_stringBuffer => StringMaker_jnew_0()
            j_index = 0
            do while ((j_index < j_size))
                j_featureInterface => FeatureResourceAnimationInterfaceFactoryInterface_jcast(j_list%f_objectArray((j_index) + 1)%v)
                jdiscardRef => j_stringBuffer%jm_append_1(j_featureInterface%jm_toString_0())
                jtemp8 => CommonSeps_jm_getInstance_0()
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp8%f_SPACE)
                j_index = j_index + 1
            end do
            j_result = j_stringBuffer%jm_toString_0()
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jtemp12 => j_stringBuffer%jm_append_1('No feature resource type available for Resource: ')
            jtemp11 => jtemp12%jm_append_1(j_resource)
            jtemp10 => jtemp11%jm_append_1(' Resource Factories Available: ')
            jtemp9 => jtemp10%jm_append_1(j_result)
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function
end module FeaturedAnimationInterfaceFactoryInterfaceFactory_m

function FeaturedAnimationInterfaceFactoryInterfaceFactory_jnew_0_jext() result(this)
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m, only: JObject, FeaturedAnimationInterfaceFactoryInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => FeaturedAnimationInterfaceFactoryInterfaceFactory_jnew_0()
end function

