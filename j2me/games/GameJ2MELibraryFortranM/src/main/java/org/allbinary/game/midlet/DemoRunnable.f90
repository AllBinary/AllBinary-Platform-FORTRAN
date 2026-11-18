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
module DemoRunnable_m
  use JR_m
  use ProgressCanvasFactory_m
  use MyCommandsFactory_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use CommonStrings_m
  use DemoGameMidlet_m
  use DemoGameMidletEvent_m
  use DemoGameMidletStateFactory_m
  use DemoGameMidletEventHandler_m
  implicit none

  type, extends(JObject) :: DemoRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(DemoGameMidlet), pointer :: f_demoGameMidlet => null()
    class(DemoGameMidletEvent), pointer :: f_startDemoGameMidletEvent => null()
  contains
    procedure :: jm_run_0 => DemoRunnable_jm_run_0
  end type


contains

  function DemoRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoRunnable)
      jresult => object
    end select
  end function

  recursive function DemoRunnable_jnew_1(j_demoGameMidlet) result(this)
    class(DemoGameMidlet), target, optional :: j_demoGameMidlet
    class(DemoRunnable), pointer :: this
    class(DemoGameMidletStateFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'DemoRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
        this%f_demoGameMidlet => j_demoGameMidlet
        jtemp1 => DemoGameMidletStateFactory_jm_getInstance_0()
        this%f_startDemoGameMidletEvent => DemoGameMidletEvent_jnew_2(this%f_demoGameMidlet, jtemp1%f_START_DEMO)
  end function

  recursive subroutine DemoRunnable_jm_run_0(this)
    class(DemoRunnable), target :: this
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(CommonLabels), pointer :: jtemp5
    class(MyCommandsFactory), pointer :: jtemp6
    class(DemoGameMidletEventHandler), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp5 => CommonLabels_jm_getInstance_0()
            jtemp4 => StringMaker_jnew_0()
            jtemp3 => jtemp4%jm_append_1(jtemp5%f_START_LABEL)
            jtemp2 => jtemp3%jm_append_1('GameCanvasRunnableInterface')
            call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, this%f_commonStrings%f_RUN)
            jtemp6 => MyCommandsFactory_jm_getInstance_0()
            call this%f_demoGameMidlet%jm_commandAction_2(jtemp6%f_SET_DISPLAYABLE, ProgressCanvasFactory_jm_getInstance_0())
            call this%f_demoGameMidlet%jm_setGameCanvasRunnableInterface_1(this%f_demoGameMidlet%jm_createDemoGameCanvasRunnableInterface_0())
            call this%f_demoGameMidlet%jm_demoSetup_0()
            jtemp7 => DemoGameMidletEventHandler_jm_getInstance_0()
            call jtemp7%jm_fireEvent_1(this%f_startDemoGameMidletEvent)
            call this%f_demoGameMidlet%jm_startGameCanvasRunnableInterface_0()
            call this%f_demoGameMidlet%jm_postDemoSetup_0()
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END_RUNNABLE, this, this%f_commonStrings%f_RUN)
  end subroutine
end module DemoRunnable_m

