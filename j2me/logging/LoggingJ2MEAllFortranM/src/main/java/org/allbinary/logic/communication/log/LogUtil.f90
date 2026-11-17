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
module LogUtil_m
  use JR_m
  use TsUtil_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use System_m
  use Integer_m
  use LogFormatUtil_m
  use Log_m
  implicit none

  type, extends(JObject) :: LogUtil
    class(LogFormatUtil), pointer :: f_logFormatUtil => null()
    character(len=:), allocatable :: f_LOG_SUCCESS
  contains
    procedure :: jm_putL_1 => LogUtil_jm_putL_1
    procedure :: jm_putF_3 => LogUtil_jm_putF_3
    procedure :: jm_putFS_3 => LogUtil_jm_putFS_3
    procedure :: jm_put_4 => LogUtil_jm_put_4
  end type

  class(LogUtil), pointer, save :: LogUtil_jcell_instance => null()
  logical, save :: LogUtil_jset_instance = .false.

contains

  function LogUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogUtil)
      jresult => object
    end select
  end function

  function LogUtil_jstatic_instance() result(jresult)
    class(LogUtil), pointer :: jresult
    if (.not. LogUtil_jset_instance) then
      LogUtil_jset_instance = .true.
      LogUtil_jcell_instance => LogUtil_jnew_0()
    end if
    jresult => LogUtil_jcell_instance
  end function

  recursive function LogUtil_jnew_0() result(this)
    class(LogUtil), pointer :: this
    allocate(this)
    this%jclass = 'LogUtil'
    this%f_LOG_SUCCESS = ''
    this%f_logFormatUtil => LogFormatUtil_jm_getInstance_0()
    this%f_LOG_SUCCESS = 'org.allbinary: '
        continue
  end function

  recursive function LogUtil_jm_getInstance_0() result(jresult)
    class(LogUtil), pointer :: jresult
        jresult => LogUtil_jstatic_instance()
        return
  end function

  recursive subroutine LogUtil_jm_putL_1(this, j_log)
    class(LogUtil), target :: this
    class(Log), target, optional :: j_log
    character(len=:), allocatable :: j_specialMessage
    class(JObject), pointer :: j_anyType
    character(len=:), allocatable :: j_functionName
    class(JObject), pointer :: j_exception
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_specialMessage = j_log%jm_getSpecialMessage_0()
        j_anyType => j_log%jm_getObject_0()
        j_functionName = j_log%jm_getFunctionName_0()
        j_exception => j_log%jm_getThrowable_0()
        call this%jm_put_4(j_specialMessage, j_anyType, j_functionName, j_exception)
  end subroutine

  recursive subroutine LogUtil_jm_putF_3(this, j_specialMessage, j_anyType, j_functionName)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    character(len=:), allocatable :: j_className
    character(len=:), allocatable :: j_message
    class(CommonStrings), pointer :: jtemp1
    character(len=:), allocatable :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    character(len=:), allocatable :: jtemp7
    class(CommonSeps), pointer :: jtemp8
    class(TsUtil), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => CommonStrings_jm_getInstance_0()
        j_className = jtemp1%f_EMPTY
        jtemp2 = JR_className(j_anyType)
        if (.true.) then
            jtemp7 = JR_className(j_anyType)
            jtemp9 => TsUtil_jm_getInstance_0()
            jtemp8 => CommonSeps_jm_getInstance_0()
            jtemp6 => StringMaker_jnew_0()
            jtemp5 => jtemp6%jm_append_1(jtemp7)
            jtemp4 => jtemp5%jm_append_1(jtemp8%f_COLON)
            jtemp3 => jtemp4%jm_append_1(Integer_jm_toHexString_1(jtemp9%jm_hashCode_1(j_anyType)))
            j_className = jtemp3%jm_toString_0()
        end if
        j_message = this%f_logFormatUtil%jm_getS_3(j_className, j_functionName, j_specialMessage)
        call JR_print(this%f_LOG_SUCCESS)
        call JR_println(j_message)
  end subroutine

  recursive subroutine LogUtil_jm_putFS_3(this, j_specialMessage, j_className, j_functionName)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    character(len=:), allocatable :: j_message
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_message = this%f_logFormatUtil%jm_getS_3(j_className, j_functionName, j_specialMessage)
        call JR_print(this%f_LOG_SUCCESS)
        call JR_println(j_message)
  end subroutine

  recursive subroutine LogUtil_jm_put_4(this, j_specialMessage, j_anyType, j_functionName, j_exception)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: j_className
    integer(4) :: j_hashCodeValue
    character(len=:), allocatable :: j_hexString
    character(len=:), allocatable :: j_message
    class(CommonStrings), pointer :: jtemp10
    character(len=:), allocatable :: jtemp11
    class(TsUtil), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    character(len=:), allocatable :: jtemp17
    class(CommonSeps), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp10 => CommonStrings_jm_getInstance_0()
        j_className = jtemp10%f_EMPTY
        jtemp11 = JR_className(j_anyType)
        if (.true.) then
            jtemp12 => TsUtil_jm_getInstance_0()
            j_hashCodeValue = jtemp12%jm_hashCode_1(j_anyType)
            j_hexString = Integer_jm_toHexString_1(j_hashCodeValue)
            jtemp17 = JR_className(j_anyType)
            jtemp18 => CommonSeps_jm_getInstance_0()
            jtemp16 => StringMaker_jnew_0()
            jtemp15 => jtemp16%jm_append_1(jtemp17)
            jtemp14 => jtemp15%jm_append_1(jtemp18%f_COLON)
            jtemp13 => jtemp14%jm_append_1(j_hexString)
            j_className = jtemp13%jm_toString_0()
        end if
        j_message = this%f_logFormatUtil%jm_get_4(j_className, j_functionName, j_specialMessage, j_exception)
        call JR_print(this%f_LOG_SUCCESS)
        call JR_println(j_message)
  end subroutine
end module LogUtil_m

