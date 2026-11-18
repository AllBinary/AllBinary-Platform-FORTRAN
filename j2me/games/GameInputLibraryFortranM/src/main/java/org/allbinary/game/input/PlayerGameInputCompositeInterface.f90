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
module PlayerGameInputCompositeInterface_m
  use JR_m
  use GameInputInterface_m
  use PlayerGameInput_m
  implicit none

  type, extends(GameInputInterface) :: PlayerGameInputCompositeInterface
  contains
    procedure :: jm_getPlayerGameInput_0 => PlayerGameInputCompositeInterface_jm_getPlayerGameInput_0
  end type


contains

  function PlayerGameInputCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlayerGameInputCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlayerGameInputCompositeInterface)
      jresult => object
    end select
  end function

  function PlayerGameInputCompositeInterface_jnew_0() result(this)
    class(PlayerGameInputCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'PlayerGameInputCompositeInterface'
  end function

  recursive function PlayerGameInputCompositeInterface_jm_getPlayerGameInput_0(this) result(jresult)
    class(PlayerGameInputCompositeInterface), target :: this
    class(PlayerGameInput), pointer :: jresult
    error stop 'AbstractMethodError: PlayerGameInputCompositeInterface.getPlayerGameInput'
  end function
end module PlayerGameInputCompositeInterface_m

