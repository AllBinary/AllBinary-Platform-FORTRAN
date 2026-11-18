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
  implicit none

  type, extends(JObject) :: LogFormatUtil
  contains
    procedure :: jm_get_4 => LogFormatUtil_jm_get_4
    procedure :: jm_getS_3 => LogFormatUtil_jm_getS_3
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
    allocate(this)
    this%jclass = 'LogFormatUtil'
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
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LogFormatUtil_jm_getS_3(this, j_className, j_functionName, j_specialMessage) result(jresult)
    class(LogFormatUtil), target :: this
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    character(len=*), intent(in) :: j_specialMessage
    character(len=:), allocatable :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function LogFormatUtil_jm_getO_1(this, j_exception) result(jresult)
    class(LogFormatUtil), target :: this
    class(JObject), target, optional :: j_exception
    character(len=:), allocatable :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module LogFormatUtil_m

