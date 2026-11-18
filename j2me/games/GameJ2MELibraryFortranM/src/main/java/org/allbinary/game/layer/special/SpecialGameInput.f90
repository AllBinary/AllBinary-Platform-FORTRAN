! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.layer.special
module SpecialGameInput_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use SpecialGameInputInterface_m
  implicit none

  type, extends(SpecialGameInputInterface) :: SpecialGameInput
  contains
    procedure :: jm_up_0 => SpecialGameInput_jm_up_0
    procedure :: jm_down_0 => SpecialGameInput_jm_down_0
    procedure :: jm_right_0 => SpecialGameInput_jm_right_0
    procedure :: jm_left_0 => SpecialGameInput_jm_left_0
    procedure :: jm_strafeLeft_0 => SpecialGameInput_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => SpecialGameInput_jm_strafeRight_0
    procedure :: jm_fire_2 => SpecialGameInput_jm_fire_2
    procedure :: jm_special1_2 => SpecialGameInput_jm_special1_2
    procedure :: jm_special2_2 => SpecialGameInput_jm_special2_2
    procedure :: jm_special3_2 => SpecialGameInput_jm_special3_2
    procedure :: jm_special4_2 => SpecialGameInput_jm_special4_2
    procedure :: jm_special5_2 => SpecialGameInput_jm_special5_2
    procedure :: jm_paint_1 => SpecialGameInput_jm_paint_1
    procedure :: jm_paintThreed_1 => SpecialGameInput_jm_paintThreed_1
  end type


contains

  function SpecialGameInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialGameInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialGameInput)
      jresult => object
    end select
  end function

  function SpecialGameInput_jnew_0() result(this)
    class(SpecialGameInput), pointer :: this
    allocate(this)
    this%jclass = 'SpecialGameInput'
  end function

  recursive subroutine SpecialGameInput_jm_up_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_down_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_right_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_left_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_strafeLeft_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_strafeRight_0(this)
    class(SpecialGameInput), target :: this
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_fire_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_special1_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_special2_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_special3_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_special4_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_special5_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInput), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_paint_1(this, j_graphics)
    class(SpecialGameInput), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine SpecialGameInput_jm_paintThreed_1(this, j_graphics)
    class(SpecialGameInput), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module SpecialGameInput_m

