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
! package org.allbinary.canvas
module FullScreenInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: FullScreenInterface
  end type


contains

  function FullScreenInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FullScreenInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FullScreenInterface)
      jresult => object
    end select
  end function

  function FullScreenInterface_jnew_0() result(this)
    class(FullScreenInterface), pointer :: this
    allocate(this)
    this%jclass = 'FullScreenInterface'
  end function
end module FullScreenInterface_m

