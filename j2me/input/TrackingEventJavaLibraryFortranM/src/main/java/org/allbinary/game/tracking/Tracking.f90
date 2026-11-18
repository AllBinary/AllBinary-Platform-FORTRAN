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
! package org.allbinary.game.tracking
module Tracking_m
  use JR_m
  implicit none

  type, extends(JObject) :: Tracking
  contains
    procedure :: jm_paint_1 => Tracking_jm_paint_1
  end type


contains

  function Tracking_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Tracking), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Tracking)
      jresult => object
    end select
  end function

  recursive function Tracking_jnew_0() result(this)
    class(Tracking), pointer :: this
    allocate(this)
    this%jclass = 'Tracking'
        continue
  end function

  recursive subroutine Tracking_jm_paint_1(this, j_graphics)
    class(Tracking), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module Tracking_m

