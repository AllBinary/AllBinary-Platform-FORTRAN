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
! package org.allbinary.logic.math
module MathData_m
  use JR_m
  use CommonPhoneStrings_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: MathData
    character(len=:), allocatable :: f_EQUALS
    character(len=:), allocatable :: f_PLUS
    character(len=:), allocatable :: f_GREATER_THAN
    character(len=:), allocatable :: f_MINUS
    character(len=:), allocatable :: f_DIVIDE
    character(len=:), allocatable :: f_MULTIPLY
  end type

  class(MathData), pointer, save :: MathData_jcell_instance => null()
  logical, save :: MathData_jset_instance = .false.

contains

  function MathData_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MathData), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MathData)
      jresult => object
    end select
  end function

  function MathData_jstatic_instance() result(jresult)
    class(MathData), pointer :: jresult
    if (.not. MathData_jset_instance) then
      MathData_jset_instance = .true.
      MathData_jcell_instance => MathData_jnew_0()
    end if
    jresult => MathData_jcell_instance
  end function

  subroutine MathData_jsetstatic_instance(jvalue)
    class(MathData), target, optional :: jvalue
    MathData_jset_instance = .true.
    if (present(jvalue)) then
      MathData_jcell_instance => jvalue
    else
      MathData_jcell_instance => null()
    end if
  end subroutine

  recursive function MathData_jnew_0() result(this)
    class(MathData), pointer :: this
    class(CommonSeps), pointer :: j_commonSeps
    class(CommonPhoneStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'MathData'
    this%f_EQUALS = ''
    this%f_PLUS = ''
    this%f_GREATER_THAN = ''
    this%f_MINUS = ''
    this%f_DIVIDE = ''
    this%f_MULTIPLY = ''
    
    this%f_PLUS = '+'
    this%f_GREATER_THAN = '>'
    
    
    
        j_commonSeps => CommonSeps_jm_getInstance_0()
        this%f_EQUALS = j_commonSeps%f_EQUALS
        this%f_MINUS = j_commonSeps%f_DASH
        this%f_DIVIDE = j_commonSeps%f_FORWARD_SLASH
        jtemp1 => CommonPhoneStrings_jm_getInstance_0()
        this%f_MULTIPLY = jtemp1%f_STAR
  end function

  recursive function MathData_jm_getInstance_0() result(jresult)
    class(MathData), pointer :: jresult
        jresult => MathData_jstatic_instance()
        return
  end function
end module MathData_m

