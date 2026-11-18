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
module CircleAnimation_m
  use JR_m
  use Animation_m
  use BasicColor_m
  use ColorCompositeInterface_m
  use AngleFactory_m
  implicit none

  type, extends(Animation) :: CircleAnimation
    integer(4) :: f_TOTAL_ANGLE = 0
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
  contains
    procedure :: jm_nextFrame_0 => CircleAnimation_jm_nextFrame_0
    procedure :: jm_paintXY_3 => CircleAnimation_jm_paintXY_3
    procedure :: jm_getBasicColorP_0 => CircleAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => CircleAnimation_jm_setBasicColorP_1
  end type

  ! CircleAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: CircleAnimation_jas_ColorCompositeInterface
    class(CircleAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => CircleAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function CircleAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CircleAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CircleAnimation)
      jresult => object
    end select
  end function

  function CircleAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(CircleAnimation), target :: object
    class(CircleAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CircleAnimation'
    jresult%jtarget => object
  end function

  recursive function CircleAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(CircleAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function CircleAnimation_jnew_3(j_width, j_height, j_basicColor) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(BasicColor), target, optional :: j_basicColor
    class(CircleAnimation), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CircleAnimation'
    jtemp1 => AngleFactory_jm_getInstance_0()
    this%f_TOTAL_ANGLE = jtemp1%f_TOTAL_ANGLE
    
    
        this%f_width = j_width
        this%f_height = j_height
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine CircleAnimation_jm_nextFrame_0(this)
    class(CircleAnimation), target :: this
    continue
  end subroutine

  recursive subroutine CircleAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(CircleAnimation), target :: this
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
        call j_graphics%jm_drawArc_6(j_x, j_y, this%f_width, this%f_height, 0, this%f_TOTAL_ANGLE)
  end subroutine

  recursive function CircleAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(CircleAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%Animation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine CircleAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(CircleAnimation), target :: this
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
end module CircleAnimation_m

