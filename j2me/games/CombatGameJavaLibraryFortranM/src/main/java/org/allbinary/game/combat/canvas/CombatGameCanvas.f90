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
! package org.allbinary.game.combat.canvas
module CombatGameCanvas_m
  use JR_m
  use DestroyedLayerProcessor_m
  use DestroyEventCircularStaticPool_m
  use DestroyedEventHandler_m
  use Features_m
  use GameFeatureFactory_m
  use AllBinaryGameCanvas_m
  use BasicBuildGameInitializerFactory_m
  use AllBinaryGameLayerManager_m
  use DropLayerProcessor_m
  use GroupLayerManagerListener_m
  use HighScoresFactoryInterface_m
  use ProgressCanvasFactory_m
  use BasicLayerProcessor_m
  use AbeClientInformationInterface_m
  implicit none

  type, extends(AllBinaryGameCanvas) :: CombatGameCanvas
  contains
    procedure :: jm_CombatGameCanvas_init_0 => CombatGameCanvas_jm_CombatGameCanvas_init_0
    procedure :: jm_initApp_1 => CombatGameCanvas_jm_initApp_1
    procedure :: jm_initConfigurablePortion_1 => CombatGameCanvas_jm_initConfigurablePortion_1
    procedure :: jm_processPlayingGame_0 => CombatGameCanvas_jm_processPlayingGame_0
    procedure :: jm_cleanupGame_0 => CombatGameCanvas_jm_cleanupGame_0
    procedure :: jm_cleanupManager_0 => CombatGameCanvas_jm_cleanupManager_0
  end type

  type(JRef), allocatable, save :: CombatGameCanvas_jcell_basicLayerProcessor(:)
  logical, save :: CombatGameCanvas_jset_basicLayerProcessor = .false.

contains

  function CombatGameCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CombatGameCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CombatGameCanvas)
      jresult => object
    end select
  end function

  function CombatGameCanvas_jstatic_basicLayerProcessor() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. CombatGameCanvas_jset_basicLayerProcessor) then
      CombatGameCanvas_jset_basicLayerProcessor = .true.
      CombatGameCanvas_jcell_basicLayerProcessor = JR_newRefArray(0)
    end if
    jresult = CombatGameCanvas_jcell_basicLayerProcessor
  end function

  subroutine CombatGameCanvas_jsetstatic_basicLayerProcessor(jvalue)
    type(JRef) :: jvalue(:)
    CombatGameCanvas_jset_basicLayerProcessor = .true.
    CombatGameCanvas_jcell_basicLayerProcessor = jvalue
  end subroutine

  recursive function CombatGameCanvas_jnew_5(j_cmdListener, j_gameLayerManager, j_highScoresFactoryInterface, j_gameInitializationInterfaceFactoryInterface, j_buffered) result(this)
    class(CommandListener), target, optional :: j_cmdListener
    class(AllBinaryGameLayerManager), target, optional :: j_gameLayerManager
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(BasicBuildGameInitializerFactory), target, optional :: j_gameInitializationInterfaceFactoryInterface
    logical, value :: j_buffered
    class(CombatGameCanvas), pointer :: this
    allocate(this)
    this%jclass = 'CombatGameCanvas'
        continue ! super()
  end function

  recursive subroutine CombatGameCanvas_jm_CombatGameCanvas_init_0(this)
    class(CombatGameCanvas), target :: this
    class(DestroyEventCircularStaticPool), pointer :: jtemp1
    class(ProgressCanvasFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => DestroyEventCircularStaticPool_jm_getInstance_0()
        call jtemp1%jm_init_1(this)
        jtemp2 => ProgressCanvasFactory_jm_getInstance_0()
        call jtemp2%jm_addNormalPortion_2(50, 'Destroy Events')
  end subroutine

  recursive subroutine CombatGameCanvas_jm_initApp_1(this, j_abeClientInformation)
    class(CombatGameCanvas), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_CombatGameCanvas_init_0()
        call this%AllBinaryGameCanvas%jm_initApp_1(j_abeClientInformation)
  end subroutine

  recursive subroutine CombatGameCanvas_jm_initConfigurablePortion_1(this, j_portion)
    class(CombatGameCanvas), target :: this
    integer(4), value :: j_portion
    class(Features), pointer :: j_features
    class(GameFeatureFactory), pointer :: j_gameFeatureFactory
    class(ProgressCanvasFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call DestroyedLayerProcessor_jm_init_0()
        jtemp3 => ProgressCanvasFactory_jm_getInstance_0()
        call jtemp3%jm_addNormalPortion_2(j_portion, 'Basic Processors')
        j_features => Features_jm_getInstance_0()
        j_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
        if ((j_features%jm_isFeature_1(j_gameFeatureFactory%f_DROPPED_ITEMS) .and. j_features%jm_isFeature_1(j_gameFeatureFactory%f_DROPPED_ITEMS_FROM_DEATH))) then
            call CombatGameCanvas_jsetstatic_basicLayerProcessor(JR_newRefArray(2))
            CombatGameCanvas_jstatic_basicLayerProcessor()((0) + 1)%v => DestroyedLayerProcessor_jm_getInstance_0()
            CombatGameCanvas_jstatic_basicLayerProcessor()((1) + 1)%v => DropLayerProcessor_jm_getInstance_0()
        else
            call CombatGameCanvas_jsetstatic_basicLayerProcessor(JR_newRefArray(1))
            CombatGameCanvas_jstatic_basicLayerProcessor()((0) + 1)%v => DestroyedLayerProcessor_jm_getInstance_0()
        end if
  end subroutine

  recursive subroutine CombatGameCanvas_jm_processPlayingGame_0(this)
    class(CombatGameCanvas), target :: this
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%AllBinaryGameCanvas%jm_processPlayingGame_0()
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = size(CombatGameCanvas_jstatic_basicLayerProcessor(), 1)
        do while ((jtemp4 >= 0))
            associate (jstaticref1 => BasicLayerProcessor_jcast(CombatGameCanvas_jstatic_basicLayerProcessor()((j_index) + 1)%v))
            call jstaticref1%jm_process_1(this%f_gameLayerManager)
            end associate
        end do
  end subroutine

  recursive subroutine CombatGameCanvas_jm_cleanupGame_0(this)
    class(CombatGameCanvas), target :: this
    integer(4) :: j_index
    class(JObject), pointer :: jtemp5
    integer(4) :: jtemp6
    class(GroupLayerManagerListener), pointer :: jtemp7
    class(GroupLayerManagerListener), pointer :: jtemp8
    class(DestroyedEventHandler), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%AllBinaryGameCanvas%jm_cleanupGame_0()
        j_index = j_index - 1
        jtemp6 = j_index
        j_index = size(CombatGameCanvas_jstatic_basicLayerProcessor(), 1)
        do while ((jtemp6 >= 0))
            associate (jstaticref2 => BasicLayerProcessor_jcast(CombatGameCanvas_jstatic_basicLayerProcessor()((j_index) + 1)%v))
            jtemp5 => jstaticref2%jm_getList_0()
            end associate
            call jtemp5%jm_clear_0()
        end do
        jtemp7 => GroupLayerManagerListener_jm_getInstance_0()
        call jtemp7%jm_clear_0()
        jtemp8 => GroupLayerManagerListener_jm_getInstance_0()
        call jtemp8%jm_log_0()
        jtemp9 => DestroyedEventHandler_jm_getInstance_0()
        call jtemp9%jm_removeAllListeners_0()
        call this%jm_cleanupManager_0()
  end subroutine

  recursive subroutine CombatGameCanvas_jm_cleanupManager_0(this)
    class(CombatGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameLayerManager%jm_cleanup_0()
  end subroutine
end module CombatGameCanvas_m

