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
! package org.allbinary.canvas
module BaseGameStatistics_m
  use JR_m
  use PrimitiveLongSingleton_m
  use ScaleFactorFactory_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use Integer_m
  use Long_m
  implicit none

  type, extends(JObject) :: BaseGameStatistics
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_updateDelayHelper => null()
    integer(8) :: f_totalRefreshes = 0_8
    integer(8) :: f_totalFrames = 0_8
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
    integer(4) :: f_DEFAULT_SCALE_FACTOR = 0
    character(len=:), allocatable :: f_NOT
    character(len=:), allocatable :: f_EMPTY_STRING
    type(JString), allocatable :: f_STRING_ARRAY(:)
    integer(4) :: f_SPACE_CHAR = 0
    integer(4) :: f_PLUS_CHAR = 0
    integer(4) :: f_X_CHAR = 0
    integer(4), allocatable :: f_CHAR_ARRAY(:,:)
    class(PrimitiveLongSingleton), pointer :: f_primitiveLongSingleton => null()
  contains
    procedure :: jm_init_0 => BaseGameStatistics_jm_init_0
    procedure :: jm_add_1 => BaseGameStatistics_jm_add_1
    procedure :: jm_process_0 => BaseGameStatistics_jm_process_0
    procedure :: jm_nextFrame_0 => BaseGameStatistics_jm_nextFrame_0
    procedure :: jm_nextRefresh_0 => BaseGameStatistics_jm_nextRefresh_0
    procedure :: jm_getRefreshRate_0 => BaseGameStatistics_jm_getRefreshRate_0
    procedure :: jm_getTimeDelayHelper_0 => BaseGameStatistics_jm_getTimeDelayHelper_0
    procedure :: jm_to2DCharArray_0 => BaseGameStatistics_jm_to2DCharArray_0
    procedure :: jm_toStringArray_0 => BaseGameStatistics_jm_toStringArray_0
    procedure :: jm_toStringAt_1 => BaseGameStatistics_jm_toStringAt_1
    procedure :: jm_toString_0 => BaseGameStatistics_jm_toString_0
  end type


contains

  function BaseGameStatistics_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseGameStatistics), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseGameStatistics)
      jresult => object
    end select
  end function

  recursive function BaseGameStatistics_jnew_0() result(this)
    class(BaseGameStatistics), pointer :: this
    class(ScaleFactorFactory), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'BaseGameStatistics'
    this%f_NOT = ''
    this%f_EMPTY_STRING = ''
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(Integer_jstatic_MAX_VALUE())
    this%f_updateDelayHelper => TimeDelayHelper_jnew_1(2000)
    
    
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
    jtemp1 => ScaleFactorFactory_jm_getInstance_0()
    this%f_DEFAULT_SCALE_FACTOR = jtemp1%f_DEFAULT_SCALE_FACTOR
    this%f_NOT = 'Not enough Time to Calculate'
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_EMPTY_STRING = jtemp2%f_EMPTY_STRING
    this%f_STRING_ARRAY = [JString :: JString(' Total Time: '), JString(this%f_EMPTY_STRING), JString(' Total Frames: '), JString(this%f_EMPTY_STRING), JString(' Frames/10 Sec: '), JString(this%f_EMPTY_STRING), JString(' Total Paints: '), JString(this%f_EMPTY_STRING), JString(' Paints/10 Sec: '), JString(this%f_EMPTY_STRING)]
    this%f_SPACE_CHAR = iachar(' ')
    this%f_PLUS_CHAR = iachar('+')
    this%f_X_CHAR = iachar('X')
    this%f_CHAR_ARRAY = reshape([integer(4) :: iachar('F'), iachar('r'), iachar('a'), iachar('m'), iachar('e'), iachar('s'), iachar('/'), iachar('1'), iachar('0'), iachar(' '), iachar('S'), iachar('e'), iachar('c'), iachar(':'), iachar('X'), iachar('X'), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, iachar('P'), iachar('a'), iachar('i'), iachar('n'), iachar('t'), iachar('s'), iachar('/'), iachar('1'), iachar('0'), iachar(' '), iachar('S'), iachar('e'), iachar('c'), iachar(':'), iachar('X'), iachar('X'), 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [4, 14], order=[2, 1])
    this%f_primitiveLongSingleton => PrimitiveLongSingleton_jm_getInstance_0()
        continue
  end function

  recursive subroutine BaseGameStatistics_jm_init_0(this)
    class(BaseGameStatistics), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_timeDelayHelper%jm_setStartTimeTNT_0()
        this%f_totalRefreshes = 0_8
        this%f_totalFrames = 0_8
  end subroutine

  recursive subroutine BaseGameStatistics_jm_add_1(this, j_string)
    class(BaseGameStatistics), target :: this
    character(len=*), intent(in) :: j_string
    continue
  end subroutine

  recursive subroutine BaseGameStatistics_jm_process_0(this)
    class(BaseGameStatistics), target :: this
    continue
  end subroutine

  recursive subroutine BaseGameStatistics_jm_nextFrame_0(this)
    class(BaseGameStatistics), target :: this
        this%f_totalFrames = this%f_totalFrames + 1
  end subroutine

  recursive subroutine BaseGameStatistics_jm_nextRefresh_0(this)
    class(BaseGameStatistics), target :: this
        this%f_totalRefreshes = this%f_totalRefreshes + 1
  end subroutine

  recursive function BaseGameStatistics_jm_getRefreshRate_0(this) result(jresult)
    class(BaseGameStatistics), target :: this
    integer(4) :: jresult
    integer(8) :: j_elapsed
    integer(4) :: j_time
        j_elapsed = this%f_timeDelayHelper%jm_getElapsed_1(this%f_gameTickTimeDelayHelper%f_startTime)
        if ((j_elapsed > 1_8)) then
            j_time = JR_i16(JR_l2i(((this%f_totalRefreshes / (shifta(j_elapsed, iand(this%f_DEFAULT_SCALE_FACTOR, 63)))))))
            jresult = j_time
            return
        else
            jresult = 0
            return
        end if
  end function

  recursive function BaseGameStatistics_jm_getTimeDelayHelper_0(this) result(jresult)
    class(BaseGameStatistics), target :: this
    class(TimeDelayHelper), pointer :: jresult
        jresult => this%f_timeDelayHelper
        return
  end function

  recursive function BaseGameStatistics_jm_to2DCharArray_0(this) result(jresult)
    class(BaseGameStatistics), target :: this
    integer(4), allocatable :: jresult(:,:)
    integer(8) :: j_totalTime
    integer(4) :: j_framesPerSec
    integer(4) :: j_tens
    integer(4) :: j_removeTens
    integer(4) :: j_refreshesPerSec
        j_totalTime = this%f_timeDelayHelper%jm_getElapsed_1(this%f_gameTickTimeDelayHelper%f_startTime)
        j_totalTime = (shifta(j_totalTime, iand(this%f_DEFAULT_SCALE_FACTOR, 63)))
        if (((j_totalTime > 0_8) .and. this%f_updateDelayHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime))) then
            j_framesPerSec = JR_l2i(((this%f_totalFrames / j_totalTime)))
            if ((j_framesPerSec < 10)) then
                this%f_CHAR_ARRAY((1) + 1, (0) + 1) = this%f_SPACE_CHAR
                this%f_CHAR_ARRAY((1) + 1, (1) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY((j_framesPerSec) + 1)
            else if ((j_framesPerSec < 100)) then
                j_tens = (j_framesPerSec / 10)
                j_removeTens = (j_tens * 10)
                this%f_CHAR_ARRAY((1) + 1, (0) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY((j_tens) + 1)
                this%f_CHAR_ARRAY((1) + 1, (1) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY(((j_framesPerSec - j_removeTens)) + 1)
            else
                this%f_CHAR_ARRAY((1) + 1, (0) + 1) = this%f_PLUS_CHAR
                this%f_CHAR_ARRAY((1) + 1, (1) + 1) = this%f_PLUS_CHAR
            end if
            j_refreshesPerSec = JR_l2i(((this%f_totalRefreshes / j_totalTime)))
            if ((j_refreshesPerSec < 10)) then
                this%f_CHAR_ARRAY((3) + 1, (0) + 1) = this%f_X_CHAR
                this%f_CHAR_ARRAY((3) + 1, (1) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY((j_refreshesPerSec) + 1)
            else if ((j_refreshesPerSec < 100)) then
                j_tens = (j_refreshesPerSec / 10)
                j_removeTens = (j_tens * 10)
                this%f_CHAR_ARRAY((3) + 1, (0) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY(((j_refreshesPerSec / 10)) + 1)
                this%f_CHAR_ARRAY((3) + 1, (1) + 1) = this%f_primitiveLongSingleton%f_NUMBER_CHAR_ARRAY(((j_refreshesPerSec - j_removeTens)) + 1)
            else
                this%f_CHAR_ARRAY((3) + 1, (0) + 1) = this%f_PLUS_CHAR
                this%f_CHAR_ARRAY((3) + 1, (1) + 1) = this%f_PLUS_CHAR
            end if
        end if
        jresult = this%f_CHAR_ARRAY
        return
  end function

  recursive function BaseGameStatistics_jm_toStringArray_0(this) result(jresult)
    class(BaseGameStatistics), target :: this
    type(JString), allocatable :: jresult(:)
    integer(8) :: j_totalTime
    character(len=:), allocatable :: j_string
        j_totalTime = this%f_timeDelayHelper%jm_getElapsed_1(this%f_gameTickTimeDelayHelper%f_startTime)
        j_totalTime = ((j_totalTime / 10000_8))
        if ((j_totalTime > 0_8)) then
            this%f_STRING_ARRAY((1) + 1)%v = JR_longString(j_totalTime)
            this%f_STRING_ARRAY((3) + 1)%v = JR_longString(this%f_totalFrames)
            this%f_STRING_ARRAY((5) + 1)%v = JR_longString((this%f_totalFrames / j_totalTime))
            this%f_STRING_ARRAY((7) + 1)%v = JR_longString(this%f_totalRefreshes)
            this%f_STRING_ARRAY((9) + 1)%v = JR_longString((this%f_totalRefreshes / j_totalTime))
        else
            j_string = this%f_EMPTY_STRING
            this%f_STRING_ARRAY((1) + 1)%v = j_string
            this%f_STRING_ARRAY((3) + 1)%v = j_string
            this%f_STRING_ARRAY((5) + 1)%v = j_string
            this%f_STRING_ARRAY((7) + 1)%v = j_string
            this%f_STRING_ARRAY((9) + 1)%v = j_string
        end if
        jresult = this%f_STRING_ARRAY
        return
  end function

  recursive function BaseGameStatistics_jm_toStringAt_1(this, j_totalTime) result(jresult)
    class(BaseGameStatistics), target :: this
    integer(8), value :: j_totalTime
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_STRING_ARRAY((0) + 1)%v)
        jdiscardRef => j_stringBuffer%jm_appendlong_1(j_totalTime)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_STRING_ARRAY((2) + 1)%v)
        jdiscardRef => j_stringBuffer%jm_appendlong_1(this%f_totalFrames)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_STRING_ARRAY((4) + 1)%v)
        jdiscardRef => j_stringBuffer%jm_appendlong_1((this%f_totalFrames / j_totalTime))
        if ((this%f_totalRefreshes > 0_8)) then
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_STRING_ARRAY((6) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_appendlong_1(this%f_totalRefreshes)
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_STRING_ARRAY((8) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_appendlong_1((this%f_totalRefreshes / j_totalTime))
            jtemp3 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_NEW_LINE)
        end if
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function BaseGameStatistics_jm_toString_0(this) result(jresult)
    class(BaseGameStatistics), target :: this
    character(len=:), allocatable :: jresult
    integer(8) :: j_totalTime
        j_totalTime = this%f_timeDelayHelper%jm_getElapsed_1(this%f_gameTickTimeDelayHelper%f_startTime)
        j_totalTime = ((j_totalTime / 1000_8))
        if ((j_totalTime > 0_8)) then
            jresult = this%jm_toStringAt_1(j_totalTime)
            return
        else
            jresult = this%f_NOT
            return
        end if
  end function
end module BaseGameStatistics_m

