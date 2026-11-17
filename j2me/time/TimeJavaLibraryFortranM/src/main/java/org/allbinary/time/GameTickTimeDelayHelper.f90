! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.time
module GameTickTimeDelayHelper_m
  use JR_m
  use System_m
  use Long_m
  implicit none

  type, extends(JObject) :: GameTickTimeDelayHelper
    integer(8) :: f_timeDelta = 0_8
    integer(8) :: f_startTime = 0_8
    integer(8) :: f_lastStartTime = 0_8
  contains
    procedure :: jm_setStartTime_0 => GameTickTimeDelayHelper_jm_setStartTime_0
    procedure :: jm_loop_0 => GameTickTimeDelayHelper_jm_loop_0
    procedure :: jm_getTimeFromStart_0 => GameTickTimeDelayHelper_jm_getTimeFromStart_0
  end type


contains

  function GameTickTimeDelayHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameTickTimeDelayHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameTickTimeDelayHelper)
      jresult => object
    end select
  end function

  recursive function GameTickTimeDelayHelper_jnew_1(j_startTime) result(this)
    integer(8), value :: j_startTime
    class(GameTickTimeDelayHelper), pointer :: this
    allocate(this)
    this%jclass = 'GameTickTimeDelayHelper'
    
    
    
        this%f_startTime = j_startTime
        this%f_lastStartTime = 0_8
  end function

  recursive function GameTickTimeDelayHelper_jm_setStartTime_0(this) result(jresult)
    class(GameTickTimeDelayHelper), target :: this
    integer(8) :: jresult
        this%f_startTime = JR_currentTimeMillis()
        jresult = this%f_startTime
        return
  end function

  recursive subroutine GameTickTimeDelayHelper_jm_loop_0(this)
    class(GameTickTimeDelayHelper), target :: this
        if ((this%f_lastStartTime == Long_jstatic_MIN_VALUE())) then
            this%f_timeDelta = 0_8
        else
            this%f_timeDelta = (JR_currentTimeMillis() - this%f_lastStartTime)
        end if
  end subroutine

  recursive function GameTickTimeDelayHelper_jm_getTimeFromStart_0(this) result(jresult)
    class(GameTickTimeDelayHelper), target :: this
    integer(8) :: jresult
        jresult = (this%f_startTime - this%f_lastStartTime)
        return
  end function
end module GameTickTimeDelayHelper_m

