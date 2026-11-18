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
! package org.allbinary.media.audio
module TimeBaseInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: TimeBaseInterface
  contains
    procedure :: jm_getTimeBase_0 => TimeBaseInterface_jm_getTimeBase_0
    procedure :: jm_setTimeBase_1 => TimeBaseInterface_jm_setTimeBase_1
  end type


contains

  function TimeBaseInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimeBaseInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimeBaseInterface)
      jresult => object
    end select
  end function

  function TimeBaseInterface_jnew_0() result(this)
    class(TimeBaseInterface), pointer :: this
    allocate(this)
    this%jclass = 'TimeBaseInterface'
  end function

  recursive function TimeBaseInterface_jm_getTimeBase_0(this) result(jresult)
    class(TimeBaseInterface), target :: this
    class(TimeBase), pointer :: jresult
    error stop 'AbstractMethodError: TimeBaseInterface.getTimeBase'
  end function

  recursive subroutine TimeBaseInterface_jm_setTimeBase_1(this, j_timeBase)
    class(TimeBaseInterface), target :: this
    class(TimeBase), target, optional :: j_timeBase
    error stop 'AbstractMethodError: TimeBaseInterface.setTimeBase'
  end subroutine
end module TimeBaseInterface_m

