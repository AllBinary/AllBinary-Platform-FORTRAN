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
module PreLogUtil_m
  use JR_m
  use NullUtil_m
  use CommonStrings_m
  use System_m
  use LogFormatUtil_m
  implicit none

  type, extends(JObject) :: PreLogUtil
  end type

  character(len=:), allocatable, save :: PreLogUtil_jcell_LOG_SUCCESS
  logical, save :: PreLogUtil_jset_LOG_SUCCESS = .false.

contains

  function PreLogUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PreLogUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PreLogUtil)
      jresult => object
    end select
  end function

  function PreLogUtil_jstatic_LOG_SUCCESS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. PreLogUtil_jset_LOG_SUCCESS) then
      PreLogUtil_jset_LOG_SUCCESS = .true.
      PreLogUtil_jcell_LOG_SUCCESS = 'org.allbinary: '
    end if
    jresult = PreLogUtil_jcell_LOG_SUCCESS
  end function

  subroutine PreLogUtil_jsetstatic_LOG_SUCCESS(jvalue)
    character(len=*), intent(in) :: jvalue
    PreLogUtil_jset_LOG_SUCCESS = .true.
    PreLogUtil_jcell_LOG_SUCCESS = jvalue
  end subroutine

  recursive function PreLogUtil_jnew_0() result(this)
    class(PreLogUtil), pointer :: this
    allocate(this)
    this%jclass = 'PreLogUtil'
        continue
  end function

  recursive subroutine PreLogUtil_jm_put_3(j_specialMessage, j_anyType, j_functionName)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => NullUtil_jm_getInstance_0()
        call PreLogUtil_jm_putOE_4(j_specialMessage, j_anyType, j_functionName, jtemp1%f_NULL_OBJECT)
  end subroutine

  recursive subroutine PreLogUtil_jm_putOE_4(j_specialMessage, j_anyType, j_functionName, j_exception)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: j_className
    character(len=:), allocatable :: j_message
    class(CommonStrings), pointer :: jtemp2
    character(len=:), allocatable :: jtemp3
    character(len=:), allocatable :: jtemp4
    class(LogFormatUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => CommonStrings_jm_getInstance_0()
        j_className = jtemp2%f_EMPTY
        jtemp3 = JR_className(j_anyType)
        if (.true.) then
            jtemp4 = JR_className(j_anyType)
            j_className = jtemp4
        end if
        jtemp5 => LogFormatUtil_jm_getInstance_0()
        j_message = jtemp5%jm_get_4(j_className, j_functionName, j_specialMessage, j_exception)
        call JR_print(PreLogUtil_jstatic_LOG_SUCCESS())
        call JR_println(j_message)
  end subroutine

  recursive subroutine PreLogUtil_jm_putS_3(j_specialMessage, j_className, j_functionName)
    character(len=*), intent(in) :: j_specialMessage
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    class(NullUtil), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => NullUtil_jm_getInstance_0()
        call PreLogUtil_jm_putSE_4(j_specialMessage, j_className, j_functionName, jtemp6%f_NULL_OBJECT)
  end subroutine

  recursive subroutine PreLogUtil_jm_putSE_4(j_specialMessage, j_className, j_functionName, j_exception)
    character(len=*), intent(in) :: j_specialMessage
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: j_message
    class(LogFormatUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp7 => LogFormatUtil_jm_getInstance_0()
        j_message = jtemp7%jm_get_4(j_className, j_functionName, j_specialMessage, j_exception)
        call JR_print(PreLogUtil_jstatic_LOG_SUCCESS())
        call JR_println(j_message)
  end subroutine

  recursive function PreLogUtil_jm_getClassName_1(j_anyType) result(jresult)
    class(JObject), target, optional :: j_anyType
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp8
        jtemp8 = JR_className(j_anyType)
        jresult = jtemp8
        return
  end function
end module PreLogUtil_m

