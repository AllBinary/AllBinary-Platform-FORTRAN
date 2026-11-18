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
! package org.allbinary.game.ag.ai.scroller
module TimeFiredInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: TimeFiredInterface
  contains
    procedure :: jm_getLastFireTime_0 => TimeFiredInterface_jm_getLastFireTime_0
  end type


contains

  function TimeFiredInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeFiredInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeFiredInterface)
      jresult => object
    end select
  end function

  function TimeFiredInterface_jnew_0() result(this)
    class(TimeFiredInterface), pointer :: this
    allocate(this)
    this%jclass = 'TimeFiredInterface'
  end function

  recursive function TimeFiredInterface_jm_getLastFireTime_0(this) result(jresult)
    class(TimeFiredInterface), target :: this
    integer(8) :: jresult
    error stop 'AbstractMethodError: TimeFiredInterface.getLastFireTime'
  end function
end module TimeFiredInterface_m

