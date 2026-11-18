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
module GameCanvasRunnable_m
  use JR_m
  use GameTickDisplayInfoSingleton_m
  use LogUtil_m
  use CommonStrings_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use GameRunnable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(GameRunnable) :: GameCanvasRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameTickDisplayInfoSingleton), pointer :: f_gameTickDisplayInfoSingleton => null()
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_run_0 => GameCanvasRunnable_jm_run_0
    procedure :: jm_processLoopSleep_0 => GameCanvasRunnable_jm_processLoopSleep_0
  end type


contains

  function GameCanvasRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameCanvasRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameCanvasRunnable)
      jresult => object
    end select
  end function

  recursive function GameCanvasRunnable_jnew_1(j_allBinaryGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(GameCanvasRunnable), pointer :: this
    allocate(this)
    this%jclass = 'GameCanvasRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameTickDisplayInfoSingleton => GameTickDisplayInfoSingleton_jm_getInstance_0()
    
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
  end function

  recursive subroutine GameCanvasRunnable_jm_run_0(this)
    class(GameCanvasRunnable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(TimeDelayHelper), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp1 => this%f_allBinaryGameCanvas%jm_getLoopTimeHelperP_0()
            call jtemp1%jm_setStartTime_1(this%f_gameTickTimeDelayHelper%jm_setStartTime_0())
            call this%f_gameTickDisplayInfoSingleton%jm_update_0()
            call this%f_allBinaryGameCanvas%jm_processGame_0()
  end subroutine

  recursive subroutine GameCanvasRunnable_jm_processLoopSleep_0(this)
    class(GameCanvasRunnable), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_allBinaryGameCanvas%jm_processLoopSleep_0()
  end subroutine
end module GameCanvasRunnable_m

