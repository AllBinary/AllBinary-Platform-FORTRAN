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
module GameFrameRunnable_m
  use JR_m
  use GameTickDisplayInfoSingleton_m
  use LogUtil_m
  use CommonStrings_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use GameRunnable_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(GameRunnable) :: GameFrameRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(GameTickDisplayInfoSingleton), pointer :: f_gameTickDisplayInfoSingleton => null()
    class(AllBinaryGameCanvas), pointer :: f_allBinaryGameCanvas => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_run_0 => GameFrameRunnable_jm_run_0
  end type


contains

  function GameFrameRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFrameRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFrameRunnable)
      jresult => object
    end select
  end function

  recursive function GameFrameRunnable_jnew_1(j_allBinaryGameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(GameFrameRunnable), pointer :: this
    allocate(this)
    this%jclass = 'GameFrameRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_gameTickDisplayInfoSingleton => GameTickDisplayInfoSingleton_jm_getInstance_0()
    
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        this%f_allBinaryGameCanvas => j_allBinaryGameCanvas
  end function

  recursive subroutine GameFrameRunnable_jm_run_0(this)
    class(GameFrameRunnable), target :: this
    class(AllBinaryGameCanvas), pointer :: j_allBinaryGameCanvas
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
            j_allBinaryGameCanvas => this%f_allBinaryGameCanvas
            jtemp1 => j_allBinaryGameCanvas%jm_getLoopTimeHelperP_0()
            call jtemp1%jm_setStartTime_1(this%f_gameTickTimeDelayHelper%jm_setStartTime_0())
            call this%f_gameTickDisplayInfoSingleton%jm_update_0()
            call j_allBinaryGameCanvas%jm_processGame_0()
            if (((.not. j_allBinaryGameCanvas%jm_isRunning_0()) .or. j_allBinaryGameCanvas%jm_isPaused_0())) then
                call j_allBinaryGameCanvas%jm_notifyDonePainting_0()
            end if
  end subroutine
end module GameFrameRunnable_m

