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
! package org.allbinary.game
module GameTypeFactory_m
  use JR_m
  use StringUtil_m
  use GameType_m
  implicit none

  type, extends(JObject) :: GameTypeFactory
    type(JRef), allocatable :: f_NULL_GAME_TYPE_ARRAY(:)
    class(GameType), pointer :: f_NONE => null()
    class(GameType), pointer :: f_SINGLE_PLAYER => null()
    class(GameType), pointer :: f_MULTI_PLAYER => null()
    class(GameType), pointer :: f_BOT => null()
  end type

  class(GameTypeFactory), pointer, save :: GameTypeFactory_jcell_instance => null()
  logical, save :: GameTypeFactory_jset_instance = .false.

contains

  function GameTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameTypeFactory)
      jresult => object
    end select
  end function

  function GameTypeFactory_jstatic_instance() result(jresult)
    class(GameTypeFactory), pointer :: jresult
    if (.not. GameTypeFactory_jset_instance) then
      GameTypeFactory_jset_instance = .true.
      GameTypeFactory_jcell_instance => GameTypeFactory_jnew_0()
    end if
    jresult => GameTypeFactory_jcell_instance
  end function

  subroutine GameTypeFactory_jsetstatic_instance(jvalue)
    class(GameTypeFactory), target, optional :: jvalue
    GameTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameTypeFactory_jcell_instance => jvalue
    else
      GameTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function GameTypeFactory_jnew_0() result(this)
    class(GameTypeFactory), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameTypeFactory'
    this%f_NULL_GAME_TYPE_ARRAY = JR_newRefArray(0)
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_NONE => GameType_jnew_1(jtemp1%f_NULL_STRING)
    this%f_SINGLE_PLAYER => GameType_jnew_1('Single Player')
    this%f_MULTI_PLAYER => GameType_jnew_1('Multi Player')
    this%f_BOT => GameType_jnew_1('Artificial Player')
  end function

  recursive function GameTypeFactory_jm_getInstance_0() result(jresult)
    class(GameTypeFactory), pointer :: jresult
        jresult => GameTypeFactory_jstatic_instance()
        return
  end function
end module GameTypeFactory_m

