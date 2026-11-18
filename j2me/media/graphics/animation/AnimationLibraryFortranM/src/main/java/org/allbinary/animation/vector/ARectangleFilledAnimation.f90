! Generated Code Do Not Modify
! package org.allbinary.animation.vector
module ARectangleFilledAnimation_m
  use JR_m
  use BasicColorFactory_m
  use RectangleFilledAnimation_m
  implicit none

  type, extends(RectangleFilledAnimation) :: ARectangleFilledAnimation
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
  contains
    procedure :: jm_nextFrame_0 => ARectangleFilledAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => ARectangleFilledAnimation_jm_paintXY_3
  end type


contains

  function ARectangleFilledAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ARectangleFilledAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ARectangleFilledAnimation)
      jresult => object
    end select
  end function

  recursive function ARectangleFilledAnimation_jnew_0() result(this)
    class(ARectangleFilledAnimation), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ARectangleFilledAnimation'
    
    
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine ARectangleFilledAnimation_jm_nextFrame_0(this)
    class(ARectangleFilledAnimation), target :: this
    continue
  end subroutine

  recursive subroutine ARectangleFilledAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ARectangleFilledAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RectangleFilledAnimation%jm_paintXY_3(j_graphics, this%f_x, this%f_y)
  end subroutine
end module ARectangleFilledAnimation_m

function ARectangleFilledAnimation_jnew_0_jext() result(this)
  use ARectangleFilledAnimation_m, only: JObject, ARectangleFilledAnimation_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ARectangleFilledAnimation_jnew_0()
end function

