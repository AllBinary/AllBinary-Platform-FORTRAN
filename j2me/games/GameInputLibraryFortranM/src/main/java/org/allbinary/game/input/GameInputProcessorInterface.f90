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
module GameInputProcessorInterface_m
  use JR_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: GameInputProcessorInterface
  contains
    procedure :: jm_onInput_1 => GameInputProcessorInterface_jm_onInput_1
  end type


contains

  function GameInputProcessorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputProcessorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputProcessorInterface)
      jresult => object
    end select
  end function

  function GameInputProcessorInterface_jnew_0() result(this)
    class(GameInputProcessorInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameInputProcessorInterface'
  end function

  recursive subroutine GameInputProcessorInterface_jm_onInput_1(this, j_list)
    class(GameInputProcessorInterface), target :: this
    class(BasicArrayList), target, optional :: j_list
    error stop 'AbstractMethodError: GameInputProcessorInterface.onInput'
  end subroutine
end module GameInputProcessorInterface_m

