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
! package org.allbinary.business.error
module ErrorData_m
  use JR_m
  implicit none

  type, extends(JObject) :: ErrorData
    character(len=:), allocatable :: f_NAME
    character(len=:), allocatable :: f_TEXT
  end type

  class(ErrorData), pointer, save :: ErrorData_jcell_instance => null()
  logical, save :: ErrorData_jset_instance = .false.

contains

  function ErrorData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ErrorData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ErrorData)
      jresult => object
    end select
  end function

  function ErrorData_jstatic_instance() result(jresult)
    class(ErrorData), pointer :: jresult
    if (.not. ErrorData_jset_instance) then
      ErrorData_jset_instance = .true.
      ErrorData_jcell_instance => ErrorData_jnew_0()
    end if
    jresult => ErrorData_jcell_instance
  end function

  subroutine ErrorData_jsetstatic_instance(jvalue)
    class(ErrorData), target, optional :: jvalue
    ErrorData_jset_instance = .true.
    if (present(jvalue)) then
      ErrorData_jcell_instance => jvalue
    else
      ErrorData_jcell_instance => null()
    end if
  end subroutine

  recursive function ErrorData_jnew_0() result(this)
    class(ErrorData), pointer :: this
    allocate(this)
    this%jclass = 'ErrorData'
    this%f_NAME = ''
    this%f_TEXT = ''
    this%f_NAME = 'ERROR_NAME'
    this%f_TEXT = 'ERROR_TEXT'
        continue
  end function

  recursive function ErrorData_jm_getInstance_0() result(jresult)
    class(ErrorData), pointer :: jresult
        jresult => ErrorData_jstatic_instance()
        return
  end function
end module ErrorData_m

