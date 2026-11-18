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
module DemoGameMidlet_m
  use JR_m
  use GameCanvasRunnableInterface_m
  use AllBinaryGameLayerManager_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use StdUtil_m
  use ClientInformationFactory_m
  use PrimaryThreadPool_m
  use NullGameCanvasRunnable_m
  use ABHashtable_m
  use GameMidlet_m
  use DemoRunnable_m
  use CreateGameRunnable_m
  implicit none

  type, extends(GameMidlet) :: DemoGameMidlet
  contains
    procedure :: jm_isContinue_0 => DemoGameMidlet_jm_isContinue_0
    procedure :: jm_getHighestLevel_0 => DemoGameMidlet_jm_getHighestLevel_0
    procedure :: jm_createDemoGameCanvasRunnableInterface_0 => DemoGameMidlet_jm_createDemoGameCanvasRunnableInterface_0
    procedure :: jm_createGameCanvasRunnable_1 => DemoGameMidlet_jm_createGameCanvasRunnable_1
    procedure :: jm_createGameCanvasRunnableInterface_0 => DemoGameMidlet_jm_createGameCanvasRunnableInterface_0
    procedure :: jm_demoSetup_0 => DemoGameMidlet_jm_demoSetup_0
    procedure :: jm_postDemoSetup_0 => DemoGameMidlet_jm_postDemoSetup_0
    procedure :: jm_setDemo_0 => DemoGameMidlet_jm_setDemo_0
    procedure :: jm_createGame_0 => DemoGameMidlet_jm_createGame_0
    procedure :: jm_isReady_0 => DemoGameMidlet_jm_isReady_0
  end type


contains

  function DemoGameMidlet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameMidlet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameMidlet)
      jresult => object
    end select
  end function

  recursive function DemoGameMidlet_jnew_1(j_clientInformationFactory) result(this)
    class(ClientInformationFactory), target, optional :: j_clientInformationFactory
    class(DemoGameMidlet), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameMidlet'
        continue ! super()
  end function

  recursive function DemoGameMidlet_jm_isContinue_0(this) result(jresult)
    class(DemoGameMidlet), target :: this
    logical :: jresult
    class(ABHashtable), pointer :: j_hashtable
        j_hashtable => this%jm_getStartStateHashtable_0()
        if ((associated(j_hashtable) .and. (j_hashtable%jm_size_0() > 0))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function DemoGameMidlet_jm_getHighestLevel_0(this) result(jresult)
    class(DemoGameMidlet), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function

  recursive function DemoGameMidlet_jm_createDemoGameCanvasRunnableInterface_0(this) result(jresult)
    class(DemoGameMidlet), target :: this
    class(GameCanvasRunnableInterface), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_NOT_IMPLEMENTED, this, this%f_commonStrings%f_CREATE)
        jresult => NullGameCanvasRunnable_jstatic_NULL_GAME_CANVAS_RUNNABLE()
        return
  end function

  recursive function DemoGameMidlet_jm_createGameCanvasRunnable_1(this, j_allBinaryGameLayerManager) result(jresult)
    class(DemoGameMidlet), target :: this
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
    class(GameCanvasRunnableInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function DemoGameMidlet_jm_createGameCanvasRunnableInterface_0(this) result(jresult)
    class(DemoGameMidlet), target :: this
    class(GameCanvasRunnableInterface), pointer :: jresult
        jresult => this%jm_createGameCanvasRunnable_1(this%jm_createGameLayerManager_0())
        return
  end function

  recursive subroutine DemoGameMidlet_jm_demoSetup_0(this)
    class(DemoGameMidlet), target :: this
    continue
  end subroutine

  recursive subroutine DemoGameMidlet_jm_postDemoSetup_0(this)
    class(DemoGameMidlet), target :: this
    continue
  end subroutine

  recursive subroutine DemoGameMidlet_jm_setDemo_0(this)
    class(DemoGameMidlet), target :: this
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(PrimaryThreadPool), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, 'setDemo')
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_start_0()
        jtemp1 => PrimaryThreadPool_jm_getInstance_0()
        call jtemp1%jm_runTask_1(DemoRunnable_jnew_1(this))
  end subroutine

  recursive subroutine DemoGameMidlet_jm_createGame_0(this)
    class(DemoGameMidlet), target :: this
    character(len=:), allocatable :: j_CREATE_GAME
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(ABHashtable), pointer :: j_hashtable
    class(StdUtil), pointer :: jtemp2
    class(PrimaryThreadPool), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_CREATE_GAME = 'createGame'
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, j_CREATE_GAME)
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call j_progressCanvas%jm_start_0()
        j_hashtable => this%jm_getStartStateHashtable_0()
        jtemp2 => StdUtil_jm_getInstance_0()
        call this%jm_setStartStateHashtable_1(jtemp2%f_NULL_TABLE)
        jtemp3 => PrimaryThreadPool_jm_getInstance_0()
        call jtemp3%jm_runTask_1(CreateGameRunnable_jnew_2(this, j_hashtable))
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END, this, j_CREATE_GAME)
  end subroutine

  recursive function DemoGameMidlet_jm_isReady_0(this) result(jresult)
    class(DemoGameMidlet), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module DemoGameMidlet_m

