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
! package org.allbinary.game.init
module GameInitializationInterface_m
  use JR_m
  use AbeClientInformationInterface_m
  implicit none

  type, extends(JObject) :: GameInitializationInterface
  contains
    procedure :: jm_init_3 => GameInitializationInterface_jm_init_3
  end type


contains

  function GameInitializationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializationInterface)
      jresult => object
    end select
  end function

  function GameInitializationInterface_jnew_0() result(this)
    class(GameInitializationInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameInitializationInterface'
  end function

  recursive subroutine GameInitializationInterface_jm_init_3(this, j_abeClientInformation, j_commandListener, j_level)
    class(GameInitializationInterface), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    integer(4), value :: j_level
    error stop 'AbstractMethodError: GameInitializationInterface.init'
  end subroutine
end module GameInitializationInterface_m

