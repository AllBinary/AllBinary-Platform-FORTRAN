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
module GameKey_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use Input_m
  implicit none

  type, extends(Input) :: GameKey
  contains
    procedure :: jm_toString_0 => GameKey_jm_toString_0
  end type

  class(GameKey), pointer, save :: GameKey_jcell_NULL_GAME_KEY => null()
  logical, save :: GameKey_jset_NULL_GAME_KEY = .false.

contains

  function GameKey_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKey), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKey)
      jresult => object
    end select
  end function

  function GameKey_jstatic_NULL_GAME_KEY() result(jresult)
    class(GameKey), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. GameKey_jset_NULL_GAME_KEY) then
      GameKey_jset_NULL_GAME_KEY = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    GameKey_jcell_NULL_GAME_KEY => GameKey_jnew_2((-1), jtemp1%f_NULL_STRING)
    end if
    jresult => GameKey_jcell_NULL_GAME_KEY
  end function

  subroutine GameKey_jsetstatic_NULL_GAME_KEY(jvalue)
    class(GameKey), target, optional :: jvalue
    GameKey_jset_NULL_GAME_KEY = .true.
    if (present(jvalue)) then
      GameKey_jcell_NULL_GAME_KEY => jvalue
    else
      GameKey_jcell_NULL_GAME_KEY => null()
    end if
  end subroutine

  recursive function GameKey_jnew_2(j_key, j_name) result(this)
    integer(4), value :: j_key
    character(len=*), intent(in) :: j_name
    class(GameKey), pointer :: this
    allocate(this)
    this%jclass = 'GameKey'
        continue ! super()
  end function

  recursive function GameKey_jm_toString_0(this) result(jresult)
    class(GameKey), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1('GameKey ')
        jtemp2 => jtemp3%jm_append_1(this%Input%jm_toString_0())
        jresult = jtemp2%jm_toString_0()
        return
  end function
end module GameKey_m

function GameKey_jnew_2_jext(p1, p2) result(this)
  use GameKey_m, only: JObject, GameKey_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => GameKey_jnew_2(p1, p2)
end function

