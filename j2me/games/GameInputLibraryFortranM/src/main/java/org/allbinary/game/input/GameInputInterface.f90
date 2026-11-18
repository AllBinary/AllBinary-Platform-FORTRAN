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
! package org.allbinary.game.input
module GameInputInterface_m
  use JR_m
  use AllBinaryLayerManager_m
  use NamedInterface_m
  implicit none

  type, extends(NamedInterface) :: GameInputInterface
  contains
    procedure :: jm_processInput_1 => GameInputInterface_jm_processInput_1
    procedure :: jm_initInputProcessors_0 => GameInputInterface_jm_initInputProcessors_0
  end type


contains

  function GameInputInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputInterface)
      jresult => object
    end select
  end function

  function GameInputInterface_jnew_0() result(this)
    class(GameInputInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameInputInterface'
  end function

  recursive subroutine GameInputInterface_jm_processInput_1(this, j_layerManager)
    class(GameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    error stop 'AbstractMethodError: GameInputInterface.processInput'
  end subroutine

  recursive subroutine GameInputInterface_jm_initInputProcessors_0(this)
    class(GameInputInterface), target :: this
    error stop 'AbstractMethodError: GameInputInterface.initInputProcessors'
  end subroutine
end module GameInputInterface_m

