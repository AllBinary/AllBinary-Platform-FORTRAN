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
module DemoSetup_m
  use JR_m
  use GameMidlet_m
  implicit none

  type, extends(JObject) :: DemoSetup
  contains
    procedure :: jm_init_1 => DemoSetup_jm_init_1
  end type


contains

  function DemoSetup_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoSetup), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoSetup)
      jresult => object
    end select
  end function

  function DemoSetup_jnew_0() result(this)
    class(DemoSetup), pointer :: this
    allocate(this)
    this%jclass = 'DemoSetup'
  end function

  recursive subroutine DemoSetup_jm_init_1(this, j_gameMidlet)
    class(DemoSetup), target :: this
    class(GameMidlet), target, optional :: j_gameMidlet
    continue
  end subroutine
end module DemoSetup_m

