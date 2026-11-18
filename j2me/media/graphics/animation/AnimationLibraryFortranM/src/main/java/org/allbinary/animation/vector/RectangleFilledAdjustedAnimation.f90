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
! package org.allbinary.animation.vector
module RectangleFilledAdjustedAnimation_m
  use JR_m
  use BasicColor_m
  use ColorCompositeInterface_m
  use RectangleFilledAnimation_m
  implicit none

  type, extends(RectangleFilledAnimation) :: RectangleFilledAdjustedAnimation
    integer(4) :: f_offsetX = 0
    integer(4) :: f_offsetY = 0
  contains
    procedure :: jm_nextFrame_0 => RectangleFilledAdjustedAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => RectangleFilledAdjustedAnimation_jm_paintXY_3
    procedure :: jm_setOffsetX_1 => RectangleFilledAdjustedAnimation_jm_setOffsetX_1
    procedure :: jm_setOffsetY_1 => RectangleFilledAdjustedAnimation_jm_setOffsetY_1
    procedure :: jm_getBasicColorP_0 => RectangleFilledAdjustedAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => RectangleFilledAdjustedAnimation_jm_setBasicColorP_1
  end type

  ! RectangleFilledAdjustedAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface
    class(RectangleFilledAdjustedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function RectangleFilledAdjustedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleFilledAdjustedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleFilledAdjustedAnimation)
      jresult => object
    end select
  end function

  function RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(RectangleFilledAdjustedAnimation), target :: object
    class(RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RectangleFilledAdjustedAnimation'
    jresult%jtarget => object
  end function

  recursive function RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleFilledAdjustedAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function RectangleFilledAdjustedAnimation_jnew_5(j_width, j_height, j_offsetX, j_offsetY, j_basicColor) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_offsetX
    integer(4), value :: j_offsetY
    class(BasicColor), target, optional :: j_basicColor
    class(RectangleFilledAdjustedAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RectangleFilledAdjustedAnimation'
    
    
        continue ! super()
        this%f_offsetX = j_offsetX
        this%f_offsetY = j_offsetY
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine RectangleFilledAdjustedAnimation_jm_nextFrame_0(this)
    class(RectangleFilledAdjustedAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RectangleFilledAdjustedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(RectangleFilledAdjustedAnimation), target :: this
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
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%jm_getBasicColorP_0(), this%jm_getColor_0())
        call this%RectangleFilledAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_offsetX), (j_y + this%f_offsetY))
  end subroutine

  recursive subroutine RectangleFilledAdjustedAnimation_jm_setOffsetX_1(this, j_offsetX)
    class(RectangleFilledAdjustedAnimation), target :: this
    integer(4), value :: j_offsetX
        this%f_offsetX = j_offsetX
  end subroutine

  recursive subroutine RectangleFilledAdjustedAnimation_jm_setOffsetY_1(this, j_offsetY)
    class(RectangleFilledAdjustedAnimation), target :: this
    integer(4), value :: j_offsetY
        this%f_offsetY = j_offsetY
  end subroutine

  recursive function RectangleFilledAdjustedAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleFilledAdjustedAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%RectangleFilledAnimation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine RectangleFilledAdjustedAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(RectangleFilledAdjustedAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%RectangleFilledAnimation%jm_setBasicColorP_1(j_basicColor)
  end subroutine
end module RectangleFilledAdjustedAnimation_m

