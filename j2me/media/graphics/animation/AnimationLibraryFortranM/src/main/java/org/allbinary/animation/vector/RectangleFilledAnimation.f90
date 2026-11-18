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
module RectangleFilledAnimation_m
  use JR_m
  use Animation_m
  use BasicColor_m
  use ColorCompositeInterface_m
  implicit none

  type, extends(Animation) :: RectangleFilledAnimation
    integer(4) :: f_widthP = 0
    integer(4) :: f_heightP = 0
  contains
    procedure :: jm_nextFrame_0 => RectangleFilledAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => RectangleFilledAnimation_jm_paintXY_3
    procedure :: jm_setWidth_1 => RectangleFilledAnimation_jm_setWidth_1
    procedure :: jm_setHeight_1 => RectangleFilledAnimation_jm_setHeight_1
    procedure :: jm_getBasicColorP_0 => RectangleFilledAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => RectangleFilledAnimation_jm_setBasicColorP_1
  end type

  ! RectangleFilledAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: RectangleFilledAnimation_jas_ColorCompositeInterface
    class(RectangleFilledAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => RectangleFilledAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function RectangleFilledAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleFilledAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleFilledAnimation)
      jresult => object
    end select
  end function

  function RectangleFilledAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(RectangleFilledAnimation), target :: object
    class(RectangleFilledAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RectangleFilledAnimation'
    jresult%jtarget => object
  end function

  recursive function RectangleFilledAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleFilledAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function RectangleFilledAnimation_jnew_3(j_width, j_height, j_basicColor) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(BasicColor), target, optional :: j_basicColor
    class(RectangleFilledAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RectangleFilledAnimation'
    
    
        this%f_widthP = j_width
        this%f_heightP = j_height
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine RectangleFilledAnimation_jm_nextFrame_0(this)
    class(RectangleFilledAnimation), target :: this
    continue
  end subroutine

  recursive subroutine RectangleFilledAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(RectangleFilledAnimation), target :: this
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
        call j_graphics%jm_fillRect_4(j_x, j_y, this%f_widthP, this%f_heightP)
  end subroutine

  recursive subroutine RectangleFilledAnimation_jm_setWidth_1(this, j_width)
    class(RectangleFilledAnimation), target :: this
    integer(4), value :: j_width
        this%f_widthP = j_width
  end subroutine

  recursive subroutine RectangleFilledAnimation_jm_setHeight_1(this, j_height)
    class(RectangleFilledAnimation), target :: this
    integer(4), value :: j_height
        this%f_heightP = j_height
  end subroutine

  recursive function RectangleFilledAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(RectangleFilledAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%Animation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine RectangleFilledAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(RectangleFilledAnimation), target :: this
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
end module RectangleFilledAnimation_m

