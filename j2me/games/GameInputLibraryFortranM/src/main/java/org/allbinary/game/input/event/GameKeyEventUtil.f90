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
module GameKeyEventUtil_m
  use JR_m
  use GameKeyEvent_m
  implicit none

  type, extends(JObject) :: GameKeyEventUtil
  end type


contains

  function GameKeyEventUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEventUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEventUtil)
      jresult => object
    end select
  end function

  recursive function GameKeyEventUtil_jnew_0() result(this)
    class(GameKeyEventUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyEventUtil'
        continue
  end function

  recursive function GameKeyEventUtil_jm_getKey_1(j_anyType) result(jresult)
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
    class(GameKeyEvent), pointer :: j_gameKeyEvent
        j_gameKeyEvent => GameKeyEvent_jcast(j_anyType)
        jresult = j_gameKeyEvent%jm_getKey_0()
        return
  end function
end module GameKeyEventUtil_m

