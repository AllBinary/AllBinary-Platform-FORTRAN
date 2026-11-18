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
module CreateGameRunnable_m
  use JR_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use MyCommandsFactory_m
  use LogUtil_m
  use CommonStrings_m
  use ABHashtable_m
  use DemoGameMidlet_m
  use DemoGameMidletEvent_m
  use DemoGameMidletStateFactory_m
  use DemoGameMidletEventHandler_m
  implicit none

  type, extends(JObject) :: CreateGameRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(DemoGameMidlet), pointer :: f_demoGameMidlet => null()
    class(ABHashtable), pointer :: f_hashtable => null()
    class(DemoGameMidletEvent), pointer :: f_startGameMidletEvent => null()
  contains
    procedure :: jm_run_0 => CreateGameRunnable_jm_run_0
  end type


contains

  function CreateGameRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CreateGameRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CreateGameRunnable)
      jresult => object
    end select
  end function

  recursive function CreateGameRunnable_jnew_2(j_demoGameMidlet, j_hashtable) result(this)
    class(DemoGameMidlet), target, optional :: j_demoGameMidlet
    class(ABHashtable), target, optional :: j_hashtable
    class(CreateGameRunnable), pointer :: this
    class(DemoGameMidletStateFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CreateGameRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
        this%f_demoGameMidlet => j_demoGameMidlet
        this%f_hashtable => j_hashtable
        jtemp1 => DemoGameMidletStateFactory_jm_getInstance_0()
        this%f_startGameMidletEvent => DemoGameMidletEvent_jnew_2(this, jtemp1%f_START_GAME)
  end function

  recursive subroutine CreateGameRunnable_jm_run_0(this)
    class(CreateGameRunnable), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(MyCommandsFactory), pointer :: jtemp2
    class(GameCanvasRunnableInterface), pointer :: jtemp3
    class(DemoGameMidletEventHandler), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            jtemp2 => MyCommandsFactory_jm_getInstance_0()
            call this%f_demoGameMidlet%jm_commandAction_2(jtemp2%f_SET_DISPLAYABLE, j_progressCanvas)
            call this%f_demoGameMidlet%jm_stopGameCanvasRunnableInterface_0()
            call this%f_demoGameMidlet%jm_setGameCanvasRunnableInterface_1(this%f_demoGameMidlet%jm_createGameCanvasRunnableInterface_0())
            jtemp3 => this%f_demoGameMidlet%jm_getGameCanvasRunnableInterface_0()
            call jtemp3%jm_setLoadStateHashtable_1(this%f_hashtable)
            call this%f_demoGameMidlet%jm_startGameCanvasRunnableInterface_0()
            jtemp4 => DemoGameMidletEventHandler_jm_getInstance_0()
            call jtemp4%jm_fireEvent_1(this%f_startGameMidletEvent)
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine
end module CreateGameRunnable_m

