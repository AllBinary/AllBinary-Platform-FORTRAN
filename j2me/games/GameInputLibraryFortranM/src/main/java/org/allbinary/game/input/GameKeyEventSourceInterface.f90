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
module GameKeyEventSourceInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameKeyEventSourceInterface
  contains
    procedure :: jm_getSourceId_0 => GameKeyEventSourceInterface_jm_getSourceId_0
  end type


contains

  function GameKeyEventSourceInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEventSourceInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEventSourceInterface)
      jresult => object
    end select
  end function

  function GameKeyEventSourceInterface_jnew_0() result(this)
    class(GameKeyEventSourceInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyEventSourceInterface'
  end function

  recursive function GameKeyEventSourceInterface_jm_getSourceId_0(this) result(jresult)
    class(GameKeyEventSourceInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: GameKeyEventSourceInterface.getSourceId'
  end function
end module GameKeyEventSourceInterface_m

