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
! package org.allbinary.time
module TimeDelayHelper_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use System_m
  use Long_m
  implicit none

  type, extends(JObject) :: TimeDelayHelper
    integer(8) :: f_startTime = 0_8
    integer(8) :: f_elapsedTimeAtPause = 0_8
    integer(4) :: f_delay = 0
  contains
    procedure :: jm_isTimeTNT_0 => TimeDelayHelper_jm_isTimeTNT_0
    procedure :: jm_isTimeSinceTNT_1 => TimeDelayHelper_jm_isTimeSinceTNT_1
    procedure :: jm_isTime_1 => TimeDelayHelper_jm_isTime_1
    procedure :: jm_isTimeWithoutReset_1 => TimeDelayHelper_jm_isTimeWithoutReset_1
    procedure :: jm_isTimeSince_2 => TimeDelayHelper_jm_isTimeSince_2
    procedure :: jm_getElapsedTNT_0 => TimeDelayHelper_jm_getElapsedTNT_0
    procedure :: jm_getElapsed_1 => TimeDelayHelper_jm_getElapsed_1
    procedure :: jm_isElapsed_2 => TimeDelayHelper_jm_isElapsed_2
    procedure :: jm_isElapsedTNT_1 => TimeDelayHelper_jm_isElapsedTNT_1
    procedure :: jm_setStartTime_1 => TimeDelayHelper_jm_setStartTime_1
    procedure :: jm_getStartTime_0 => TimeDelayHelper_jm_getStartTime_0
    procedure :: jm_setStartTimeTNT_0 => TimeDelayHelper_jm_setStartTimeTNT_0
    procedure :: jm_pause_0 => TimeDelayHelper_jm_pause_0
    procedure :: jm_resume_0 => TimeDelayHelper_jm_resume_0
    procedure :: jm_toStringAt_1 => TimeDelayHelper_jm_toStringAt_1
    procedure :: jm_toString_0 => TimeDelayHelper_jm_toString_0
  end type


contains

  function TimeDelayHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeDelayHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeDelayHelper)
      jresult => object
    end select
  end function

  recursive function TimeDelayHelper_jnew_1(j_delay) result(this)
    integer(4), value :: j_delay
    class(TimeDelayHelper), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TimeDelayHelper'
    this%f_startTime = int((-1), 8)
    this%f_elapsedTimeAtPause = Long_jstatic_MIN_VALUE()
    
        this%f_delay = j_delay
        call this%jm_setStartTimeTNT_0()
  end function

  recursive function TimeDelayHelper_jm_isTimeTNT_0(this) result(jresult)
    class(TimeDelayHelper), target :: this
    logical :: jresult
    integer(8) :: j_currentTime
        j_currentTime = JR_currentTimeMillis()
        if (((j_currentTime - this%f_startTime) > int(this%f_delay, 8))) then
            this%f_startTime = j_currentTime
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_isTimeSinceTNT_1(this, j_delay) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(4), value :: j_delay
    logical :: jresult
    integer(8) :: j_currentTime
        j_currentTime = JR_currentTimeMillis()
        if (((j_currentTime - this%f_startTime) > int(j_delay, 8))) then
            this%f_startTime = j_currentTime
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_isTime_1(this, j_currentTime) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    logical :: jresult
        if (((j_currentTime - this%f_startTime) > int(this%f_delay, 8))) then
            this%f_startTime = j_currentTime
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_isTimeWithoutReset_1(this, j_currentTime) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    logical :: jresult
        if (((j_currentTime - this%f_startTime) > int(this%f_delay, 8))) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_isTimeSince_2(this, j_delay, j_currentTime) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(4), value :: j_delay
    integer(8), value :: j_currentTime
    logical :: jresult
        if (((j_currentTime - this%f_startTime) > int(this%f_delay, 8))) then
            this%f_startTime = j_currentTime
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_getElapsedTNT_0(this) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8) :: jresult
        jresult = (JR_currentTimeMillis() - this%f_startTime)
        return
  end function

  recursive function TimeDelayHelper_jm_getElapsed_1(this, j_currentTime) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    integer(8) :: jresult
        jresult = (j_currentTime - this%f_startTime)
        return
  end function

  recursive function TimeDelayHelper_jm_isElapsed_2(this, j_currentTime, j_time) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    integer(8), value :: j_time
    logical :: jresult
        if ((this%jm_getElapsed_1(j_currentTime) > j_time)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function TimeDelayHelper_jm_isElapsedTNT_1(this, j_time) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_time
    logical :: jresult
        if ((this%jm_getElapsedTNT_0() > j_time)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine TimeDelayHelper_jm_setStartTime_1(this, j_startTime)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_startTime
        this%f_startTime = j_startTime
  end subroutine

  recursive function TimeDelayHelper_jm_getStartTime_0(this) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8) :: jresult
        jresult = this%f_startTime
        return
  end function

  recursive subroutine TimeDelayHelper_jm_setStartTimeTNT_0(this)
    class(TimeDelayHelper), target :: this
        this%f_startTime = JR_currentTimeMillis()
  end subroutine

  recursive subroutine TimeDelayHelper_jm_pause_0(this)
    class(TimeDelayHelper), target :: this
        this%f_elapsedTimeAtPause = this%jm_getElapsedTNT_0()
        this%f_startTime = Long_jstatic_MAX_VALUE()
  end subroutine

  recursive function TimeDelayHelper_jm_resume_0(this) result(jresult)
    class(TimeDelayHelper), target :: this
    logical :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_elapsedTimeAtPause /= Long_jstatic_MIN_VALUE())) then
            this%f_startTime = (JR_currentTimeMillis() + this%f_elapsedTimeAtPause)
            this%f_elapsedTimeAtPause = Long_jstatic_MIN_VALUE()
            call this%jm_setStartTimeTNT_0()
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function TimeDelayHelper_jm_toStringAt_1(this, j_currentTime) result(jresult)
    class(TimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    character(len=:), allocatable :: jresult
    integer(8) :: j_elapsed
    class(CommonLabels), pointer :: j_commonLabels
    character(len=:), allocatable :: j_elapsedAsString
    class(StringUtil), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
        j_elapsed = this%jm_getElapsed_1(j_currentTime)
        if ((j_elapsed > 0_8)) then
            j_commonLabels => CommonLabels_jm_getInstance_0()
            j_elapsedAsString = JR_longString(j_elapsed)
            jtemp8 => StringMaker_jnew_0()
            jtemp7 => jtemp8%jm_append_1(j_commonLabels%f_START)
            jtemp6 => jtemp7%jm_appendlong_1(this%f_startTime)
            jtemp5 => jtemp6%jm_append_1(j_commonLabels%f_CURRENT)
            jtemp4 => jtemp5%jm_appendlong_1(j_currentTime)
            jtemp3 => jtemp4%jm_append_1(j_commonLabels%f_ELAPSED)
            jtemp2 => jtemp3%jm_append_1(j_elapsedAsString)
            jresult = jtemp2%jm_toString_0()
            return
        else
            jtemp1 => StringUtil_jm_getInstance_0()
            jresult = jtemp1%f_EMPTY_STRING
            return
        end if
  end function

  recursive function TimeDelayHelper_jm_toString_0(this) result(jresult)
    class(TimeDelayHelper), target :: this
    character(len=:), allocatable :: jresult
    integer(8) :: j_currentTime
    integer(8) :: j_elapsed
    class(CommonLabels), pointer :: j_commonLabels
    character(len=:), allocatable :: j_elapsedAsString
    class(StringUtil), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
        j_currentTime = JR_currentTimeMillis()
        j_elapsed = this%jm_getElapsed_1(j_currentTime)
        if ((j_elapsed > 0_8)) then
            j_commonLabels => CommonLabels_jm_getInstance_0()
            j_elapsedAsString = JR_longString(j_elapsed)
            jtemp16 => StringMaker_jnew_0()
            jtemp15 => jtemp16%jm_append_1(j_commonLabels%f_START)
            jtemp14 => jtemp15%jm_appendlong_1(this%f_startTime)
            jtemp13 => jtemp14%jm_append_1(j_commonLabels%f_CURRENT)
            jtemp12 => jtemp13%jm_appendlong_1(j_currentTime)
            jtemp11 => jtemp12%jm_append_1(j_commonLabels%f_ELAPSED)
            jtemp10 => jtemp11%jm_append_1(j_elapsedAsString)
            jresult = jtemp10%jm_toString_0()
            return
        else
            jtemp9 => StringUtil_jm_getInstance_0()
            jresult = jtemp9%f_EMPTY_STRING
            return
        end if
  end function
end module TimeDelayHelper_m

