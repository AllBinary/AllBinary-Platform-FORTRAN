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
! package org.allbinary.graphics.displayable.screen
module ScreenRepaintUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScreenRepaintUtil
  end type


contains

  function ScreenRepaintUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScreenRepaintUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScreenRepaintUtil)
      jresult => object
    end select
  end function

  function ScreenRepaintUtil_jnew_0() result(this)
    class(ScreenRepaintUtil), pointer :: this
    allocate(this)
    this%jclass = 'ScreenRepaintUtil'
  end function

  recursive subroutine ScreenRepaintUtil_jm_repaint_1(j_displayable)
    class(Displayable), target, optional :: j_displayable
    continue
  end subroutine
end module ScreenRepaintUtil_m

