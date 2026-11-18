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
module OnDemandLoader_m
  use JR_m
  use BaseResourceAnimationInterfaceFactoryInterfaceFactory_m
  use Features_m
  use MainFeatureFactory_m
  use GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_m
  use LayerPlacementInterfaceBasicArrayListFactoryInterface_m
  use ResourceLoadingLevelFactory_m
  use ImageCache_m
  use PreLogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use OnDemandResourcesFactory_m
  use OnDemandResources_m
  implicit none

  type, extends(JObject) :: OnDemandLoader
    class(OnDemandResourcesFactory), pointer :: f_onDemandResourcesFactory => null()
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), pointer :: f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory => null()
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: f_resourceAnimationInterfaceFactoryInterfaceFactory => null()
  contains
    procedure :: jm_init_3 => OnDemandLoader_jm_init_3
    procedure :: jm_initAll_2 => OnDemandLoader_jm_initAll_2
    procedure :: jm_initLevel_4 => OnDemandLoader_jm_initLevel_4
  end type


contains

  function OnDemandLoader_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OnDemandLoader), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OnDemandLoader)
      jresult => object
    end select
  end function

  recursive function OnDemandLoader_jnew_3(j_onDemandResourcesFactory, j_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory, j_resourceAnimationInterfaceFactoryInterfaceFactory) result(this)
    class(OnDemandResourcesFactory), target, optional :: j_onDemandResourcesFactory
    class(GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory), target, optional :: j_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
    class(BaseResourceAnimationInterfaceFactoryInterfaceFactory), target, optional :: j_resourceAnimationInterfaceFactoryInterfaceFactory
    class(OnDemandLoader), pointer :: this
    allocate(this)
    this%jclass = 'OnDemandLoader'
    
    
    
        this%f_onDemandResourcesFactory => j_onDemandResourcesFactory
        this%f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory => j_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory
        this%f_resourceAnimationInterfaceFactoryInterfaceFactory => j_resourceAnimationInterfaceFactoryInterfaceFactory
  end function

  recursive subroutine OnDemandLoader_jm_init_3(this, j_imageCache, j_level, j_loadingString)
    class(OnDemandLoader), target :: this
    class(ImageCache), target, optional :: j_imageCache
    integer(4), value :: j_level
    character(len=*), intent(in) :: j_loadingString
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), pointer :: j_layerPlacementInterfaceBasicArrayListFactoryInterface
    class(Features), pointer :: jtemp1
    class(MainFeatureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        jtemp2 => MainFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(jtemp2%f_LOAD_ALL)) then
            if (this%f_resourceAnimationInterfaceFactoryInterfaceFactory%jm_isInitialized_0()) then
                return
            end if
            call this%jm_initAll_2(j_imageCache, j_loadingString)
        else if ((j_level /= j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0())) then
            j_layerPlacementInterfaceBasicArrayListFactoryInterface => this%f_gameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory%jm_getInstance_1(j_level)
            call this%jm_initLevel_4(j_layerPlacementInterfaceBasicArrayListFactoryInterface, j_imageCache, j_level, j_loadingString)
        end if
  end subroutine

  recursive subroutine OnDemandLoader_jm_initAll_2(this, j_imageCache, j_loadingString)
    class(OnDemandLoader), target :: this
    class(ImageCache), target, optional :: j_imageCache
    character(len=*), intent(in) :: j_loadingString
    integer(4) :: j_index
    integer(4) :: j_portion
    class(OnDemandResources), pointer :: j_onDemandResources
    integer(4) :: j_onDemandIndex
    integer(4) :: jtemp3
        j_index = 0
        j_portion = 120
        continue
        j_onDemandIndex = j_onDemandIndex - 1
        jtemp3 = j_onDemandIndex
        j_onDemandIndex = this%f_onDemandResourcesFactory%jm_size_0()
        do while ((jtemp3 >= 0))
            j_onDemandResources => this%f_onDemandResourcesFactory%jm_remove_1(j_onDemandIndex)
            if ((.not. JR_same(j_onDemandResources, OnDemandResources_jstatic_NULL_ON_DEMAND_RESOURCES()))) then
                j_index = j_onDemandResources%jm_initAt_5(j_imageCache, this%f_resourceAnimationInterfaceFactoryInterfaceFactory, j_portion, j_loadingString, j_index)
            end if
        end do
  end subroutine

  recursive subroutine OnDemandLoader_jm_initLevel_4(this, j_layerPlacementInterfaceBasicArrayListFactoryInterface, j_imageCache, j_level, j_loadingString)
    class(OnDemandLoader), target :: this
    class(LayerPlacementInterfaceBasicArrayListFactoryInterface), target, optional :: j_layerPlacementInterfaceBasicArrayListFactoryInterface
    class(ImageCache), target, optional :: j_imageCache
    integer(4), value :: j_level
    character(len=*), intent(in) :: j_loadingString
    class(CommonStrings), pointer :: j_commonStrings
    integer(4) :: j_portion
    integer(4) :: j_index
    integer(4), allocatable :: j_onDemandArray(:)
    class(OnDemandResources), pointer :: j_onDemandResources
    integer(4) :: j_onDemandIndex
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    integer(4) :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_portion = 120
        j_index = 0
        j_onDemandArray = j_layerPlacementInterfaceBasicArrayListFactoryInterface%jm_getOnDemandResources_0()
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(j_commonStrings%f_START)
        jtemp4 => jtemp5%jm_appendint_1(size(j_onDemandArray, 1))
        call PreLogUtil_jm_put_3(jtemp4%jm_toString_0(), this, 'initLevel')
        continue
        j_onDemandIndex = j_onDemandIndex - 1
        jtemp7 = j_onDemandIndex
        j_onDemandIndex = size(j_onDemandArray, 1)
        do while ((jtemp7 >= 0))
            j_onDemandResources => this%f_onDemandResourcesFactory%jm_remove_1(j_onDemandArray((j_onDemandIndex) + 1))
            if ((.not. JR_same(j_onDemandResources, OnDemandResources_jstatic_NULL_ON_DEMAND_RESOURCES()))) then
                j_index = j_onDemandResources%jm_initAt_5(j_imageCache, this%f_resourceAnimationInterfaceFactoryInterfaceFactory, j_portion, j_loadingString, j_index)
            end if
        end do
  end subroutine
end module OnDemandLoader_m

