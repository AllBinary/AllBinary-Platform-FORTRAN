! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.thread
module ThreadPoolStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: ThreadPoolStrings
    character(len=:), allocatable :: f_ADD_TASK
    character(len=:), allocatable :: f_START_TASK
    character(len=:), allocatable :: f_COMPLETE_TASK
  end type

  class(ThreadPoolStrings), pointer, save :: ThreadPoolStrings_jcell_instance => null()
  logical, save :: ThreadPoolStrings_jset_instance = .false.

contains

  function ThreadPoolStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThreadPoolStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThreadPoolStrings)
      jresult => object
    end select
  end function

  function ThreadPoolStrings_jstatic_instance() result(jresult)
    class(ThreadPoolStrings), pointer :: jresult
    if (.not. ThreadPoolStrings_jset_instance) then
      ThreadPoolStrings_jset_instance = .true.
      ThreadPoolStrings_jcell_instance => ThreadPoolStrings_jnew_0()
    end if
    jresult => ThreadPoolStrings_jcell_instance
  end function

  function ThreadPoolStrings_jnew_0() result(this)
    class(ThreadPoolStrings), pointer :: this
    allocate(this)
    this%jclass = 'ThreadPoolStrings'
    this%f_ADD_TASK = ''
    this%f_START_TASK = ''
    this%f_COMPLETE_TASK = ''
    this%f_ADD_TASK = 'addTask'
    this%f_START_TASK = 'Started Task: '
    this%f_COMPLETE_TASK = 'Completed Task: '
  end function

  recursive function ThreadPoolStrings_jm_getInstance_0() result(jresult)
    class(ThreadPoolStrings), pointer :: jresult
        jresult => ThreadPoolStrings_jstatic_instance()
        return
  end function
end module ThreadPoolStrings_m

