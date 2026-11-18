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
! package org.allbinary.game.midlet
module DemoGameMidletEventListener_m
  use JR_m
  use EventListenerInterface_m
  use DemoGameMidletEvent_m
  implicit none

  type, extends(EventListenerInterface) :: DemoGameMidletEventListener
  contains
    procedure :: jm_onDemoStart_0 => DemoGameMidletEventListener_jm_onDemoStart_0
    procedure :: jm_onGameStart_0 => DemoGameMidletEventListener_jm_onGameStart_0
    procedure :: jm_onDemoGameMidletEvent_1 => DemoGameMidletEventListener_jm_onDemoGameMidletEvent_1
  end type


contains

  function DemoGameMidletEventListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidletEventListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidletEventListener)
      jresult => object
    end select
  end function

  function DemoGameMidletEventListener_jnew_0() result(this)
    class(DemoGameMidletEventListener), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidletEventListener'
  end function

  recursive subroutine DemoGameMidletEventListener_jm_onDemoStart_0(this)
    class(DemoGameMidletEventListener), target :: this
    error stop 'AbstractMethodError: DemoGameMidletEventListener.onDemoStart'
  end subroutine

  recursive subroutine DemoGameMidletEventListener_jm_onGameStart_0(this)
    class(DemoGameMidletEventListener), target :: this
    error stop 'AbstractMethodError: DemoGameMidletEventListener.onGameStart'
  end subroutine

  recursive subroutine DemoGameMidletEventListener_jm_onDemoGameMidletEvent_1(this, j_demoGameMidletEvent)
    class(DemoGameMidletEventListener), target :: this
    class(DemoGameMidletEvent), target, optional :: j_demoGameMidletEvent
    error stop 'AbstractMethodError: DemoGameMidletEventListener.onDemoGameMidletEvent'
  end subroutine
end module DemoGameMidletEventListener_m

