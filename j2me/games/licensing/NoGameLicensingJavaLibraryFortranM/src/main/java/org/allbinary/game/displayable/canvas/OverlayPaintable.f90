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
! package org.allbinary.game.displayable.canvas
module OverlayPaintable_m
  use JR_m
  use InitUpdatePaintable_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(InitUpdatePaintable) :: OverlayPaintable
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_update_0 => OverlayPaintable_jm_update_0
    procedure :: jm_paint_1 => OverlayPaintable_jm_paint_1
  end type


contains

  function OverlayPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OverlayPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OverlayPaintable)
      jresult => object
    end select
  end function

  recursive function OverlayPaintable_jnew_0() result(this)
    class(OverlayPaintable), pointer :: this
    allocate(this)
    this%jclass = 'OverlayPaintable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive subroutine OverlayPaintable_jm_update_0(this)
    class(OverlayPaintable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            continue
  end subroutine

  recursive subroutine OverlayPaintable_jm_paint_1(this, j_graphics)
    class(OverlayPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module OverlayPaintable_m

function OverlayPaintable_jnew_0_jext() result(this)
  use OverlayPaintable_m, only: JObject, OverlayPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OverlayPaintable_jnew_0()
end function

