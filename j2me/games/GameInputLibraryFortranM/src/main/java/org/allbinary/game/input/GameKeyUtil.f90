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
module GameKeyUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameKeyUtil
  contains
    procedure :: jm_isDirectionKey_1 => GameKeyUtil_jm_isDirectionKey_1
  end type

  class(GameKeyUtil), pointer, save :: GameKeyUtil_jcell_instance => null()
  logical, save :: GameKeyUtil_jset_instance = .false.

contains

  function GameKeyUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyUtil)
      jresult => object
    end select
  end function

  function GameKeyUtil_jstatic_instance() result(jresult)
    class(GameKeyUtil), pointer :: jresult
    if (.not. GameKeyUtil_jset_instance) then
      GameKeyUtil_jset_instance = .true.
      GameKeyUtil_jcell_instance => GameKeyUtil_jnew_0()
    end if
    jresult => GameKeyUtil_jcell_instance
  end function

  subroutine GameKeyUtil_jsetstatic_instance(jvalue)
    class(GameKeyUtil), target, optional :: jvalue
    GameKeyUtil_jset_instance = .true.
    if (present(jvalue)) then
      GameKeyUtil_jcell_instance => jvalue
    else
      GameKeyUtil_jcell_instance => null()
    end if
  end subroutine

  function GameKeyUtil_jnew_0() result(this)
    class(GameKeyUtil), pointer :: this
    allocate(this)
    this%jclass = 'GameKeyUtil'
  end function

  recursive function GameKeyUtil_jm_isDirectionKey_1(this, j_key) result(jresult)
    class(GameKeyUtil), target :: this
    integer(4), value :: j_key
    logical :: jresult
        if (((((j_key == Canvas_jstatic_UP()) .or. (j_key == Canvas_jstatic_DOWN())) .or. (j_key == Canvas_jstatic_LEFT())) .or. (j_key == Canvas_jstatic_RIGHT()))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function GameKeyUtil_jm_getInstance_0() result(jresult)
    class(GameKeyUtil), pointer :: jresult
        jresult => GameKeyUtil_jstatic_instance()
        return
  end function
end module GameKeyUtil_m

