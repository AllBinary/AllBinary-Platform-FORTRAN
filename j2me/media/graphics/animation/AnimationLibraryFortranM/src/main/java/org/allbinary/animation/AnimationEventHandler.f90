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
! package org.allbinary.animation
module AnimationEventHandler_m
  use JR_m
  use BasicEventHandler_m
  implicit none

  type, extends(BasicEventHandler) :: AnimationEventHandler
  end type

  class(AnimationEventHandler), pointer, save :: AnimationEventHandler_jcell_eventHandler => null()
  logical, save :: AnimationEventHandler_jset_eventHandler = .false.

contains

  function AnimationEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationEventHandler)
      jresult => object
    end select
  end function

  function AnimationEventHandler_jstatic_eventHandler() result(jresult)
    class(AnimationEventHandler), pointer :: jresult
    if (.not. AnimationEventHandler_jset_eventHandler) then
      AnimationEventHandler_jset_eventHandler = .true.
      AnimationEventHandler_jcell_eventHandler => AnimationEventHandler_jnew_0()
    end if
    jresult => AnimationEventHandler_jcell_eventHandler
  end function

  subroutine AnimationEventHandler_jsetstatic_eventHandler(jvalue)
    class(AnimationEventHandler), target, optional :: jvalue
    AnimationEventHandler_jset_eventHandler = .true.
    if (present(jvalue)) then
      AnimationEventHandler_jcell_eventHandler => jvalue
    else
      AnimationEventHandler_jcell_eventHandler => null()
    end if
  end subroutine

  recursive function AnimationEventHandler_jnew_0() result(this)
    class(AnimationEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'AnimationEventHandler'
        continue
  end function

  recursive function AnimationEventHandler_jm_getInstance_0() result(jresult)
    class(AnimationEventHandler), pointer :: jresult
        jresult => AnimationEventHandler_jstatic_eventHandler()
        return
  end function
end module AnimationEventHandler_m

function AnimationEventHandler_jnew_0_jext() result(this)
  use AnimationEventHandler_m, only: JObject, AnimationEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AnimationEventHandler_jnew_0()
end function

