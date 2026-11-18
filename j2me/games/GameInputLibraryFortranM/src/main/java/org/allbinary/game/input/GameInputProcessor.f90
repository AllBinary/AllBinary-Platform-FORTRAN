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
module GameInputProcessor_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryLayerManager_m
  use Integer_m
  implicit none

  type, extends(JObject) :: GameInputProcessor
  contains
    procedure :: jm_processEvent_2 => GameInputProcessor_jm_processEvent_2
    procedure :: jm_processReleasedEvent_2 => GameInputProcessor_jm_processReleasedEvent_2
    procedure :: jm_processAnalog_3 => GameInputProcessor_jm_processAnalog_3
    procedure :: jm_process_2 => GameInputProcessor_jm_process_2
    procedure :: jm_processReleased_2 => GameInputProcessor_jm_processReleased_2
  end type

  class(GameInputProcessor), pointer, save :: GameInputProcessor_jcell_instance => null()
  logical, save :: GameInputProcessor_jset_instance = .false.

contains

  function GameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInputProcessor)
      jresult => object
    end select
  end function

  function GameInputProcessor_jstatic_instance() result(jresult)
    class(GameInputProcessor), pointer :: jresult
    if (.not. GameInputProcessor_jset_instance) then
      GameInputProcessor_jset_instance = .true.
      GameInputProcessor_jcell_instance => GameInputProcessor_jnew_0()
    end if
    jresult => GameInputProcessor_jcell_instance
  end function

  subroutine GameInputProcessor_jsetstatic_instance(jvalue)
    class(GameInputProcessor), target, optional :: jvalue
    GameInputProcessor_jset_instance = .true.
    if (present(jvalue)) then
      GameInputProcessor_jcell_instance => jvalue
    else
      GameInputProcessor_jcell_instance => null()
    end if
  end subroutine

  recursive function GameInputProcessor_jnew_0() result(this)
    class(GameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'GameInputProcessor'
        continue
  end function

  recursive function GameInputProcessor_jm_getInstance_0() result(jresult)
    class(GameInputProcessor), pointer :: jresult
        jresult => GameInputProcessor_jstatic_instance()
        return
  end function

  recursive subroutine GameInputProcessor_jm_processEvent_2(this, j_allbinaryLayerManager, j_gameKeyEvent)
    class(GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine GameInputProcessor_jm_processReleasedEvent_2(this, j_allbinaryLayerManager, j_gameKeyEvent)
    class(GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine GameInputProcessor_jm_processAnalog_3(this, j_allbinaryLayerManager, j_gameKeyEvent, j_analogValue)
    class(GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    integer(4), value :: j_analogValue
    continue
  end subroutine

  recursive subroutine GameInputProcessor_jm_process_2(this, j_allbinaryLayerManager, j_keyAsInteger)
    class(GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_keyAsInteger
    continue
  end subroutine

  recursive subroutine GameInputProcessor_jm_processReleased_2(this, j_allbinaryLayerManager, j_keyAsInteger)
    class(GameInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_keyAsInteger
    continue
  end subroutine
end module GameInputProcessor_m

