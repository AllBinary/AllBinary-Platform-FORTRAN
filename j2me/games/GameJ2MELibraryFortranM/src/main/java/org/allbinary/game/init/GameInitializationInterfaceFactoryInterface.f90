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
module GameInitializationInterfaceFactoryInterface_m
  use JR_m
  use GameInitializationInterface_m
  implicit none

  type, extends(JObject) :: GameInitializationInterfaceFactoryInterface
  contains
    procedure :: jm_getInstance_0 => GameInitializationInterfaceFactoryInterface_jm_getInstance_0
  end type


contains

  function GameInitializationInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInitializationInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInitializationInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function GameInitializationInterfaceFactoryInterface_jnew_0() result(this)
    class(GameInitializationInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameInitializationInterfaceFactoryInterface'
  end function

  recursive function GameInitializationInterfaceFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(GameInitializationInterfaceFactoryInterface), target :: this
    class(GameInitializationInterface), pointer :: jresult
    error stop 'AbstractMethodError: GameInitializationInterfaceFactoryInterface.getInstance'
  end function
end module GameInitializationInterfaceFactoryInterface_m

