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
module GameInitializationUtil_m
  use JR_m
  use ChangedGameFeatureListener_m
  use GameInitializedEvent_m
  use GameInitializedEventHandler_m
  use Features_m
  use MainFeatureFactory_m
  use ResourceLoadingLevelFactory_m
  use MyCanvas_m
  use AbeClientInformationInterface_m
  use GameInitializationInterface_m
  use BasicBuildGameInitializerFactory_m
  implicit none

  type, extends(JObject) :: GameInitializationUtil
    class(GameInitializedEvent), pointer :: f_EVENT => null()
  contains
    procedure :: jm_initDemo_3 => GameInitializationUtil_jm_initDemo_3
    procedure :: jm_initGame_3 => GameInitializationUtil_jm_initGame_3
  end type

  class(GameInitializationUtil), pointer, save :: GameInitializationUtil_jcell_instance => null()
  logical, save :: GameInitializationUtil_jset_instance = .false.

contains

  function GameInitializationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializationUtil)
      jresult => object
    end select
  end function

  function GameInitializationUtil_jstatic_instance() result(jresult)
    class(GameInitializationUtil), pointer :: jresult
    if (.not. GameInitializationUtil_jset_instance) then
      GameInitializationUtil_jset_instance = .true.
      GameInitializationUtil_jcell_instance => GameInitializationUtil_jnew_0()
    end if
    jresult => GameInitializationUtil_jcell_instance
  end function

  subroutine GameInitializationUtil_jsetstatic_instance(jvalue)
    class(GameInitializationUtil), target, optional :: jvalue
    GameInitializationUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameInitializationUtil_jcell_instance => jvalue
    else
      GameInitializationUtil_jcell_instance => null()
    end if
  end subroutine

  function GameInitializationUtil_jnew_0() result(this)
    class(GameInitializationUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameInitializationUtil'
    this%f_EVENT => GameInitializedEvent_jnew_1(this)
  end function

  recursive subroutine GameInitializationUtil_jm_initDemo_3(this, j_abeClientInformation, j_canvas, j_gameInitializationInterfaceFactoryInterface)
    class(GameInitializationUtil), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(MyCanvas), target, optional :: j_canvas
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    class(MainFeatureFactory), pointer :: j_mainFeatureFactory
    class(GameInitializationInterface), pointer :: j_gameInitializationInterface
    class(Features), pointer :: j_features
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(ChangedGameFeatureListener), pointer :: jtemp1
    class(GameInitializedEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mainFeatureFactory => MainFeatureFactory_jm_getInstance_0()
        jtemp1 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp1%jm_isChangedFeature_1(j_mainFeatureFactory%f_STATIC)) then
            j_gameInitializationInterface => j_gameInitializationInterfaceFactoryInterface%jm_getInstance_0()
            j_features => Features_jm_getInstance_0()
            if (j_features%jm_isFeature_1(j_mainFeatureFactory%f_LOAD_ALL)) then
                call this%jm_initGame_3(j_abeClientInformation, j_canvas, j_gameInitializationInterfaceFactoryInterface)
            else if (j_features%jm_isFeature_1(j_mainFeatureFactory%f_LOAD_ONDEMAND)) then
                j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
                call j_gameInitializationInterface%jm_init_3(j_abeClientInformation, j_canvas%jm_getCustomCommandListener_0(), j_resourceLoadingLevelFactory%f_LOAD_EARLY%jm_getLevel_0())
                call this%f_EVENT%jm_setResourceLoadingLevel_1(j_resourceLoadingLevelFactory%f_LOAD_EARLY)
            else
                error stop JR_toString(JR_newJObject('Exception'))
            end if
            jtemp2 => GameInitializedEventHandler_jm_getInstance_0()
            call jtemp2%jm_fireEvent_1(this%f_EVENT)
        end if
  end subroutine

  recursive subroutine GameInitializationUtil_jm_initGame_3(this, j_abeClientInformation, j_canvas, j_gameInitializationInterfaceFactoryInterface)
    class(GameInitializationUtil), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(MyCanvas), target, optional :: j_canvas
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    class(GameInitializationInterface), pointer :: j_gameInitializationInterface
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(ChangedGameFeatureListener), pointer :: jtemp3
    class(MainFeatureFactory), pointer :: jtemp4
    class(GameInitializedEventHandler), pointer :: jtemp5
    class(ChangedGameFeatureListener), pointer :: jtemp6
    class(MainFeatureFactory), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => MainFeatureFactory_jm_getInstance_0()
        jtemp3 => ChangedGameFeatureListener_jm_getInstance_0()
        if (jtemp3%jm_isChangedFeature_1(jtemp4%f_STATIC)) then
            j_gameInitializationInterface => j_gameInitializationInterfaceFactoryInterface%jm_getInstance_0()
            j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
            call j_gameInitializationInterface%jm_init_3(j_abeClientInformation, j_canvas%jm_getCustomCommandListener_0(), j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0())
            call this%f_EVENT%jm_setResourceLoadingLevel_1(j_resourceLoadingLevelFactory%f_LOAD_ALL)
            jtemp5 => GameInitializedEventHandler_jm_getInstance_0()
            call jtemp5%jm_fireEvent_1(this%f_EVENT)
            jtemp7 => MainFeatureFactory_jm_getInstance_0()
            jtemp6 => ChangedGameFeatureListener_jm_getInstance_0()
            call jtemp6%jm_remove_1(jtemp7%f_STATIC)
        end if
  end subroutine

  recursive function GameInitializationUtil_jm_getInstance_0() result(jresult)
    class(GameInitializationUtil), pointer :: jresult
        jresult => GameInitializationUtil_jstatic_instance()
        return
  end function
end module GameInitializationUtil_m

