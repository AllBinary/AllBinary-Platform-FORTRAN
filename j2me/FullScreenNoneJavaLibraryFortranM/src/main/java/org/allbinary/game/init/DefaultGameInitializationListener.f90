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
! package org.allbinary.game.init
module DefaultGameInitializationListener_m
  use JR_m
  use GameInitializedEvent_m
  use GameInitializedEventHandler_m
  use GameInitializedListenerInterface_m
  use FeatureResourceInitializationUtil_m
  use SWTJOGLProcessor_m
  use ForcedLogUtil_m
  use LogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonStrings_m
  use Thread_m
  implicit none

  type, extends(GameInitializedListenerInterface) :: DefaultGameInitializationListener
    class(LogUtil), pointer :: f_logUtil => null()
    class(SWTJOGLProcessor), pointer :: f_swtJOGLProcessor => null()
    logical :: f_firstTime = .false.
  contains
    procedure :: jm_onEvent_1 => DefaultGameInitializationListener_jm_onEvent_1
    procedure :: jm_onGameInitialized_1 => DefaultGameInitializationListener_jm_onGameInitialized_1
  end type


contains

  function DefaultGameInitializationListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DefaultGameInitializationListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DefaultGameInitializationListener)
      jresult => object
    end select
  end function

  recursive function DefaultGameInitializationListener_jnew_0() result(this)
    class(DefaultGameInitializationListener), pointer :: this
    class(GameInitializedEventHandler), pointer :: j_gameInitializedEventHandler
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DefaultGameInitializationListener'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_swtJOGLProcessor => SWTJOGLProcessor_jm_getInstance_0()
    this%f_firstTime = .true.
        j_gameInitializedEventHandler => GameInitializedEventHandler_jm_getInstance_0()
        call j_gameInitializedEventHandler%jm_removeAllListeners_0()
        call j_gameInitializedEventHandler%jm_addListenerInterface_1(GameInitializedListenerInterface_jcast(this))
  end function

  recursive subroutine DefaultGameInitializationListener_jm_onEvent_1(this, j_eventObject)
    class(DefaultGameInitializationListener), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp1%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine DefaultGameInitializationListener_jm_onGameInitialized_1(this, j_gameInitializedEvent)
    class(DefaultGameInitializationListener), target :: this
    class(GameInitializedEvent), target, optional :: j_gameInitializedEvent
    character(len=:), allocatable :: j_ON_GAME_INITIALIZED
    class(CommonStrings), pointer :: j_commonStrings
    class(FeatureResourceInitializationUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ON_GAME_INITIALIZED = 'onGameInitialized'
        j_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! try
            call this%f_logUtil%jm_putF_3(j_commonStrings%f_START, this, j_ON_GAME_INITIALIZED)
            do while ((.not. this%f_swtJOGLProcessor%jm_isHolderCreated_0()))
                call this%f_logUtil%jm_putF_3(j_commonStrings%f_UPDATE, this, j_ON_GAME_INITIALIZED)
                call Thread_jm_sleep_1(20)
            end do
            jtemp2 => FeatureResourceInitializationUtil_jm_getInstance_0()
            call jtemp2%jm_init_1(j_gameInitializedEvent%jm_getLevel_0())
            if (this%f_firstTime) then
                this%f_firstTime = .false.
            else
                call this%f_swtJOGLProcessor%jm_onSurfaceChanged_0()
            end if
  end subroutine
end module DefaultGameInitializationListener_m

