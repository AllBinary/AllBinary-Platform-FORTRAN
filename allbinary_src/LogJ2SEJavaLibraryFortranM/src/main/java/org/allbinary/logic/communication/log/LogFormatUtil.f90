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
! package org.allbinary.logic.communication.log
module LogFormatUtil_m
  use JR_m
  use NullUtil_m
  use ExceptionUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonLabels_m
  use CommonSeps_m
  use TimeStampUtil_m
  implicit none

  type, extends(JObject) :: LogFormatUtil
    class(TimeStampUtil), pointer :: f_timeStampUtil => null()
    class(CommonSeps), pointer :: f_commonSeps => null()
    character(len=:), allocatable :: f_NONE
    character(len=:), allocatable :: f_LOG_ERROR
    character(len=:), allocatable :: f_EMPTY
    character(len=:), allocatable :: f_STACK_TRACE
    character(len=:), allocatable :: f_TIME
    character(len=:), allocatable :: f_CLASS_NAME
    character(len=:), allocatable :: f_FUNCTION_CALL
    character(len=:), allocatable :: f_SPECIAL_MESSAGE
    class(StringUtil), pointer :: f_stringUtil => null()
    class(ExceptionUtil), pointer :: f_exceptionUtil => null()
    class(NullUtil), pointer :: f_nullUtil => null()
  contains
    procedure :: jm_get_4 => LogFormatUtil_jm_get_4
    procedure :: jm_getS_3 => LogFormatUtil_jm_getS_3
    procedure :: jm_getF_2 => LogFormatUtil_jm_getF_2
    procedure :: jm_getO_1 => LogFormatUtil_jm_getO_1
  end type

  class(LogFormatUtil), pointer, save :: LogFormatUtil_jcell_instance => null()
  logical, save :: LogFormatUtil_jset_instance = .false.

contains

  function LogFormatUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogFormatUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogFormatUtil)
      jresult => object
    end select
  end function

  function LogFormatUtil_jstatic_instance() result(jresult)
    class(LogFormatUtil), pointer :: jresult
    if (.not. LogFormatUtil_jset_instance) then
      LogFormatUtil_jset_instance = .true.
      LogFormatUtil_jcell_instance => LogFormatUtil_jnew_0()
    end if
    jresult => LogFormatUtil_jcell_instance
  end function

  subroutine LogFormatUtil_jsetstatic_instance(jvalue)
    class(LogFormatUtil), target, optional :: jvalue
    LogFormatUtil_jset_instance = .true.
    if (present(jvalue)) then
      LogFormatUtil_jcell_instance => jvalue
    else
      LogFormatUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function LogFormatUtil_jnew_0() result(this)
    class(LogFormatUtil), pointer :: this
    class(CommonLabels), pointer :: jtemp1
    allocate(this)
    this%jclass = 'LogFormatUtil'
    this%f_NONE = ''
    this%f_LOG_ERROR = ''
    this%f_EMPTY = ''
    this%f_STACK_TRACE = ''
    this%f_TIME = ''
    this%f_CLASS_NAME = ''
    this%f_FUNCTION_CALL = ''
    this%f_SPECIAL_MESSAGE = ''
    this%f_timeStampUtil => TimeStampUtil_jm_getInstance_0()
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
    this%f_NONE = 'None'
    this%f_LOG_ERROR = JR_unescape('\nLog-Error: ')
    this%f_EMPTY = 'Empty'
    this%f_STACK_TRACE = JR_unescape('\nStack Trace: ')
    this%f_TIME = 'Time: '
    this%f_CLASS_NAME = this%f_commonSeps%f_SPACE
    jtemp1 => CommonLabels_jm_getInstance_0()
    this%f_FUNCTION_CALL = jtemp1%f_COLON_SEP
    this%f_SPECIAL_MESSAGE = '> '
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_exceptionUtil => ExceptionUtil_jm_getInstance_0()
    this%f_nullUtil => NullUtil_jm_getInstance_0()
        continue
  end function

  recursive function LogFormatUtil_jm_getInstance_0() result(jresult)
    class(LogFormatUtil), pointer :: jresult
        jresult => LogFormatUtil_jstatic_instance()
        return
  end function

  recursive function LogFormatUtil_jm_get_4(this, j_className, j_functionName, j_specialMessage, j_exception) result(jresult)
    class(LogFormatUtil), target :: this
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => this%jm_getF_2(j_className, j_functionName)
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getO_1(j_exception))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPECIAL_MESSAGE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_specialMessage)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_NEW_LINE)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function LogFormatUtil_jm_getS_3(this, j_className, j_functionName, j_specialMessage) result(jresult)
    class(LogFormatUtil), target :: this
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    character(len=*), intent(in) :: j_specialMessage
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => this%jm_getF_2(j_className, j_functionName)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_SPECIAL_MESSAGE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_specialMessage)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonSeps%f_NEW_LINE)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function LogFormatUtil_jm_getF_2(this, j_className, j_functionName) result(jresult)
    class(LogFormatUtil), target :: this
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    class(StringMaker), pointer :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_TIME)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_timeStampUtil%jm_getAsString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_CLASS_NAME)
        jdiscardRef => j_stringBuffer%jm_append_1(j_className)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_FUNCTION_CALL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_functionName)
        jresult => j_stringBuffer
        return
  end function

  recursive function LogFormatUtil_jm_getO_1(this, j_exception) result(jresult)
    class(LogFormatUtil), target :: this
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    character(len=:), allocatable :: j_exceptionAsString
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. JR_same(j_exception, this%f_nullUtil%f_NULL_OBJECT))) then
            j_stringBuffer => StringMaker_jnew_0()
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_LOG_ERROR)
            j_exceptionAsString = JR_toString(j_exception)
            jdiscardRef => j_stringBuffer%jm_append_1(j_exceptionAsString)
            jdiscardRef => j_stringBuffer%jm_append_1(this%f_STACK_TRACE)
            if ((.not. JR_same(j_exception, this%f_nullUtil%f_NULL_OBJECT))) then
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_exceptionUtil%jm_getStackTrace_1(j_exception))
            else
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_stringUtil%f_NULL_STRING)
            end if
            jresult = j_stringBuffer%jm_toString_0()
            return
        else
            jtemp2 => StringUtil_jm_getInstance_0()
            jresult = jtemp2%f_EMPTY_STRING
            return
        end if
  end function
end module LogFormatUtil_m

