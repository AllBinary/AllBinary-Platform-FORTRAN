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
! package org.allbinary.logic.java.exception
module ExceptionUtil_m
  use JR_m
  use ByteArrayOutputStream_m
  implicit none

  type, extends(JObject) :: ExceptionUtil
    class(JObject), pointer :: f_PRETEND_EXCEPTION => null()
    character(len=:), allocatable :: f_NONE
  contains
    procedure :: jm_getStackTrace_1 => ExceptionUtil_jm_getStackTrace_1
  end type

  class(ExceptionUtil), pointer, save :: ExceptionUtil_jcell_instance => null()
  logical, save :: ExceptionUtil_jset_instance = .false.

contains

  function ExceptionUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ExceptionUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ExceptionUtil)
      jresult => object
    end select
  end function

  function ExceptionUtil_jstatic_instance() result(jresult)
    class(ExceptionUtil), pointer :: jresult
    if (.not. ExceptionUtil_jset_instance) then
      ExceptionUtil_jset_instance = .true.
      ExceptionUtil_jcell_instance => ExceptionUtil_jnew_0()
    end if
    jresult => ExceptionUtil_jcell_instance
  end function

  subroutine ExceptionUtil_jsetstatic_instance(jvalue)
    class(ExceptionUtil), target, optional :: jvalue
    ExceptionUtil_jset_instance = .true.
    if (present(jvalue)) then
      ExceptionUtil_jcell_instance => jvalue
    else
      ExceptionUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ExceptionUtil_jnew_0() result(this)
    class(ExceptionUtil), pointer :: this
    allocate(this)
    this%jclass = 'ExceptionUtil'
    this%f_NONE = ''
    this%f_PRETEND_EXCEPTION => JR_newJObject('Exception')
    this%f_NONE = 'No Stack Trace'
        continue
  end function

  recursive function ExceptionUtil_jm_getInstance_0() result(jresult)
    class(ExceptionUtil), pointer :: jresult
        jresult => ExceptionUtil_jstatic_instance()
        return
  end function

  recursive function ExceptionUtil_jm_getStackTrace_1(this, j_e) result(jresult)
    class(ExceptionUtil), target :: this
    class(JObject), target, optional :: j_e
    character(len=:), allocatable :: jresult
    class(ByteArrayOutputStream), pointer :: j_bs
    character(len=:), allocatable :: j_output
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_bs => ByteArrayOutputStream_jnew_0()
        call j_e%jm_printStackTrace_0()
        j_output = j_bs%jm_toString_0()
        jresult = j_output
        return
  end function
end module ExceptionUtil_m

