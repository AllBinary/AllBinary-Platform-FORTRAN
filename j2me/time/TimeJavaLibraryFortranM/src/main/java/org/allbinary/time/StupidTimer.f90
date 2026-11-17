! Generated Code Do Not Modify
! package org.allbinary.time
module StupidTimer_m
  use JR_m
  use NullUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use Visitor_m
  use CommonStrings_m
  use ThreadObjectUtil_m
  use Boolean_m
  use TimeDelayHelper_m
  implicit none

  type, extends(JObject) :: StupidTimer
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(NullUtil), pointer :: f_nullUtil => null()
    class(ThreadObjectUtil), pointer :: f_threadObjectUtil => null()
  contains
    procedure :: jm_visitBool_1 => StupidTimer_jm_visitBool_1
    procedure :: jm_visit_2 => StupidTimer_jm_visit_2
    procedure :: jm_stopWaiting_0 => StupidTimer_jm_stopWaiting_0
  end type


contains

  function StupidTimer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StupidTimer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StupidTimer)
      jresult => object
    end select
  end function

  function StupidTimer_jnew_0() result(this)
    class(StupidTimer), pointer :: this
    allocate(this)
    this%jclass = 'StupidTimer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_nullUtil => NullUtil_jm_getInstance_0()
    this%f_threadObjectUtil => ThreadObjectUtil_jm_getInstance_0()
  end function

  recursive function StupidTimer_jm_visitBool_1(this, j_visitorInterface) result(jresult)
    class(StupidTimer), target :: this
    class(Visitor), target, optional :: j_visitorInterface
    logical :: jresult
    logical :: j_result
    logical :: j_result2
        j_result = JR_unboxBoolean(j_visitorInterface%jm_visit_1(this%f_nullUtil%f_NULL_OBJECT))
        j_result2 = j_result
        jresult = j_result2
        return
  end function

  recursive subroutine StupidTimer_jm_visit_2(this, j_visitorInterface, j_timeDelayHelper)
    class(StupidTimer), target :: this
    class(Visitor), target, optional :: j_visitorInterface
    class(TimeDelayHelper), target, optional :: j_timeDelayHelper
    logical :: j_tookTooLong
    character(len=:), allocatable :: j_WAITING_FOR
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringUtil), pointer :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_tookTooLong = .false.
        j_WAITING_FOR = 'Waiting for: '
        jtemp4 => StringUtil_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(j_WAITING_FOR)
        jtemp1 => jtemp2%jm_append_1(jtemp4%jm_toString_1(j_visitorInterface))
        call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, this%f_commonStrings%f_VISIT)
        j_index = 0
        do while (this%jm_visitBool_1(j_visitorInterface))
            if ((mod(j_index, 10) == 0)) then
                jtemp7 => StringMaker_jnew_0()
                jtemp6 => jtemp7%jm_append_1(j_WAITING_FOR)
                jtemp5 => jtemp6%jm_appendint_1(j_index)
                call PreLogUtil_jm_put_3(jtemp5%jm_toString_0(), this, this%f_commonStrings%f_VISIT)
            end if
            j_index = j_index + 1
            continue ! synchronized
                call this%f_threadObjectUtil%jm_waitObjectFor_2(this, int(1800, 8))
            if (j_timeDelayHelper%jm_isTimeTNT_0()) then
                j_tookTooLong = .true.
                exit
            end if
        end do
        if (j_tookTooLong) then
            jtemp11 => StringUtil_jm_getInstance_0()
            jtemp10 => StringMaker_jnew_0()
            jtemp9 => jtemp10%jm_append_1('Took Too Long: ')
            jtemp8 => jtemp9%jm_append_1(jtemp11%jm_toString_1(j_visitorInterface))
            call this%f_logUtil%jm_put_4(this%f_commonStrings%f_EXCEPTION, this, this%f_commonStrings%f_VISIT, JR_newJObject('Exception'))
        else
            call PreLogUtil_jm_put_3(j_timeDelayHelper%jm_toString_0(), this, this%f_commonStrings%f_VISIT)
        end if
  end subroutine

  recursive subroutine StupidTimer_jm_stopWaiting_0(this)
    class(StupidTimer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            call this%f_threadObjectUtil%jm_notifyObject_1(this)
  end subroutine
end module StupidTimer_m

