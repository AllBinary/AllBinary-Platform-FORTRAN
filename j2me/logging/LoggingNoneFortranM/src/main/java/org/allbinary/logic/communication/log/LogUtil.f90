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
  use Log_m
  implicit none

  type, extends(JObject) :: LogUtil
  contains
    procedure :: jm_putP_1 => LogUtil_jm_putP_1
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
        continue
  end function

  recursive function LogUtil_jm_getInstance_0() result(jresult)
    class(LogUtil), pointer :: jresult
        jresult => LogUtil_jstatic_instance()
        return
  end function

  recursive subroutine LogUtil_jm_putP_1(this, j_log)
    class(LogUtil), target :: this
    class(Log), target, optional :: j_log
    continue
  end subroutine

  recursive subroutine LogUtil_jm_putF_3(this, j_specialMessage, j_anyType, j_functionName)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    continue
  end subroutine

  recursive subroutine LogUtil_jm_putFS_3(this, j_specialMessage, j_className, j_functionName)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    continue
  end subroutine

  recursive subroutine LogUtil_jm_put_4(this, j_specialMessage, j_anyType, j_functionName, j_exception)
    class(LogUtil), target :: this
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    continue
  end subroutine
end module LogUtil_m

