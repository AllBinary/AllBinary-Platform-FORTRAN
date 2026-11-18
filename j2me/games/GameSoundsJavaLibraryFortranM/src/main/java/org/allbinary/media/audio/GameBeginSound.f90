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
! package org.allbinary.media.audio
module GameBeginSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: GameBeginSound
  end type

  class(Sound), pointer, save :: GameBeginSound_jcell_soundInterface => null()
  logical, save :: GameBeginSound_jset_soundInterface = .false.

contains

  function GameBeginSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameBeginSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameBeginSound)
      jresult => object
    end select
  end function

  function GameBeginSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. GameBeginSound_jset_soundInterface) then
      GameBeginSound_jset_soundInterface = .true.
      GameBeginSound_jcell_soundInterface => GameBeginSound_jnew_0()
    end if
    jresult => GameBeginSound_jcell_soundInterface
  end function

  subroutine GameBeginSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    GameBeginSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      GameBeginSound_jcell_soundInterface => jvalue
    else
      GameBeginSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function GameBeginSound_jnew_0() result(this)
    class(GameBeginSound), pointer :: this
    allocate(this)
    this%jclass = 'GameBeginSound'
        continue ! super()
  end function

  recursive function GameBeginSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => GameBeginSound_jstatic_soundInterface()
        return
  end function
end module GameBeginSound_m

function GameBeginSound_jnew_0_jext() result(this)
  use GameBeginSound_m, only: JObject, GameBeginSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameBeginSound_jnew_0()
end function

