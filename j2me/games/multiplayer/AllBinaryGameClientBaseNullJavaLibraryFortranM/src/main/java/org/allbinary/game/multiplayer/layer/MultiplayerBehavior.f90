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
! package org.allbinary.game.multiplayer.layer
module MultiplayerBehavior_m
  use JR_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: MultiplayerBehavior
  contains
    procedure :: jm_startTick_0 => MultiplayerBehavior_jm_startTick_0
    procedure :: jm_endTick_0 => MultiplayerBehavior_jm_endTick_0
    procedure :: jm_getApproximateElapsed_0 => MultiplayerBehavior_jm_getApproximateElapsed_0
  end type

  class(MultiplayerBehavior), pointer, save :: MultiplayerBehavior_jcell_NULL_MULTIPLAYER_BEHAVIOR => null()
  logical, save :: MultiplayerBehavior_jset_NULL_MULTIPLAYER_BEHAVIOR = .false.

contains

  function MultiplayerBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultiplayerBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultiplayerBehavior)
      jresult => object
    end select
  end function

  function MultiplayerBehavior_jstatic_NULL_MULTIPLAYER_BEHAVIOR() result(jresult)
    class(MultiplayerBehavior), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. MultiplayerBehavior_jset_NULL_MULTIPLAYER_BEHAVIOR) then
      MultiplayerBehavior_jset_NULL_MULTIPLAYER_BEHAVIOR = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    MultiplayerBehavior_jcell_NULL_MULTIPLAYER_BEHAVIOR => MultiplayerBehavior_jnew_1(jtemp1%f_EMPTY_STRING)
    end if
    jresult => MultiplayerBehavior_jcell_NULL_MULTIPLAYER_BEHAVIOR
  end function

  subroutine MultiplayerBehavior_jsetstatic_NULL_MULTIPLAYER_BEHAVIOR(jvalue)
    class(MultiplayerBehavior), target, optional :: jvalue
    MultiplayerBehavior_jset_NULL_MULTIPLAYER_BEHAVIOR = .true.
    if (present(jvalue)) then
      MultiplayerBehavior_jcell_NULL_MULTIPLAYER_BEHAVIOR => jvalue
    else
      MultiplayerBehavior_jcell_NULL_MULTIPLAYER_BEHAVIOR => null()
    end if
  end subroutine

  recursive function MultiplayerBehavior_jnew_1(j_username) result(this)
    character(len=*), intent(in) :: j_username
    class(MultiplayerBehavior), pointer :: this
    allocate(this)
    this%jclass = 'MultiplayerBehavior'
        continue
  end function

  recursive subroutine MultiplayerBehavior_jm_startTick_0(this)
    class(MultiplayerBehavior), target :: this
    continue
  end subroutine

  recursive subroutine MultiplayerBehavior_jm_endTick_0(this)
    class(MultiplayerBehavior), target :: this
    continue
  end subroutine

  recursive function MultiplayerBehavior_jm_getApproximateElapsed_0(this) result(jresult)
    class(MultiplayerBehavior), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function
end module MultiplayerBehavior_m

