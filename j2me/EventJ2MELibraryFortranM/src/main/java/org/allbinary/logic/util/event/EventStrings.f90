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
! package org.allbinary.logic.util.event
module EventStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: EventStrings
    character(len=:), allocatable :: f_PERFORMANCE_MESSAGE
    character(len=:), allocatable :: f_TOTAL_LISTENERS
    character(len=:), allocatable :: f_LISTENER_LABEL
    character(len=:), allocatable :: f_FIRE_EVENT
  end type

  class(EventStrings), pointer, save :: EventStrings_jcell_instance => null()
  logical, save :: EventStrings_jset_instance = .false.

contains

  function EventStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(EventStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (EventStrings)
      jresult => object
    end select
  end function

  function EventStrings_jstatic_instance() result(jresult)
    class(EventStrings), pointer :: jresult
    if (.not. EventStrings_jset_instance) then
      EventStrings_jset_instance = .true.
      EventStrings_jcell_instance => EventStrings_jnew_0()
    end if
    jresult => EventStrings_jcell_instance
  end function

  function EventStrings_jnew_0() result(this)
    class(EventStrings), pointer :: this
    allocate(this)
    this%jclass = 'EventStrings'
    this%f_PERFORMANCE_MESSAGE = ''
    this%f_TOTAL_LISTENERS = ''
    this%f_LISTENER_LABEL = ''
    this%f_FIRE_EVENT = ''
    this%f_PERFORMANCE_MESSAGE = 'Use Custom onEvent Methods for needed optimization'
    this%f_TOTAL_LISTENERS = 'Total Listeners: '
    this%f_LISTENER_LABEL = ' Listener: '
    this%f_FIRE_EVENT = 'fireEvent'
  end function

  recursive function EventStrings_jm_getInstance_0() result(jresult)
    class(EventStrings), pointer :: jresult
        jresult => EventStrings_jstatic_instance()
        return
  end function
end module EventStrings_m

