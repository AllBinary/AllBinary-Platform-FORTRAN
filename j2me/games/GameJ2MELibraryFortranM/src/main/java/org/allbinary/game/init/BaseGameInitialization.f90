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
! package org.allbinary.game.init
module BaseGameInitialization_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use GameConfigurationCentral_m
  use ChangedGameFeatureListener_m
  use InputFeatureFactory_m
  use MainFeatureFactory_m
  use PlatformInputMappingFactory_m
  use GameKeyEventFactory_m
  use FeaturedResourceRelativeRelationshipFactory_m
  use ResourceInitialization_m
  use ResourceLoadingLevelFactory_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use GameFeatureImageCacheFactory_m
  use CompleteMotionGestureInputToGameMotionGestureInput_m
  use BasicTouchInputFactory_m
  use CancelTouchButtonInputFactory_m
  use AbeClientInformationInterface_m
  use GameInitializationInterface_m
  implicit none

  type, extends(GameInitializationInterface) :: BaseGameInitialization
    type(JRef), allocatable :: f_resourceInitializationArray(:)
    integer(4) :: f_portion = 0
    logical :: f_initialized = .false.
    integer(4) :: f_EARLY_RESOURCES = 0
    integer(4) :: f_GAME_RESOURCES = 0
    integer(4) :: f_EARLY_CHANGABLE_RESOURCES = 0
    integer(4) :: f_GAME_CHANGABLE_RESOURCES = 0
    logical :: f_gameInitialized = .false.
    logical :: f_allLoaded = .false.
  contains
    procedure :: jm_initKey_1 => BaseGameInitialization_jm_initKey_1
    procedure :: jm_initKeyMapping_2 => BaseGameInitialization_jm_initKeyMapping_2
    procedure :: jm_init_3 => BaseGameInitialization_jm_init_3
    procedure :: jm_resourceInitialization_1 => BaseGameInitialization_jm_resourceInitialization_1
    procedure :: jm_resourceAnimationChange_0 => BaseGameInitialization_jm_resourceAnimationChange_0
    procedure :: jm_clearResources_0 => BaseGameInitialization_jm_clearResources_0
    procedure :: jm_setGameInitialized_1 => BaseGameInitialization_jm_setGameInitialized_1
    procedure :: jm_isGameInitialized_0 => BaseGameInitialization_jm_isGameInitialized_0
    procedure :: jm_getPortion_0 => BaseGameInitialization_jm_getPortion_0
    procedure :: jm_setInitialized_1 => BaseGameInitialization_jm_setInitialized_1
    procedure :: jm_isInitialized_0 => BaseGameInitialization_jm_isInitialized_0
  end type

  class(BaseGameInitialization), pointer, save :: BaseGameInitialization_jcell_NULL_BASE_GAME_INITIALIZATION => null()
  logical, save :: BaseGameInitialization_jset_NULL_BASE_GAME_INITIALIZATION = .false.

contains

  function BaseGameInitialization_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseGameInitialization), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseGameInitialization)
      jresult => object
    end select
  end function

  function BaseGameInitialization_jstatic_NULL_BASE_GAME_INITIALIZATION() result(jresult)
    class(BaseGameInitialization), pointer :: jresult
    if (.not. BaseGameInitialization_jset_NULL_BASE_GAME_INITIALIZATION) then
      BaseGameInitialization_jset_NULL_BASE_GAME_INITIALIZATION = .true.
      BaseGameInitialization_jcell_NULL_BASE_GAME_INITIALIZATION => BaseGameInitialization_jnew_2(JR_newRefArray(0), 0)
    end if
    jresult => BaseGameInitialization_jcell_NULL_BASE_GAME_INITIALIZATION
  end function

  subroutine BaseGameInitialization_jsetstatic_NULL_BASE_GAME_INITIALIZATION(jvalue)
    class(BaseGameInitialization), target, optional :: jvalue
    BaseGameInitialization_jset_NULL_BASE_GAME_INITIALIZATION = .true.
    if (present(jvalue)) then
      BaseGameInitialization_jcell_NULL_BASE_GAME_INITIALIZATION => jvalue
    else
      BaseGameInitialization_jcell_NULL_BASE_GAME_INITIALIZATION => null()
    end if
  end subroutine

  recursive function BaseGameInitialization_jnew_2(j_resourceInitializationArray, j_portion) result(this)
    type(JRef) :: j_resourceInitializationArray(:)
    integer(4), value :: j_portion
    class(BaseGameInitialization), pointer :: this
    allocate(this)
    this%jclass = 'BaseGameInitialization'
    
    
    
    this%f_EARLY_RESOURCES = 0
    this%f_GAME_RESOURCES = 1
    this%f_EARLY_CHANGABLE_RESOURCES = 2
    this%f_GAME_CHANGABLE_RESOURCES = 3
    
    
        this%f_resourceInitializationArray = j_resourceInitializationArray
        this%f_portion = j_portion
  end function

  recursive subroutine BaseGameInitialization_jm_initKey_1(this, j_portion)
    class(BaseGameInitialization), target :: this
    integer(4), value :: j_portion
    continue
  end subroutine

  recursive subroutine BaseGameInitialization_jm_initKeyMapping_2(this, j_abeClientInformation, j_portion)
    class(BaseGameInitialization), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    integer(4), value :: j_portion
    class(ChangedGameFeatureListener), pointer :: jtemp1
    class(InputFeatureFactory), pointer :: jtemp2
    class(PersistentInputMapping), pointer :: jtemp3
    class(PlatformInputMappingFactory), pointer :: jtemp4
    class(ProgressCanvasFactory), pointer :: jtemp5
    class(ChangedGameFeatureListener), pointer :: jtemp6
    class(InputFeatureFactory), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => InputFeatureFactory_jm_getInstance_0()
        jtemp1 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp1%jm_isChangedFeature_1(jtemp2%f_INPUT_MAPPING)) then
            jtemp4 => PlatformInputMappingFactory_jm_getInstance_0()
            jtemp3 => jtemp4%jm_getPersistentInputMappingInstance_0()
            call jtemp3%jm_init_1(j_abeClientInformation)
            jtemp5 => ProgressCanvasFactory_jm_getInstance_0()
            call jtemp5%jm_addNormalPortion_2(50, 'Game Keys')
            jtemp7 => InputFeatureFactory_jm_getInstance_0()
            jtemp6 => ChangedGameFeatureListener_jm_getInstance_0()
            call jtemp6%jm_remove_1(jtemp7%f_INPUT_MAPPING)
        end if
  end subroutine

  recursive subroutine BaseGameInitialization_jm_init_3(this, j_abeClientInformation, j_commandListener, j_level)
    class(BaseGameInitialization), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    integer(4), value :: j_level
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    integer(4) :: j_localPortion
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(GameKeyEventFactory), pointer :: jtemp8
    class(BasicTouchInputFactory), pointer :: jtemp9
    class(PersistentInputMapping), pointer :: jtemp10
    class(PlatformInputMappingFactory), pointer :: jtemp11
    class(CompleteMotionGestureInputToGameMotionGestureInput), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        if (((.not. this%jm_isInitialized_0()) .and. (((j_level == j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0()) .or. (j_level == j_resourceLoadingLevelFactory%f_LOAD_EARLY%jm_getLevel_0()))))) then
            j_localPortion = 40
            if ((j_level == j_resourceLoadingLevelFactory%f_LOAD_EARLY%jm_getLevel_0())) then
                j_localPortion = 8
            end if
            call this%jm_setInitialized_1(.true.)
            call this%jm_initKey_1(this%jm_getPortion_0())
            call this%jm_initKeyMapping_2(j_abeClientInformation, this%jm_getPortion_0())
            jtemp8 => GameKeyEventFactory_jm_getInstance_0()
            call jtemp8%jm_init_0()
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            call j_progressCanvas%jm_addNormalPortion_2(j_localPortion, 'Game Key Events')
            jtemp11 => PlatformInputMappingFactory_jm_getInstance_0()
            jtemp10 => jtemp11%jm_getPersistentInputMappingInstance_0()
            jtemp9 => BasicTouchInputFactory_jm_getInstance_0()
            call jtemp9%jm_init_1(jtemp10%jm_getInputMapping_0())
            call CancelTouchButtonInputFactory_jm_getInstance_0()
            call j_progressCanvas%jm_addNormalPortion_2(j_localPortion, 'Touch Input')
            jtemp12 => CompleteMotionGestureInputToGameMotionGestureInput_jm_getInstance_0()
            call jtemp12%jm_init_0()
            call j_progressCanvas%jm_addNormalPortion_2(j_localPortion, 'Motion Input')
            call GameFeatureImageCacheFactory_jm_init_0()
            call j_progressCanvas%jm_addNormalPortion_2(j_localPortion, 'Image Cache')
            associate (jstaticref1 => ResourceInitialization_jcast(this%f_resourceInitializationArray((this%f_EARLY_RESOURCES) + 1)%v))
            call jstaticref1%jm_init_0()
            end associate
        end if
  end subroutine

  recursive subroutine BaseGameInitialization_jm_resourceInitialization_1(this, j_level)
    class(BaseGameInitialization), target :: this
    integer(4), value :: j_level
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(BasicArrayList), pointer :: jtemp13
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp14
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        if ((this%jm_resourceAnimationChange_0() .and. (j_level == j_resourceLoadingLevelFactory%f_LOAD_EARLY%jm_getLevel_0()))) then
            call this%jm_clearResources_0()
            associate (jstaticref2 => ResourceInitialization_jcast(this%f_resourceInitializationArray((this%f_EARLY_CHANGABLE_RESOURCES) + 1)%v))
            call jstaticref2%jm_init_0()
            end associate
        end if
        if ((this%jm_resourceAnimationChange_0() .and. (j_level == j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0()))) then
            if (this%f_allLoaded) then
                call this%jm_clearResources_0()
            end if
            jtemp14 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
            jtemp13 => jtemp14%jm_getList_0()
            if ((jtemp13%jm_size_0() == 0)) then
                associate (jstaticref3 => ResourceInitialization_jcast(this%f_resourceInitializationArray((this%f_EARLY_CHANGABLE_RESOURCES) + 1)%v))
                call jstaticref3%jm_init_0()
                end associate
            end if
            associate (jstaticref4 => ResourceInitialization_jcast(this%f_resourceInitializationArray((this%f_GAME_CHANGABLE_RESOURCES) + 1)%v))
            call jstaticref4%jm_init_0()
            end associate
            this%f_allLoaded = .true.
        end if
  end subroutine

  recursive function BaseGameInitialization_jm_resourceAnimationChange_0(this) result(jresult)
    class(BaseGameInitialization), target :: this
    logical :: jresult
    class(ChangedGameFeatureListener), pointer :: j_changedGameFeatureListener
    class(GameConfigurationCentral), pointer :: j_gameConfigurationCentral
    class(ChangedGameFeatureListener), pointer :: jtemp15
    class(MainFeatureFactory), pointer :: jtemp16
        j_changedGameFeatureListener => ChangedGameFeatureListener_jm_getInstance_0()
        j_gameConfigurationCentral => GameConfigurationCentral_jm_getInstance_0()
        if (j_changedGameFeatureListener%jm_isChangedGameConfiguration_1(j_gameConfigurationCentral%f_SCALE)) then
            jresult = .true.
            return
        end if
        jtemp16 => MainFeatureFactory_jm_getInstance_0()
        jtemp15 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp15%jm_isChangedFeature_1(jtemp16%f_STATIC)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive subroutine BaseGameInitialization_jm_clearResources_0(this)
    class(BaseGameInitialization), target :: this
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: j_featuredAnimationInterfaceFactoryInterfaceFactory
    class(FeaturedResourceRelativeRelationshipFactory), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_allLoaded = .false.
        call GameFeatureImageCacheFactory_jm_releaseAll_0()
        j_featuredAnimationInterfaceFactoryInterfaceFactory => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        call j_featuredAnimationInterfaceFactoryInterfaceFactory%jm_clear_0()
        jtemp17 => FeaturedResourceRelativeRelationshipFactory_jm_getInstance_0()
        call jtemp17%jm_clear_0()
  end subroutine

  recursive subroutine BaseGameInitialization_jm_setGameInitialized_1(this, j_gameInitialized)
    class(BaseGameInitialization), target :: this
    logical, value :: j_gameInitialized
        this%f_gameInitialized = j_gameInitialized
  end subroutine

  recursive function BaseGameInitialization_jm_isGameInitialized_0(this) result(jresult)
    class(BaseGameInitialization), target :: this
    logical :: jresult
        jresult = this%f_gameInitialized
        return
  end function

  recursive function BaseGameInitialization_jm_getPortion_0(this) result(jresult)
    class(BaseGameInitialization), target :: this
    integer(4) :: jresult
        jresult = this%f_portion
        return
  end function

  recursive subroutine BaseGameInitialization_jm_setInitialized_1(this, j_initialized)
    class(BaseGameInitialization), target :: this
    logical, value :: j_initialized
        this%f_initialized = j_initialized
  end subroutine

  recursive function BaseGameInitialization_jm_isInitialized_0(this) result(jresult)
    class(BaseGameInitialization), target :: this
    logical :: jresult
        jresult = this%f_initialized
        return
  end function
end module BaseGameInitialization_m

