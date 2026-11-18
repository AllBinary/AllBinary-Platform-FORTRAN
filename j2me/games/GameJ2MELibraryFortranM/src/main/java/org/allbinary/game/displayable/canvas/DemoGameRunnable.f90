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
module DemoGameRunnable_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use GameRunnable_m
  use DemoCanvas_m
  implicit none

  type, extends(GameRunnable) :: DemoGameRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(DemoCanvas), pointer :: f_demoCanvas => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_run_0 => DemoGameRunnable_jm_run_0
    procedure :: jm_processLoopSleep_0 => DemoGameRunnable_jm_processLoopSleep_0
  end type


contains

  function DemoGameRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameRunnable)
      jresult => object
    end select
  end function

  recursive function DemoGameRunnable_jnew_1(j_demoCanvas) result(this)
    class(DemoCanvas), target, optional :: j_demoCanvas
    class(DemoGameRunnable), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        this%f_demoCanvas => j_demoCanvas
  end function

  recursive subroutine DemoGameRunnable_jm_run_0(this)
    class(DemoGameRunnable), target :: this
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
            jtemp1 => this%f_demoCanvas%jm_getLoopTimeHelperP_0()
            call jtemp1%jm_setStartTime_1(this%f_gameTickTimeDelayHelper%jm_setStartTime_0())
            call this%f_demoCanvas%jm_processGame_0()
  end subroutine

  recursive subroutine DemoGameRunnable_jm_processLoopSleep_0(this)
    class(DemoGameRunnable), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_demoCanvas%jm_processLoopSleep_0()
  end subroutine
end module DemoGameRunnable_m

