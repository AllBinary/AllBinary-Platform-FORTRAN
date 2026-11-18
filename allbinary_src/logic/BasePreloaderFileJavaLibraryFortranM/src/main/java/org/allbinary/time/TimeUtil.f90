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
module TimeUtil_m
  use JR_m
  use Calendar_m
  use Integer_m
  implicit none

  type, extends(JObject) :: TimeUtil
  contains
    procedure :: jm_setCalendar_5 => TimeUtil_jm_setCalendar_5
    procedure :: jm_setCalendarWithTime_7 => TimeUtil_jm_setCalendarWithTime_7
    procedure :: jm_setExpirationCalendar_7 => TimeUtil_jm_setExpirationCalendar_7
    procedure :: jm_getTotalTime_6 => TimeUtil_jm_getTotalTime_6
  end type

  class(TimeUtil), pointer, save :: TimeUtil_jcell_instance => null()
  logical, save :: TimeUtil_jset_instance = .false.
  class(Calendar), pointer, save :: TimeUtil_jcell_calendar => null()
  logical, save :: TimeUtil_jset_calendar = .false.

contains

  function TimeUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeUtil)
      jresult => object
    end select
  end function

  function TimeUtil_jstatic_instance() result(jresult)
    class(TimeUtil), pointer :: jresult
    if (.not. TimeUtil_jset_instance) then
      TimeUtil_jset_instance = .true.
      TimeUtil_jcell_instance => TimeUtil_jnew_0()
    end if
    jresult => TimeUtil_jcell_instance
  end function

  subroutine TimeUtil_jsetstatic_instance(jvalue)
    class(TimeUtil), target, optional :: jvalue
    TimeUtil_jset_instance = .true.
    if (present(jvalue)) then
      TimeUtil_jcell_instance => jvalue
    else
      TimeUtil_jcell_instance => null()
    end if
  end subroutine

  function TimeUtil_jstatic_calendar() result(jresult)
    class(Calendar), pointer :: jresult
    if (.not. TimeUtil_jset_calendar) then
      TimeUtil_jset_calendar = .true.
      TimeUtil_jcell_calendar => Calendar_jm_getInstance_0()
    end if
    jresult => TimeUtil_jcell_calendar
  end function

  subroutine TimeUtil_jsetstatic_calendar(jvalue)
    class(Calendar), target, optional :: jvalue
    TimeUtil_jset_calendar = .true.
    if (present(jvalue)) then
      TimeUtil_jcell_calendar => jvalue
    else
      TimeUtil_jcell_calendar => null()
    end if
  end subroutine

  function TimeUtil_jnew_0() result(this)
    class(TimeUtil), pointer :: this
    allocate(this)
    this%jclass = 'TimeUtil'
  end function

  recursive function TimeUtil_jm_getInstance_0() result(jresult)
    class(TimeUtil), pointer :: jresult
        jresult => TimeUtil_jstatic_instance()
        return
  end function

  recursive subroutine TimeUtil_jm_setCalendar_5(this, j_calendar, j_yearString, j_monthString, j_dayString, j_hourString)
    class(TimeUtil), target :: this
    class(Calendar), target, optional :: j_calendar
    character(len=*), intent(in) :: j_yearString
    character(len=*), intent(in) :: j_monthString
    character(len=*), intent(in) :: j_dayString
    character(len=*), intent(in) :: j_hourString
    integer(4) :: j_year
    integer(4) :: j_month
    integer(4) :: j_day
    integer(4) :: j_hour
    class(Integer), pointer :: jtemp1
    class(Integer), pointer :: jtemp2
    class(Integer), pointer :: jtemp3
    class(Integer), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => j_yearString
        j_year = jtemp1%jm_intValue_0()
        jtemp2 => j_monthString
        j_month = jtemp2%jm_intValue_0()
        jtemp3 => j_dayString
        j_day = jtemp3%jm_intValue_0()
        jtemp4 => j_hourString
        j_hour = jtemp4%jm_intValue_0()
        call j_calendar%jm_set_5(j_year, j_month, j_day, j_hour, 0)
  end subroutine

  recursive subroutine TimeUtil_jm_setCalendarWithTime_7(this, j_calendar, j_yearString, j_monthString, j_dayString, j_hourString, j_minuteString, j_secondString)
    class(TimeUtil), target :: this
    class(Calendar), target, optional :: j_calendar
    character(len=*), intent(in) :: j_yearString
    character(len=*), intent(in) :: j_monthString
    character(len=*), intent(in) :: j_dayString
    character(len=*), intent(in) :: j_hourString
    character(len=*), intent(in) :: j_minuteString
    character(len=*), intent(in) :: j_secondString
    integer(4) :: j_year
    integer(4) :: j_month
    integer(4) :: j_day
    integer(4) :: j_hour
    integer(4) :: j_minute
    integer(4) :: j_second
    class(Integer), pointer :: jtemp5
    class(Integer), pointer :: jtemp6
    class(Integer), pointer :: jtemp7
    class(Integer), pointer :: jtemp8
    class(Integer), pointer :: jtemp9
    class(Integer), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp5 => j_yearString
        j_year = jtemp5%jm_intValue_0()
        jtemp6 => j_monthString
        j_month = jtemp6%jm_intValue_0()
        jtemp7 => j_dayString
        j_day = jtemp7%jm_intValue_0()
        jtemp8 => j_hourString
        j_hour = jtemp8%jm_intValue_0()
        jtemp9 => j_minuteString
        j_minute = jtemp9%jm_intValue_0()
        jtemp10 => j_secondString
        j_second = jtemp10%jm_intValue_0()
        call j_calendar%jm_set_6(j_year, j_month, j_day, j_hour, j_minute, j_second)
  end subroutine

  recursive subroutine TimeUtil_jm_setExpirationCalendar_7(this, j_calendar, j_yearsString, j_monthsString, j_daysString, j_hoursString, j_minutesString, j_secondsString)
    class(TimeUtil), target :: this
    class(Calendar), target, optional :: j_calendar
    character(len=*), intent(in) :: j_yearsString
    character(len=*), intent(in) :: j_monthsString
    character(len=*), intent(in) :: j_daysString
    character(len=*), intent(in) :: j_hoursString
    character(len=*), intent(in) :: j_minutesString
    character(len=*), intent(in) :: j_secondsString
    integer(4) :: j_year
    integer(4) :: j_month
    integer(4) :: j_day
    integer(4) :: j_hour
    integer(4) :: j_minute
    integer(4) :: j_second
    class(Integer), pointer :: jtemp11
    class(Integer), pointer :: jtemp12
    class(Integer), pointer :: jtemp13
    class(Integer), pointer :: jtemp14
    class(Integer), pointer :: jtemp15
    class(Integer), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp11 => j_yearsString
        j_year = (j_calendar%jm_get_1(Calendar_jstatic_YEAR()) + jtemp11%jm_intValue_0())
        jtemp12 => j_monthsString
        j_month = (j_calendar%jm_get_1(Calendar_jstatic_MONTH()) + jtemp12%jm_intValue_0())
        jtemp13 => j_daysString
        j_day = (j_calendar%jm_get_1(Calendar_jstatic_DAY_OF_MONTH()) + jtemp13%jm_intValue_0())
        jtemp14 => j_hoursString
        j_hour = (j_calendar%jm_get_1(Calendar_jstatic_HOUR()) + jtemp14%jm_intValue_0())
        jtemp15 => j_minutesString
        j_minute = (j_calendar%jm_get_1(Calendar_jstatic_MINUTE()) + jtemp15%jm_intValue_0())
        jtemp16 => j_secondsString
        j_second = (j_calendar%jm_get_1(Calendar_jstatic_SECOND()) + jtemp16%jm_intValue_0())
        call j_calendar%jm_set_6(j_year, j_month, j_day, j_hour, j_minute, j_second)
  end subroutine

  recursive function TimeUtil_jm_getTotalTime_6(this, j_yearString, j_monthString, j_dayString, j_hourString, j_minuteString, j_secondString) result(jresult)
    class(TimeUtil), target :: this
    character(len=*), intent(in) :: j_yearString
    character(len=*), intent(in) :: j_monthString
    character(len=*), intent(in) :: j_dayString
    character(len=*), intent(in) :: j_hourString
    character(len=*), intent(in) :: j_minuteString
    character(len=*), intent(in) :: j_secondString
    integer(8) :: jresult
    integer(8) :: j_time
    integer(8) :: j_timeDelta
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => TimeUtil_jstatic_calendar())
        j_time = jstaticref1%jm_getTimeInMillis_0()
        end associate
        call this%jm_setExpirationCalendar_7(TimeUtil_jstatic_calendar(), j_yearString, j_monthString, j_dayString, j_hourString, j_minuteString, j_secondString)
        associate (jstaticref2 => TimeUtil_jstatic_calendar())
        j_timeDelta = jstaticref2%jm_getTimeInMillis_0()
        end associate
        jresult = (j_timeDelta - j_time)
        return
  end function
end module TimeUtil_m

