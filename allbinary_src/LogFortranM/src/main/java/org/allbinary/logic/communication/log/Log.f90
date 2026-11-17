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
module Log_m
  use JR_m
  use CommonStrings_m
  use LogFormatUtil_m
  implicit none

  type, extends(JObject) :: Log
    class(LogFormatUtil), pointer :: f_logFormatUtil => null()
    character(len=:), allocatable :: f_specialMessage
    class(JObject), pointer :: f_anyType => null()
    character(len=:), allocatable :: f_functionName
    class(JObject), pointer :: f_exception => null()
  contains
    procedure :: jm_getSpecialMessage_0 => Log_jm_getSpecialMessage_0
    procedure :: jm_getObject_0 => Log_jm_getObject_0
    procedure :: jm_getFunctionName_0 => Log_jm_getFunctionName_0
    procedure :: jm_getThrowable_0 => Log_jm_getThrowable_0
    procedure :: jm_toString_0 => Log_jm_toString_0
  end type


contains

  function Log_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Log), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Log)
      jresult => object
    end select
  end function

  recursive function Log_jnew_4(j_specialMessage, j_anyType, j_functionName, j_exception) result(this)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
    class(Log), pointer :: this
    allocate(this)
    this%jclass = 'Log'
    this%f_specialMessage = ''
    this%f_functionName = ''
    this%f_logFormatUtil => LogFormatUtil_jm_getInstance_0()
    
    
    
    
        this%f_specialMessage = j_specialMessage
        this%f_anyType => j_anyType
        this%f_functionName = j_functionName
        this%f_exception => j_exception
  end function

  recursive function Log_jm_getSpecialMessage_0(this) result(jresult)
    class(Log), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_specialMessage
        return
  end function

  recursive function Log_jm_getObject_0(this) result(jresult)
    class(Log), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_anyType
        return
  end function

  recursive function Log_jm_getFunctionName_0(this) result(jresult)
    class(Log), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_functionName
        return
  end function

  recursive function Log_jm_getThrowable_0(this) result(jresult)
    class(Log), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_exception
        return
  end function

  recursive function Log_jm_toString_0(this) result(jresult)
    class(Log), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_className
    character(len=:), allocatable :: j_clazz
    class(CommonStrings), pointer :: jtemp1
        jtemp1 => CommonStrings_jm_getInstance_0()
        j_className = jtemp1%f_EMPTY
        j_clazz = JR_className(this%f_anyType)
        if (.true.) then
            j_className = j_clazz
        end if
        jresult = this%f_logFormatUtil%jm_get_4(j_className, this%f_functionName, this%f_specialMessage, this%f_exception)
        return
  end function
end module Log_m

