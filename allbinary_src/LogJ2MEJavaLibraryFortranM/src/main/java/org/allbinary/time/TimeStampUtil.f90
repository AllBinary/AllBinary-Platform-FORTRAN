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
! package org.allbinary.time
module TimeStampUtil_m
  use JR_m
  use Calendar_m
  use Date_m
  implicit none

  type, extends(JObject) :: TimeStampUtil
  contains
    procedure :: jm_getAsString_0 => TimeStampUtil_jm_getAsString_0
  end type

  class(TimeStampUtil), pointer, save :: TimeStampUtil_jcell_instance => null()
  logical, save :: TimeStampUtil_jset_instance = .false.

contains

  function TimeStampUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeStampUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeStampUtil)
      jresult => object
    end select
  end function

  function TimeStampUtil_jstatic_instance() result(jresult)
    class(TimeStampUtil), pointer :: jresult
    if (.not. TimeStampUtil_jset_instance) then
      TimeStampUtil_jset_instance = .true.
      TimeStampUtil_jcell_instance => TimeStampUtil_jnew_0()
    end if
    jresult => TimeStampUtil_jcell_instance
  end function

  recursive function TimeStampUtil_jnew_0() result(this)
    class(TimeStampUtil), pointer :: this
    allocate(this)
    this%jclass = 'TimeStampUtil'
        continue
  end function

  recursive function TimeStampUtil_jm_getInstance_0() result(jresult)
    class(TimeStampUtil), pointer :: jresult
        jresult => TimeStampUtil_jstatic_instance()
        return
  end function

  recursive function TimeStampUtil_jm_getAsString_0(this) result(jresult)
    class(TimeStampUtil), target :: this
    character(len=:), allocatable :: jresult
    class(Calendar), pointer :: j_calendar
    class(Date), pointer :: j_date
        j_calendar => Calendar_jm_getInstance_0()
        j_date => j_calendar%jm_getTime_0()
        jresult = j_date%jm_toString_0()
        return
  end function
end module TimeStampUtil_m

