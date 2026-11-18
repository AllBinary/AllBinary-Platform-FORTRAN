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
module RectangleAdjustedAnimation_m
  use JR_m
  use Animation_m
  use BasicColor_m
  use ColorCompositeInterface_m
  implicit none

  type, extends(Animation) :: RectangleAdjustedAnimation
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
    integer(4) :: f_offsetX = 0
    integer(4) :: f_offsetY = 0
  contains
    procedure :: jm_nextFrame_0 => RectangleAdjustedAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => RectangleAdjustedAnimation_jm_paintXY_3
    procedure :: jm_setWidth_1 => RectangleAdjustedAnimation_jm_setWidth_1
    procedure :: jm_setHeight_1 => RectangleAdjustedAnimation_jm_setHeight_1
    procedure :: jm_setOffsetX_1 => RectangleAdjustedAnimation_jm_setOffsetX_1
    procedure :: jm_setOffsetY_1 => RectangleAdjustedAnimation_jm_setOffsetY_1
    procedure :: jm_getBasicColorP_0 => RectangleAdjustedAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => RectangleAdjustedAnimation_jm_setBasicColorP_1
  end type

  ! RectangleAdjustedAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: RectangleAdjustedAnimation_jas_ColorCompositeInterface
    class(RectangleAdjustedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => RectangleAdjustedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function RectangleAdjustedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleAdjustedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleAdjustedAnimation)
      jresult => object
    end select
  end function

  function RectangleAdjustedAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(RectangleAdjustedAnimation), target :: object
    class(RectangleAdjustedAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RectangleAdjustedAnimation'
    jresult%jtarget => object
  end function

  recursive function RectangleAdjustedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleAdjustedAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function RectangleAdjustedAnimation_jnew_5(j_width, j_height, j_offsetX, j_offsetY, j_basicColor) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_offsetX
    integer(4), value :: j_offsetY
    class(BasicColor), target, optional :: j_basicColor
    class(RectangleAdjustedAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RectangleAdjustedAnimation'
    
    
    
    
        this%f_width = j_width
        this%f_height = j_height
        this%f_offsetX = j_offsetX
        this%f_offsetY = j_offsetY
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine RectangleAdjustedAnimation_jm_nextFrame_0(this)
    class(RectangleAdjustedAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RectangleAdjustedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(RectangleAdjustedAnimation), target :: this
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
        call j_graphics%jm_drawRect_4((j_x + this%f_offsetX), (j_y + this%f_offsetY), this%f_width, this%f_height)
  end subroutine

  recursive subroutine RectangleAdjustedAnimation_jm_setWidth_1(this, j_width)
    class(RectangleAdjustedAnimation), target :: this
    integer(4), value :: j_width
        this%f_width = j_width
  end subroutine

  recursive subroutine RectangleAdjustedAnimation_jm_setHeight_1(this, j_height)
    class(RectangleAdjustedAnimation), target :: this
    integer(4), value :: j_height
        this%f_height = j_height
  end subroutine

  recursive subroutine RectangleAdjustedAnimation_jm_setOffsetX_1(this, j_offsetX)
    class(RectangleAdjustedAnimation), target :: this
    integer(4), value :: j_offsetX
        this%f_offsetX = j_offsetX
  end subroutine

  recursive subroutine RectangleAdjustedAnimation_jm_setOffsetY_1(this, j_offsetY)
    class(RectangleAdjustedAnimation), target :: this
    integer(4), value :: j_offsetY
        this%f_offsetY = j_offsetY
  end subroutine

  recursive function RectangleAdjustedAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleAdjustedAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%Animation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine RectangleAdjustedAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(RectangleAdjustedAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%Animation%jm_setBasicColorP_1(j_basicColor)
  end subroutine
end module RectangleAdjustedAnimation_m

