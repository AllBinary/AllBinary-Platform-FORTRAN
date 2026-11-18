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
module PlayerGameInputGameLayer_m
  use JR_m
  use PlayerGameInput_m
  use PlayerGameInputCompositeInterface_m
  use PointFactory_m
  use Rectangle_m
  use CanvasStrings_m
  use AllBinaryLayerManager_m
  use StringUtil_m
  use BasicArrayListD_m
  use StaticViewPosition_m
  use AllBinaryGameLayer_m
  implicit none

  type, extends(AllBinaryGameLayer) :: PlayerGameInputGameLayer
    class(PlayerGameInput), pointer :: f_playerGameInput => null()
  contains
    procedure :: jm_getPlayerGameInput_0 => PlayerGameInputGameLayer_jm_getPlayerGameInput_0
    procedure :: jm_initInputProcessors_0 => PlayerGameInputGameLayer_jm_initInputProcessors_0
    procedure :: jm_processInput_1 => PlayerGameInputGameLayer_jm_processInput_1
    procedure :: jm_paint_1 => PlayerGameInputGameLayer_jm_paint_1
  end type

  ! PlayerGameInputGameLayer used as a PlayerGameInputCompositeInterface
  type, extends(PlayerGameInputCompositeInterface) :: PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface
    class(PlayerGameInputGameLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_getPlayerGameInput_0 => PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface_jm_getPlayerGameInput_0
  end type


contains

  function PlayerGameInputGameLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerGameInputGameLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerGameInputGameLayer)
      jresult => object
    end select
  end function

  function PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface_jnew(object) result(jresult)
    class(PlayerGameInputGameLayer), target :: object
    class(PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PlayerGameInputGameLayer'
    jresult%jtarget => object
  end function

  recursive function PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface_jm_getPlayerGameInput_0(this) result(jresult)
    class(PlayerGameInputGameLayer_jas_PlayerGameInputCompositeInterface), target :: this
    class(PlayerGameInput), pointer :: jresult
    jresult => this%jtarget%jm_getPlayerGameInput_0()
  end function

  recursive function PlayerGameInputGameLayer_jnew_1(j_playerInputId) result(this)
    integer(4), value :: j_playerInputId
    class(PlayerGameInputGameLayer), pointer :: this
    class(CanvasStrings), pointer :: j_canvasStrings
    class(StringUtil), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PlayerGameInputGameLayer'
    
        jtemp2 => PointFactory_jm_getInstance_0()
        jtemp1 => StringUtil_jm_getInstance_0()
        continue ! super()
        this%f_playerGameInput => PlayerGameInput_jnew_3(this%jm_getGameKeyEventList_0(), BasicArrayListD_jnew_0(), j_playerInputId)
        j_canvasStrings => CanvasStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3('Danger Danger Danger: Should Not Be Called Except For Testing Input', this, j_canvasStrings%f_PAINT)
  end function

  recursive function PlayerGameInputGameLayer_jm_getPlayerGameInput_0(this) result(jresult)
    class(PlayerGameInputGameLayer), target :: this
    class(PlayerGameInput), pointer :: jresult
        jresult => this%f_playerGameInput
        return
  end function

  recursive subroutine PlayerGameInputGameLayer_jm_initInputProcessors_0(this)
    class(PlayerGameInputGameLayer), target :: this
    continue
  end subroutine

  recursive subroutine PlayerGameInputGameLayer_jm_processInput_1(this, j_allBinaryLayerManager)
    class(PlayerGameInputGameLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    continue
  end subroutine

  recursive subroutine PlayerGameInputGameLayer_jm_paint_1(this, j_graphics)
    class(PlayerGameInputGameLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module PlayerGameInputGameLayer_m

function PlayerGameInputGameLayer_jnew_1_jext(p1) result(this)
  use PlayerGameInputGameLayer_m, only: JObject, PlayerGameInputGameLayer_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => PlayerGameInputGameLayer_jnew_1(p1)
end function

