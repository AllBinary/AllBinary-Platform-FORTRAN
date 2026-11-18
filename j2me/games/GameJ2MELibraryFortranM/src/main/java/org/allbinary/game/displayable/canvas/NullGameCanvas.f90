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
module NullGameCanvas_m
  use JR_m
  use NullCommandListener_m
  use BasicBuildGameInitializerFactory_m
  use AllBinaryGameLayerManager_m
  use NoHighScoresFactory_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(AllBinaryGameCanvas) :: NullGameCanvas
    logical :: f_runningNull = .false.
  contains
    procedure :: jm_isGameOver_0 => NullGameCanvas_jm_isGameOver_0
    procedure :: jm_setRunning_1 => NullGameCanvas_jm_setRunning_1
    procedure :: jm_isRunning_0 => NullGameCanvas_jm_isRunning_0
    procedure :: jm_pause_0 => NullGameCanvas_jm_pause_0
    procedure :: jm_unPause_0 => NullGameCanvas_jm_unPause_0
    procedure :: jm_initCommands_1 => NullGameCanvas_jm_initCommands_1
    procedure :: jm_buildGameInit_1 => NullGameCanvas_jm_buildGameInit_1
    procedure :: jm_draw_1 => NullGameCanvas_jm_draw_1
    procedure :: jm_run_0 => NullGameCanvas_jm_run_0
    procedure :: jm_getType_0 => NullGameCanvas_jm_getType_0
  end type

  class(JObject), pointer, save :: NullGameCanvas_jcell_instance => null()
  logical, save :: NullGameCanvas_jset_instance = .false.
  character(len=:), allocatable, save :: NullGameCanvas_jcell_NO_GAME
  logical, save :: NullGameCanvas_jset_NO_GAME = .false.
  integer(4), save :: NullGameCanvas_jcell_TYPE
  logical, save :: NullGameCanvas_jset_TYPE = .false.

contains

  function NullGameCanvas_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullGameCanvas), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullGameCanvas)
      jresult => object
    end select
  end function

  function NullGameCanvas_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp4
    if (.not. NullGameCanvas_jset_instance) then
      NullGameCanvas_jset_instance = .true.
      jtemp4 => NullUtil_jm_getInstance_0()
    NullGameCanvas_jcell_instance => jtemp4%f_NULL_OBJECT
    end if
    jresult => NullGameCanvas_jcell_instance
  end function

  subroutine NullGameCanvas_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    NullGameCanvas_jset_instance = .true.
    if (present(jvalue)) then
      NullGameCanvas_jcell_instance => jvalue
    else
      NullGameCanvas_jcell_instance => null()
    end if
  end subroutine

  function NullGameCanvas_jstatic_NO_GAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. NullGameCanvas_jset_NO_GAME) then
      NullGameCanvas_jset_NO_GAME = .true.
      NullGameCanvas_jcell_NO_GAME = 'No Background Game'
    end if
    jresult = NullGameCanvas_jcell_NO_GAME
  end function

  subroutine NullGameCanvas_jsetstatic_NO_GAME(jvalue)
    character(len=*), intent(in) :: jvalue
    NullGameCanvas_jset_NO_GAME = .true.
    NullGameCanvas_jcell_NO_GAME = jvalue
  end subroutine

  function NullGameCanvas_jstatic_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. NullGameCanvas_jset_TYPE) then
      NullGameCanvas_jset_TYPE = .true.
      NullGameCanvas_jcell_TYPE = 1
    end if
    jresult = NullGameCanvas_jcell_TYPE
  end function

  subroutine NullGameCanvas_jsetstatic_TYPE(jvalue)
    integer(4), value :: jvalue
    NullGameCanvas_jset_TYPE = .true.
    NullGameCanvas_jcell_TYPE = jvalue
  end subroutine

  recursive function NullGameCanvas_jnew_1(j_gameLayerManager) result(this)
    class(AllBinaryGameLayerManager), target, optional :: j_gameLayerManager
    class(NullGameCanvas), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'NullGameCanvas'
    this%f_runningNull = .true.
        continue ! super()
        call this%AllBinaryGameCanvas%jm_setWait_1(1200)
  end function

  recursive function NullGameCanvas_jm_createNull_0() result(jresult)
    class(NullGameCanvas), pointer :: jresult
    class(LogUtil), pointer :: jtemp1
    class(CommonStrings), pointer :: jtemp2
    class(CommonStrings), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult => NullGameCanvas_jnew_1(AllBinaryGameLayerManager_jm_getNullInstance_0())
            return
  end function

  recursive function NullGameCanvas_jm_getInstance_0() result(jresult)
    class(NullGameCanvas), pointer :: jresult
    class(NullUtil), pointer :: jtemp5
        jtemp5 => NullUtil_jm_getInstance_0()
        if (JR_same(NullGameCanvas_jstatic_instance(), jtemp5%f_NULL_OBJECT)) then
            call NullGameCanvas_jsetstatic_instance(NullGameCanvas_jm_createNull_0())
        end if
        jresult => NullGameCanvas_jcast(NullGameCanvas_jstatic_instance())
        return
  end function

  recursive function NullGameCanvas_jm_createCanvas_1(j_gameLayerManager) result(jresult)
    class(AllBinaryGameLayerManager), target, optional :: j_gameLayerManager
    class(NullGameCanvas), pointer :: jresult
    class(NullGameCanvas), pointer :: j_nullGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_nullGameCanvas => NullGameCanvas_jnew_1(j_gameLayerManager)
        call j_nullGameCanvas%jm_setInitialized_1(.true.)
        call j_nullGameCanvas%jm_setTitle_1(NullGameCanvas_jstatic_NO_GAME())
        jresult => j_nullGameCanvas
        return
  end function

  recursive function NullGameCanvas_jm_isGameOver_0(this) result(jresult)
    class(NullGameCanvas), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine NullGameCanvas_jm_setRunning_1(this, j_running)
    class(NullGameCanvas), target :: this
    logical, value :: j_running
        this%f_runningNull = j_running
  end subroutine

  recursive function NullGameCanvas_jm_isRunning_0(this) result(jresult)
    class(NullGameCanvas), target :: this
    logical :: jresult
        jresult = this%f_runningNull
        return
  end function

  recursive subroutine NullGameCanvas_jm_pause_0(this)
    class(NullGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPaused_1(.true.)
  end subroutine

  recursive subroutine NullGameCanvas_jm_unPause_0(this)
    class(NullGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPaused_1(.false.)
  end subroutine

  recursive subroutine NullGameCanvas_jm_initCommands_1(this, j_cmdListener)
    class(NullGameCanvas), target :: this
    class(CommandListener), target, optional :: j_cmdListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_removeAllCommands_0()
        call this%jm_setCommandListener_1(j_cmdListener)
  end subroutine

  recursive subroutine NullGameCanvas_jm_buildGameInit_1(this, j_isPortion)
    class(NullGameCanvas), target :: this
    logical, value :: j_isPortion
    continue
  end subroutine

  recursive subroutine NullGameCanvas_jm_draw_1(this, j_graphics)
    class(NullGameCanvas), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive subroutine NullGameCanvas_jm_run_0(this)
    class(NullGameCanvas), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START_RUNNABLE, this, this%f_commonStrings%f_RUN)
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine

  recursive function NullGameCanvas_jm_getType_0(this) result(jresult)
    class(NullGameCanvas), target :: this
    integer(4) :: jresult
        jresult = NullGameCanvas_jstatic_TYPE()
        return
  end function
end module NullGameCanvas_m

