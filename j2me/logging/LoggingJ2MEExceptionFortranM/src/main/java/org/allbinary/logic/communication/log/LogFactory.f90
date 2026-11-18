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
module LogFactory_m
  use JR_m
  use NullUtil_m
  use StringUtil_m
  use Log_m
  implicit none

  type, extends(JObject) :: LogFactory
  end type

  class(Log), pointer, save :: LogFactory_jcell_LOG => null()
  logical, save :: LogFactory_jset_LOG = .false.

contains

  function LogFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LogFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LogFactory)
      jresult => object
    end select
  end function

  function LogFactory_jstatic_LOG() result(jresult)
    class(Log), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(NullUtil), pointer :: jtemp4
    if (.not. LogFactory_jset_LOG) then
      LogFactory_jset_LOG = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    jtemp2 => NullUtil_jm_getInstance_0()
    jtemp3 => StringUtil_jm_getInstance_0()
    jtemp4 => NullUtil_jm_getInstance_0()
    LogFactory_jcell_LOG => Log_jnew_4(jtemp1%f_EMPTY_STRING, jtemp2%f_NULL_OBJECT, jtemp3%f_EMPTY_STRING, jtemp4%f_NULL_OBJECT)
    end if
    jresult => LogFactory_jcell_LOG
  end function

  subroutine LogFactory_jsetstatic_LOG(jvalue)
    class(Log), target, optional :: jvalue
    LogFactory_jset_LOG = .true.
    if (present(jvalue)) then
      LogFactory_jcell_LOG => jvalue
    else
      LogFactory_jcell_LOG => null()
    end if
  end subroutine

  function LogFactory_jnew_0() result(this)
    class(LogFactory), pointer :: this
    allocate(this)
    this%jclass = 'LogFactory'
  end function

  recursive function LogFactory_jm_getInstanceD_0() result(jresult)
    class(Log), pointer :: jresult
    class(StringUtil), pointer :: j_stringUtil
    class(NullUtil), pointer :: j_nullUtil
        j_stringUtil => StringUtil_jm_getInstance_0()
        j_nullUtil => NullUtil_jm_getInstance_0()
        jresult => Log_jnew_4(j_stringUtil%f_EMPTY_STRING, j_nullUtil%f_NULL_OBJECT, j_stringUtil%f_EMPTY_STRING, j_nullUtil%f_NULL_OBJECT)
        return
  end function

  recursive function LogFactory_jm_getInstance_4(j_specialMessage, j_anyType, j_functionName, j_exception) result(jresult)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    class(Log), pointer :: jresult
        jresult => Log_jnew_4(j_specialMessage, j_anyType, j_functionName, j_exception)
        return
  end function

  recursive function LogFactory_jm_getInstanceF_3(j_specialMessage, j_anyType, j_functionName) result(jresult)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(Log), pointer :: jresult
        jresult => LogFactory_jstatic_LOG()
        return
  end function
end module LogFactory_m

