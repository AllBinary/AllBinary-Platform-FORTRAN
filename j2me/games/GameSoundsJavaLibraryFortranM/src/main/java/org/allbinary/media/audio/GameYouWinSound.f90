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
module GameYouWinSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: GameYouWinSound
  end type

  class(Sound), pointer, save :: GameYouWinSound_jcell_soundInterface => null()
  logical, save :: GameYouWinSound_jset_soundInterface = .false.

contains

  function GameYouWinSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameYouWinSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameYouWinSound)
      jresult => object
    end select
  end function

  function GameYouWinSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. GameYouWinSound_jset_soundInterface) then
      GameYouWinSound_jset_soundInterface = .true.
      GameYouWinSound_jcell_soundInterface => GameYouWinSound_jnew_0()
    end if
    jresult => GameYouWinSound_jcell_soundInterface
  end function

  subroutine GameYouWinSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    GameYouWinSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      GameYouWinSound_jcell_soundInterface => jvalue
    else
      GameYouWinSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function GameYouWinSound_jnew_0() result(this)
    class(GameYouWinSound), pointer :: this
    allocate(this)
    this%jclass = 'GameYouWinSound'
        continue ! super()
  end function

  recursive function GameYouWinSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => GameYouWinSound_jstatic_soundInterface()
        return
  end function
end module GameYouWinSound_m

function GameYouWinSound_jnew_0_jext() result(this)
  use GameYouWinSound_m, only: JObject, GameYouWinSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameYouWinSound_jnew_0()
end function

