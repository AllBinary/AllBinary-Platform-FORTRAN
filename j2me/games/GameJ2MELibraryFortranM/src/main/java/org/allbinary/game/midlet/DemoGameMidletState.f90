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
! package org.allbinary.game.midlet
module DemoGameMidletState_m
  use JR_m
  implicit none

  type, extends(JObject) :: DemoGameMidletState
  end type


contains

  function DemoGameMidletState_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletState), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletState)
      jresult => object
    end select
  end function

  recursive function DemoGameMidletState_jnew_0() result(this)
    class(DemoGameMidletState), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletState'
        continue
  end function
end module DemoGameMidletState_m

