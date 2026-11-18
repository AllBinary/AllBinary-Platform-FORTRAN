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
! package org.allbinary.game.layer.special
module SpecialGameInputInterface_m
  use JR_m
  use GameKeyEvent_m
  use PaintableInterface_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(PaintableInterface) :: SpecialGameInputInterface
  contains
    procedure :: jm_up_0 => SpecialGameInputInterface_jm_up_0
    procedure :: jm_down_0 => SpecialGameInputInterface_jm_down_0
    procedure :: jm_right_0 => SpecialGameInputInterface_jm_right_0
    procedure :: jm_left_0 => SpecialGameInputInterface_jm_left_0
    procedure :: jm_strafeLeft_0 => SpecialGameInputInterface_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => SpecialGameInputInterface_jm_strafeRight_0
    procedure :: jm_fire_2 => SpecialGameInputInterface_jm_fire_2
    procedure :: jm_special1_2 => SpecialGameInputInterface_jm_special1_2
    procedure :: jm_special2_2 => SpecialGameInputInterface_jm_special2_2
    procedure :: jm_special3_2 => SpecialGameInputInterface_jm_special3_2
    procedure :: jm_special4_2 => SpecialGameInputInterface_jm_special4_2
    procedure :: jm_special5_2 => SpecialGameInputInterface_jm_special5_2
  end type


contains

  function SpecialGameInputInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialGameInputInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialGameInputInterface)
      jresult => object
    end select
  end function

  function SpecialGameInputInterface_jnew_0() result(this)
    class(SpecialGameInputInterface), pointer :: this
    allocate(this)
    this%jclass = 'SpecialGameInputInterface'
  end function

  recursive subroutine SpecialGameInputInterface_jm_up_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.up'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_down_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.down'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_right_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.right'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_left_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.left'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_strafeLeft_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.strafeLeft'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_strafeRight_0(this)
    class(SpecialGameInputInterface), target :: this
    error stop 'AbstractMethodError: SpecialGameInputInterface.strafeRight'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_fire_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.fire'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_special1_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.special1'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_special2_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.special2'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_special3_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.special3'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_special4_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.special4'
  end subroutine

  recursive subroutine SpecialGameInputInterface_jm_special5_2(this, j_layerManager, j_gameKeyEvent)
    class(SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    error stop 'AbstractMethodError: SpecialGameInputInterface.special5'
  end subroutine
end module SpecialGameInputInterface_m

