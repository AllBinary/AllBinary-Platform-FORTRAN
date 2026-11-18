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
! package org.allbinary.game.layer
module SWTBlackPaintable_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: SWTBlackPaintable
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(BasicColor), pointer :: f_BLACK => null()
  contains
    procedure :: jm_paint_1 => SWTBlackPaintable_jm_paint_1
  end type


contains

  function SWTBlackPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SWTBlackPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SWTBlackPaintable)
      jresult => object
    end select
  end function

  function SWTBlackPaintable_jnew_0() result(this)
    class(SWTBlackPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'SWTBlackPaintable'
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_BLACK => jtemp1%f_BLACK
  end function

  recursive subroutine SWTBlackPaintable_jm_paint_1(this, j_graphics)
    class(SWTBlackPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_BLACK)
  end subroutine
end module SWTBlackPaintable_m

function SWTBlackPaintable_jnew_0_jext() result(this)
  use SWTBlackPaintable_m, only: JObject, SWTBlackPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => SWTBlackPaintable_jnew_0()
end function

