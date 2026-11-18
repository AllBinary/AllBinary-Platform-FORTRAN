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
module NoPlayerGameInput_m
  use JR_m
  use GameKeyEvent_m
  use BasicArrayListD_m
  use PlayerGameInput_m
  implicit none

  type, extends(PlayerGameInput) :: NoPlayerGameInput
  contains
    procedure :: jm_onDownGameKeyEvent_1 => NoPlayerGameInput_jm_onDownGameKeyEvent_1
    procedure :: jm_onUpGameKeyEvent_1 => NoPlayerGameInput_jm_onUpGameKeyEvent_1
  end type

  class(NoPlayerGameInput), pointer, save :: NoPlayerGameInput_jcell_SINGLETON => null()
  logical, save :: NoPlayerGameInput_jset_SINGLETON = .false.

contains

  function NoPlayerGameInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoPlayerGameInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoPlayerGameInput)
      jresult => object
    end select
  end function

  function NoPlayerGameInput_jstatic_SINGLETON() result(jresult)
    class(NoPlayerGameInput), pointer :: jresult
    if (.not. NoPlayerGameInput_jset_SINGLETON) then
      NoPlayerGameInput_jset_SINGLETON = .true.
      NoPlayerGameInput_jcell_SINGLETON => NoPlayerGameInput_jnew_0()
    end if
    jresult => NoPlayerGameInput_jcell_SINGLETON
  end function

  subroutine NoPlayerGameInput_jsetstatic_SINGLETON(jvalue)
    class(NoPlayerGameInput), target, optional :: jvalue
    NoPlayerGameInput_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NoPlayerGameInput_jcell_SINGLETON => jvalue
    else
      NoPlayerGameInput_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NoPlayerGameInput_jnew_0() result(this)
    class(NoPlayerGameInput), pointer :: this
    allocate(this)
    this%jclass = 'NoPlayerGameInput'
        continue ! super()
  end function

  recursive function NoPlayerGameInput_jm_getInstance_0() result(jresult)
    class(NoPlayerGameInput), pointer :: jresult
        jresult => NoPlayerGameInput_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NoPlayerGameInput_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(NoPlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine NoPlayerGameInput_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(NoPlayerGameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine
end module NoPlayerGameInput_m

function NoPlayerGameInput_jnew_0_jext() result(this)
  use NoPlayerGameInput_m, only: JObject, NoPlayerGameInput_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoPlayerGameInput_jnew_0()
end function

