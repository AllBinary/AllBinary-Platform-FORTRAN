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
! package org.allbinary.animation.transition.shake
module ShakeEvent_m
  use JR_m
  implicit none

  type, extends(JObject) :: ShakeEvent
  end type


contains

  function ShakeEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ShakeEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ShakeEvent)
      jresult => object
    end select
  end function

  recursive function ShakeEvent_jnew_0() result(this)
    class(ShakeEvent), pointer :: this
    allocate(this)
    this%jclass = 'ShakeEvent'
        continue
  end function
end module ShakeEvent_m

