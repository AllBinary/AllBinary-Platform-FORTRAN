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
! package org.allbinary.game.displayable.canvas
module GameEventHandlerUtil_m
  use JR_m
  use DownGameKeyEventHandler_m
  use UpGameKeyEventHandler_m
  implicit none

  type, extends(JObject) :: GameEventHandlerUtil
  end type


contains

  function GameEventHandlerUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameEventHandlerUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameEventHandlerUtil)
      jresult => object
    end select
  end function

  function GameEventHandlerUtil_jnew_0() result(this)
    class(GameEventHandlerUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameEventHandlerUtil'
  end function

  recursive subroutine GameEventHandlerUtil_jm_removeAllListeners_0()
    class(UpGameKeyEventHandler), pointer :: jtemp1
    class(DownGameKeyEventHandler), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => UpGameKeyEventHandler_jm_getInstance_0()
        call jtemp1%jm_removeAllListeners_0()
        jtemp2 => DownGameKeyEventHandler_jm_getInstance_0()
        call jtemp2%jm_removeAllListeners_0()
  end subroutine
end module GameEventHandlerUtil_m

