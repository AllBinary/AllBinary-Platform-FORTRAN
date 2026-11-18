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
! package org.allbinary.game.layer
module AllBinaryGameLayerManager_m
  use JR_m
  use GameInfo_m
  use NullPlayerGameInputComposite_m
  use PlayerGameInputCompositeInterface_m
  use ItemColorFactory_m
  use BasicColor_m
  use BasicColorFactory_m
  use AllBinaryLayerManager_m
  use LayerProcessor_m
  use NullUtil_m
  use SmallIntegerSingletonFactory_m
  use BasicArrayList_m
  use Integer_m
  implicit none

  type, extends(AllBinaryLayerManager) :: AllBinaryGameLayerManager
    class(BasicColor), pointer :: f_backgroundBasicColor => null()
    class(BasicColor), pointer :: f_foregroundBasicColor => null()
    class(GameInfo), pointer :: f_gameInfo => null()
    class(PlayerGameInputCompositeInterface), pointer :: f_playerGameInputCompositeInterface => null()
  contains
    procedure :: jm_getLayerManager_0 => AllBinaryGameLayerManager_jm_getLayerManager_0
    procedure :: jm_init_0 => AllBinaryGameLayerManager_jm_init_0
    procedure :: jm_getBackgroundBasicColor_0 => AllBinaryGameLayerManager_jm_getBackgroundBasicColor_0
    procedure :: jm_setBackgroundBasicColor_1 => AllBinaryGameLayerManager_jm_setBackgroundBasicColor_1
    procedure :: jm_getForegroundBasicColor_0 => AllBinaryGameLayerManager_jm_getForegroundBasicColor_0
    procedure :: jm_setForegroundBasicColor_1 => AllBinaryGameLayerManager_jm_setForegroundBasicColor_1
    procedure :: jm_getGameInfo_0 => AllBinaryGameLayerManager_jm_getGameInfo_0
    procedure :: jm_setGameInfo_1 => AllBinaryGameLayerManager_jm_setGameInfo_1
    procedure :: jm_setLayerProcessorList_1 => AllBinaryGameLayerManager_jm_setLayerProcessorList_1
    procedure :: jm_setPlayerGameInputCompositeInterface_1 => AllBinaryGameLayerManager_jm_setPlayerGameInputCompositeInterface_1
    procedure :: jm_getPlayerGameInputCompositeInterface_0 => AllBinaryGameLayerManager_jm_getPlayerGameInputCompositeInterface_0
  end type

  class(JObject), pointer, save :: AllBinaryGameLayerManager_jcell_NULL_ALLBINARY_LAYER_MANAGER => null()
  logical, save :: AllBinaryGameLayerManager_jset_NULL_ALLBINARY_LAYER_MANAGER = .false.
  integer(4), save :: AllBinaryGameLayerManager_jcell_ID
  logical, save :: AllBinaryGameLayerManager_jset_ID = .false.

contains

  function AllBinaryGameLayerManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryGameLayerManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryGameLayerManager)
      jresult => object
    end select
  end function

  function AllBinaryGameLayerManager_jstatic_NULL_ALLBINARY_LAYER_MANAGER() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. AllBinaryGameLayerManager_jset_NULL_ALLBINARY_LAYER_MANAGER) then
      AllBinaryGameLayerManager_jset_NULL_ALLBINARY_LAYER_MANAGER = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    AllBinaryGameLayerManager_jcell_NULL_ALLBINARY_LAYER_MANAGER => jtemp1%f_NULL_OBJECT
    end if
    jresult => AllBinaryGameLayerManager_jcell_NULL_ALLBINARY_LAYER_MANAGER
  end function

  subroutine AllBinaryGameLayerManager_jsetstatic_NULL_ALLBINARY_LAYER_MANAGER(jvalue)
    class(JObject), target, optional :: jvalue
    AllBinaryGameLayerManager_jset_NULL_ALLBINARY_LAYER_MANAGER = .true.
    if (present(jvalue)) then
      AllBinaryGameLayerManager_jcell_NULL_ALLBINARY_LAYER_MANAGER => jvalue
    else
      AllBinaryGameLayerManager_jcell_NULL_ALLBINARY_LAYER_MANAGER => null()
    end if
  end subroutine

  function AllBinaryGameLayerManager_jstatic_ID() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp5
    if (.not. AllBinaryGameLayerManager_jset_ID) then
      AllBinaryGameLayerManager_jset_ID = .true.
      jtemp5 => SmallIntegerSingletonFactory_jm_getInstance_0()
    AllBinaryGameLayerManager_jcell_ID = jtemp5%jm_getAt_1(22)
    end if
    jresult = AllBinaryGameLayerManager_jcell_ID
  end function

  subroutine AllBinaryGameLayerManager_jsetstatic_ID(jvalue)
    integer(4), value :: jvalue
    AllBinaryGameLayerManager_jset_ID = .true.
    AllBinaryGameLayerManager_jcell_ID = jvalue
  end subroutine

  recursive function AllBinaryGameLayerManager_jnew_3(j_backgroundBasicColor, j_foregroundBasicColor, j_gameInfo) result(this)
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(GameInfo), target, optional :: j_gameInfo
    class(AllBinaryGameLayerManager), pointer :: this
    class(ItemColorFactory), pointer :: j_itemColorFactory
    allocate(this)
    this%jclass = 'AllBinaryGameLayerManager'
    
    
    
    this%f_playerGameInputCompositeInterface => NullPlayerGameInputComposite_jstatic_NULL_PLAYER_GAME_INPUT_COMPOSITE()
        this%f_backgroundBasicColor => j_backgroundBasicColor
        this%f_foregroundBasicColor => j_foregroundBasicColor
        j_itemColorFactory => ItemColorFactory_jm_getInstance_0()
        j_itemColorFactory%f_INVERT_PAINT = this%f_backgroundBasicColor%jm_intValue_0()
        j_itemColorFactory%f_PAINT = this%f_foregroundBasicColor%jm_intValue_0()
        this%f_gameInfo => j_gameInfo
  end function

  recursive function AllBinaryGameLayerManager_jm_getNullInstance_0() result(jresult)
    class(AllBinaryGameLayerManager), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    class(BasicColorFactory), pointer :: jtemp4
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(AllBinaryGameLayerManager_jstatic_NULL_ALLBINARY_LAYER_MANAGER(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => BasicColorFactory_jm_getInstance_0()
            jtemp4 => BasicColorFactory_jm_getInstance_0()
            call AllBinaryGameLayerManager_jsetstatic_NULL_ALLBINARY_LAYER_MANAGER(AllBinaryGameLayerManager_jnew_3(jtemp3%f_BLACK, jtemp4%f_WHITE, GameInfo_jstatic_NONE()))
        end if
        jresult => AllBinaryGameLayerManager_jcast(AllBinaryGameLayerManager_jstatic_NULL_ALLBINARY_LAYER_MANAGER())
        return
  end function

  recursive function AllBinaryGameLayerManager_jm_getLayerManager_0(this) result(jresult)
    class(AllBinaryGameLayerManager), target :: this
    class(AllBinaryLayerManager), pointer :: jresult
        jresult => this
        return
  end function

  recursive subroutine AllBinaryGameLayerManager_jm_init_0(this)
    class(AllBinaryGameLayerManager), target :: this
    continue
  end subroutine

  recursive function AllBinaryGameLayerManager_jm_getBackgroundBasicColor_0(this) result(jresult)
    class(AllBinaryGameLayerManager), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_backgroundBasicColor
        return
  end function

  recursive subroutine AllBinaryGameLayerManager_jm_setBackgroundBasicColor_1(this, j_backgroundBasicColor)
    class(AllBinaryGameLayerManager), target :: this
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(ItemColorFactory), pointer :: jtemp6
        this%f_backgroundBasicColor => j_backgroundBasicColor
        jtemp6 => ItemColorFactory_jm_getInstance_0()
        jtemp6%f_INVERT_PAINT = this%f_backgroundBasicColor%jm_intValue_0()
  end subroutine

  recursive function AllBinaryGameLayerManager_jm_getForegroundBasicColor_0(this) result(jresult)
    class(AllBinaryGameLayerManager), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_foregroundBasicColor
        return
  end function

  recursive subroutine AllBinaryGameLayerManager_jm_setForegroundBasicColor_1(this, j_foregroundBasicColor)
    class(AllBinaryGameLayerManager), target :: this
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(ItemColorFactory), pointer :: jtemp7
        this%f_foregroundBasicColor => j_foregroundBasicColor
        jtemp7 => ItemColorFactory_jm_getInstance_0()
        jtemp7%f_PAINT = this%f_foregroundBasicColor%jm_intValue_0()
  end subroutine

  recursive function AllBinaryGameLayerManager_jm_getGameInfo_0(this) result(jresult)
    class(AllBinaryGameLayerManager), target :: this
    class(GameInfo), pointer :: jresult
        jresult => this%f_gameInfo
        return
  end function

  recursive subroutine AllBinaryGameLayerManager_jm_setGameInfo_1(this, j_gameInfo)
    class(AllBinaryGameLayerManager), target :: this
    class(GameInfo), target, optional :: j_gameInfo
        this%f_gameInfo => j_gameInfo
  end subroutine

  recursive subroutine AllBinaryGameLayerManager_jm_setLayerProcessorList_1(this, j_list)
    class(AllBinaryGameLayerManager), target :: this
    class(BasicArrayList), target, optional :: j_list
    type(JRef), allocatable :: j_layerProcessorInterfaceArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_layerProcessorInterfaceArray = JR_newRefArray(j_list%jm_size_0())
        j_size = size(j_layerProcessorInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_layerProcessorInterfaceArray((j_index) + 1)%v => LayerProcessor_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_index = j_index + 1
        end do
        call this%jm_setLayerProcessorArray_1(j_layerProcessorInterfaceArray)
  end subroutine

  recursive subroutine AllBinaryGameLayerManager_jm_setPlayerGameInputCompositeInterface_1(this, j_playerGameInputCompositeInterface)
    class(AllBinaryGameLayerManager), target :: this
    class(PlayerGameInputCompositeInterface), target, optional :: j_playerGameInputCompositeInterface
        this%f_playerGameInputCompositeInterface => j_playerGameInputCompositeInterface
  end subroutine

  recursive function AllBinaryGameLayerManager_jm_getPlayerGameInputCompositeInterface_0(this) result(jresult)
    class(AllBinaryGameLayerManager), target :: this
    class(PlayerGameInputCompositeInterface), pointer :: jresult
        jresult => this%f_playerGameInputCompositeInterface
        return
  end function
end module AllBinaryGameLayerManager_m

