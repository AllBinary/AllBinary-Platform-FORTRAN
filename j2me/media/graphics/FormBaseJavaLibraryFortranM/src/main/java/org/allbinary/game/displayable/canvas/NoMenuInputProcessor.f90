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
! package org.allbinary.game.displayable.canvas
module NoMenuInputProcessor_m
  use JR_m
  use NullCanvas_m
  use GameKeyEvent_m
  use MotionGestureEvent_m
  use BasicArrayListUtil_m
  use BasicMenuInputProcessor_m
  implicit none

  type, extends(BasicMenuInputProcessor) :: NoMenuInputProcessor
  contains
    procedure :: jm_onDownGameKeyEvent_1 => NoMenuInputProcessor_jm_onDownGameKeyEvent_1
    procedure :: jm_onUpGameKeyEvent_1 => NoMenuInputProcessor_jm_onUpGameKeyEvent_1
    procedure :: jm_onMotionGestureEvent_1 => NoMenuInputProcessor_jm_onMotionGestureEvent_1
  end type

  class(NoMenuInputProcessor), pointer, save :: NoMenuInputProcessor_jcell_SINGLETON => null()
  logical, save :: NoMenuInputProcessor_jset_SINGLETON = .false.

contains

  function NoMenuInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoMenuInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoMenuInputProcessor)
      jresult => object
    end select
  end function

  function NoMenuInputProcessor_jstatic_SINGLETON() result(jresult)
    class(NoMenuInputProcessor), pointer :: jresult
    if (.not. NoMenuInputProcessor_jset_SINGLETON) then
      NoMenuInputProcessor_jset_SINGLETON = .true.
      NoMenuInputProcessor_jcell_SINGLETON => NoMenuInputProcessor_jnew_0()
    end if
    jresult => NoMenuInputProcessor_jcell_SINGLETON
  end function

  subroutine NoMenuInputProcessor_jsetstatic_SINGLETON(jvalue)
    class(NoMenuInputProcessor), target, optional :: jvalue
    NoMenuInputProcessor_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NoMenuInputProcessor_jcell_SINGLETON => jvalue
    else
      NoMenuInputProcessor_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NoMenuInputProcessor_jnew_0() result(this)
    class(NoMenuInputProcessor), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'NoMenuInputProcessor'
        jtemp1 => BasicArrayListUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive function NoMenuInputProcessor_jm_getInstance_0() result(jresult)
    class(NoMenuInputProcessor), pointer :: jresult
        jresult => NoMenuInputProcessor_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NoMenuInputProcessor_jm_onDownGameKeyEvent_1(this, j_gameKeyEvent)
    class(NoMenuInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine NoMenuInputProcessor_jm_onUpGameKeyEvent_1(this, j_gameKeyEvent)
    class(NoMenuInputProcessor), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine NoMenuInputProcessor_jm_onMotionGestureEvent_1(this, j_motionGestureEvent)
    class(NoMenuInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    continue
  end subroutine
end module NoMenuInputProcessor_m

function NoMenuInputProcessor_jnew_0_jext() result(this)
  use NoMenuInputProcessor_m, only: JObject, NoMenuInputProcessor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoMenuInputProcessor_jnew_0()
end function

