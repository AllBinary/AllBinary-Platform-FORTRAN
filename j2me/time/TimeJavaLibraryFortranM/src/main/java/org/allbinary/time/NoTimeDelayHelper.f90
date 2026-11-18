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
module NoTimeDelayHelper_m
  use JR_m
  use TimeDelayHelper_m
  implicit none

  type, extends(TimeDelayHelper) :: NoTimeDelayHelper
  contains
    procedure :: jm_isTimeTNT_0 => NoTimeDelayHelper_jm_isTimeTNT_0
    procedure :: jm_isTimeSinceTNT_1 => NoTimeDelayHelper_jm_isTimeSinceTNT_1
    procedure :: jm_isTime_1 => NoTimeDelayHelper_jm_isTime_1
    procedure :: jm_isTimeSince_2 => NoTimeDelayHelper_jm_isTimeSince_2
  end type

  class(NoTimeDelayHelper), pointer, save :: NoTimeDelayHelper_jcell_SINGLETON => null()
  logical, save :: NoTimeDelayHelper_jset_SINGLETON = .false.

contains

  function NoTimeDelayHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoTimeDelayHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoTimeDelayHelper)
      jresult => object
    end select
  end function

  function NoTimeDelayHelper_jstatic_SINGLETON() result(jresult)
    class(NoTimeDelayHelper), pointer :: jresult
    if (.not. NoTimeDelayHelper_jset_SINGLETON) then
      NoTimeDelayHelper_jset_SINGLETON = .true.
      NoTimeDelayHelper_jcell_SINGLETON => NoTimeDelayHelper_jnew_0()
    end if
    jresult => NoTimeDelayHelper_jcell_SINGLETON
  end function

  subroutine NoTimeDelayHelper_jsetstatic_SINGLETON(jvalue)
    class(NoTimeDelayHelper), target, optional :: jvalue
    NoTimeDelayHelper_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NoTimeDelayHelper_jcell_SINGLETON => jvalue
    else
      NoTimeDelayHelper_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NoTimeDelayHelper_jnew_0() result(this)
    class(NoTimeDelayHelper), pointer :: this
    allocate(this)
    this%jclass = 'NoTimeDelayHelper'
        continue ! super()
  end function

  recursive function NoTimeDelayHelper_jm_isTimeTNT_0(this) result(jresult)
    class(NoTimeDelayHelper), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function NoTimeDelayHelper_jm_isTimeSinceTNT_1(this, j_delay) result(jresult)
    class(NoTimeDelayHelper), target :: this
    integer(4), value :: j_delay
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function NoTimeDelayHelper_jm_isTime_1(this, j_currentTime) result(jresult)
    class(NoTimeDelayHelper), target :: this
    integer(8), value :: j_currentTime
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive function NoTimeDelayHelper_jm_isTimeSince_2(this, j_delay, j_currentTime) result(jresult)
    class(NoTimeDelayHelper), target :: this
    integer(4), value :: j_delay
    integer(8), value :: j_currentTime
    logical :: jresult
        jresult = .true.
        return
  end function
end module NoTimeDelayHelper_m

function NoTimeDelayHelper_jnew_0_jext() result(this)
  use NoTimeDelayHelper_m, only: JObject, NoTimeDelayHelper_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoTimeDelayHelper_jnew_0()
end function

