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
! package org.allbinary.game.multiplayer.client
module PingInfoCompositeInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: PingInfoCompositeInterface
  contains
    procedure :: jm_setPingInfo_1 => PingInfoCompositeInterface_jm_setPingInfo_1
  end type


contains

  function PingInfoCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PingInfoCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PingInfoCompositeInterface)
      jresult => object
    end select
  end function

  function PingInfoCompositeInterface_jnew_0() result(this)
    class(PingInfoCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'PingInfoCompositeInterface'
  end function

  recursive subroutine PingInfoCompositeInterface_jm_setPingInfo_1(this, j_show)
    class(PingInfoCompositeInterface), target :: this
    logical, value :: j_show
    error stop 'AbstractMethodError: PingInfoCompositeInterface.setPingInfo'
  end subroutine
end module PingInfoCompositeInterface_m

