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
! package org.allbinary.game.state
module GameState_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameState
    character(len=:), allocatable :: f_name
  contains
    procedure :: jm_toString_0 => GameState_jm_toString_0
  end type


contains

  function GameState_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameState), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameState)
      jresult => object
    end select
  end function

  recursive function GameState_jnew_2(j_name, j_state) result(this)
    character(len=*), intent(in) :: j_name
    integer(4), value :: j_state
    class(GameState), pointer :: this
    allocate(this)
    this%jclass = 'GameState'
    this%f_name = ''
    
        this%f_name = j_name
  end function

  recursive function GameState_jm_toString_0(this) result(jresult)
    class(GameState), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function
end module GameState_m

