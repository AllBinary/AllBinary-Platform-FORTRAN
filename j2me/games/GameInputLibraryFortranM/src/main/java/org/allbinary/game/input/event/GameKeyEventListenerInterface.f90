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
! package org.allbinary.game.input.event
module GameKeyEventListenerInterface_m
  use JR_m
  use GameKeyEvent_m
  use DownGameKeyEventListenerInterface_m
  use UpGameKeyEventListenerInterface_m
  use PressGameKeyEventListenerInterface_m
  implicit none

  type, extends(DownGameKeyEventListenerInterface) :: GameKeyEventListenerInterface
  end type


contains

  function GameKeyEventListenerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEventListenerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEventListenerInterface)
      jresult => object
    end select
  end function

  function GameKeyEventListenerInterface_jnew_0() result(this)
    class(GameKeyEventListenerInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyEventListenerInterface'
  end function
end module GameKeyEventListenerInterface_m

