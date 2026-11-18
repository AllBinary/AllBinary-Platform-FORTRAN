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
! package org.allbinary.logic.communication.http
module HttpData_m
  use JR_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: HttpData
    character(len=:), allocatable :: f_EQUALS
    character(len=:), allocatable :: f_PARAM_SEP
    character(len=:), allocatable :: f_URL_PARAM_SEP
    character(len=:), allocatable :: f_URL_LABEL
  end type

  class(HttpData), pointer, save :: HttpData_jcell_instance => null()
  logical, save :: HttpData_jset_instance = .false.

contains

  function HttpData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HttpData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HttpData)
      jresult => object
    end select
  end function

  function HttpData_jstatic_instance() result(jresult)
    class(HttpData), pointer :: jresult
    if (.not. HttpData_jset_instance) then
      HttpData_jset_instance = .true.
      HttpData_jcell_instance => HttpData_jnew_0()
    end if
    jresult => HttpData_jcell_instance
  end function

  subroutine HttpData_jsetstatic_instance(jvalue)
    class(HttpData), target, optional :: jvalue
    HttpData_jset_instance = .true.
    if (present(jvalue)) then
      HttpData_jcell_instance => jvalue
    else
      HttpData_jcell_instance => null()
    end if
  end subroutine

  recursive function HttpData_jnew_0() result(this)
    class(HttpData), pointer :: this
    class(CommonSeps), pointer :: j_commonSeps
    allocate(this)
    this%jclass = 'HttpData'
    this%f_EQUALS = ''
    this%f_PARAM_SEP = ''
    this%f_URL_PARAM_SEP = ''
    this%f_URL_LABEL = ''
    
    
    
    this%f_URL_LABEL = 'Url: '
        j_commonSeps => CommonSeps_jm_getInstance_0()
        this%f_EQUALS = j_commonSeps%f_EQUALS
        this%f_PARAM_SEP = j_commonSeps%f_AMPERSAND
        this%f_URL_PARAM_SEP = j_commonSeps%f_QUESTION
  end function

  recursive function HttpData_jm_getInstance_0() result(jresult)
    class(HttpData), pointer :: jresult
        jresult => HttpData_jstatic_instance()
        return
  end function
end module HttpData_m

