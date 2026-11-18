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
module GameYouLoseSound_m
  use JR_m
  use CompositeSound_m
  use Sound_m
  implicit none

  type, extends(CompositeSound) :: GameYouLoseSound
  end type

  class(Sound), pointer, save :: GameYouLoseSound_jcell_soundInterface => null()
  logical, save :: GameYouLoseSound_jset_soundInterface = .false.

contains

  function GameYouLoseSound_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameYouLoseSound), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameYouLoseSound)
      jresult => object
    end select
  end function

  function GameYouLoseSound_jstatic_soundInterface() result(jresult)
    class(Sound), pointer :: jresult
    if (.not. GameYouLoseSound_jset_soundInterface) then
      GameYouLoseSound_jset_soundInterface = .true.
      GameYouLoseSound_jcell_soundInterface => GameYouLoseSound_jnew_0()
    end if
    jresult => GameYouLoseSound_jcell_soundInterface
  end function

  subroutine GameYouLoseSound_jsetstatic_soundInterface(jvalue)
    class(Sound), target, optional :: jvalue
    GameYouLoseSound_jset_soundInterface = .true.
    if (present(jvalue)) then
      GameYouLoseSound_jcell_soundInterface => jvalue
    else
      GameYouLoseSound_jcell_soundInterface => null()
    end if
  end subroutine

  recursive function GameYouLoseSound_jnew_0() result(this)
    class(GameYouLoseSound), pointer :: this
    allocate(this)
    this%jclass = 'GameYouLoseSound'
        continue ! super()
  end function

  recursive function GameYouLoseSound_jm_getInstance_0() result(jresult)
    class(Sound), pointer :: jresult
        jresult => GameYouLoseSound_jstatic_soundInterface()
        return
  end function
end module GameYouLoseSound_m

function GameYouLoseSound_jnew_0_jext() result(this)
  use GameYouLoseSound_m, only: JObject, GameYouLoseSound_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GameYouLoseSound_jnew_0()
end function

