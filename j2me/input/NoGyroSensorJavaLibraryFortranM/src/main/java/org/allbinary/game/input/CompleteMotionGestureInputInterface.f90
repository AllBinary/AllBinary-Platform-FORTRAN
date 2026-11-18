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
! package org.allbinary.game.input
module CompleteMotionGestureInputInterface_m
  use JR_m
  use NamedInterface_m
  implicit none

  type, extends(NamedInterface) :: CompleteMotionGestureInputInterface
  end type


contains

  function CompleteMotionGestureInputInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompleteMotionGestureInputInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompleteMotionGestureInputInterface)
      jresult => object
    end select
  end function

  function CompleteMotionGestureInputInterface_jnew_0() result(this)
    class(CompleteMotionGestureInputInterface), pointer :: this
    allocate(this)
    this%jclass = 'CompleteMotionGestureInputInterface'
  end function
end module CompleteMotionGestureInputInterface_m

