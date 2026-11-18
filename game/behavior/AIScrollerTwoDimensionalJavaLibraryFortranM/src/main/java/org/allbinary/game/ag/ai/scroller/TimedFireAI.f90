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
! package org.allbinary.game.ag.ai.scroller
module TimedFireAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use SmallIntegerSingletonFactory_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use Integer_m
  use TimeFiredInterface_m
  implicit none

  type, extends(BasicAI) :: TimedFireAI
    class(TimeDelayHelper), pointer :: f_maxFireDelayTimeHelper => null()
    integer(4) :: f_delay = 0
  contains
    procedure :: jm_processAI_1 => TimedFireAI_jm_processAI_1
  end type

  integer(4), save :: TimedFireAI_jcell_TIME
  logical, save :: TimedFireAI_jset_TIME = .false.

contains

  function TimedFireAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimedFireAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimedFireAI)
      jresult => object
    end select
  end function

  function TimedFireAI_jstatic_TIME() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. TimedFireAI_jset_TIME) then
      TimedFireAI_jset_TIME = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    TimedFireAI_jcell_TIME = jtemp1%jm_getAt_1(1)
    end if
    jresult = TimedFireAI_jcell_TIME
  end function

  subroutine TimedFireAI_jsetstatic_TIME(jvalue)
    integer(4), value :: jvalue
    TimedFireAI_jset_TIME = .true.
    TimedFireAI_jcell_TIME = jvalue
  end subroutine

  recursive function TimedFireAI_jnew_3(j_delay, j_ownerLayerInterface, j_gameInput) result(this)
    integer(4), value :: j_delay
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(TimedFireAI), pointer :: this
    allocate(this)
    this%jclass = 'TimedFireAI'
    this%f_maxFireDelayTimeHelper => TimeDelayHelper_jnew_1(0)
    
        continue ! super()
        this%f_delay = j_delay
  end function

  recursive subroutine TimedFireAI_jm_processAI_1(this, j_layerManager)
    class(TimedFireAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(TimeFiredInterface), pointer :: j_timeFiredInterface
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_timeFiredInterface => TimeFiredInterface_jcast(this%jm_getOwnerLayerInterface_0())
        jtemp2 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if ((this%f_maxFireDelayTimeHelper%jm_isTime_1(jtemp2%f_startTime) .and. ((j_timeFiredInterface%jm_getLastFireTime_0() + this%f_maxFireDelayTimeHelper%f_delay) < this%f_maxFireDelayTimeHelper%jm_getStartTime_0()))) then
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
            this%f_maxFireDelayTimeHelper%f_delay = this%f_delay
        end if
  end subroutine
end module TimedFireAI_m

