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
module LineAnimation_m
  use JR_m
  use Animation_m
  use BasicColor_m
  use ColorCompositeInterface_m
  use PositionInterface_m
  use NullUtil_m
  implicit none

  type, extends(Animation) :: LineAnimation
    integer(4), allocatable :: f_newLine(:,:)
    integer(4), allocatable :: f_tempLine(:,:)
    integer(4), allocatable :: f_line(:,:)
  contains
    procedure :: jm_init_2 => LineAnimation_jm_init_2
    procedure :: jm_setPosition_3 => LineAnimation_jm_setPosition_3
    procedure :: jm_paintXY_3 => LineAnimation_jm_paintXY_3
    procedure :: jm_nextFrame_0 => LineAnimation_jm_nextFrame_0
    procedure :: jm_getBasicColorP_0 => LineAnimation_jm_getBasicColorP_0
    procedure :: jm_setBasicColorP_1 => LineAnimation_jm_setBasicColorP_1
  end type

  ! LineAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: LineAnimation_jas_ColorCompositeInterface
    class(LineAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => LineAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type

  ! LineAnimation used as a PositionInterface
  type, extends(PositionInterface) :: LineAnimation_jas_PositionInterface
    class(LineAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_setPosition_3 => LineAnimation_jas_PositionInterface_jm_setPosition_3
  end type


contains

  function LineAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LineAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LineAnimation)
      jresult => object
    end select
  end function

  function LineAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(LineAnimation), target :: object
    class(LineAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LineAnimation'
    jresult%jtarget => object
  end function

  recursive function LineAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(LineAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  function LineAnimation_jas_PositionInterface_jnew(object) result(jresult)
    class(LineAnimation), target :: object
    class(LineAnimation_jas_PositionInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'LineAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine LineAnimation_jas_PositionInterface_jm_setPosition_3(this, j_x, j_y, j_z)
    class(LineAnimation_jas_PositionInterface), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    call this%jtarget%jm_setPosition_3(j_x, j_y, j_z)
  end subroutine

  recursive function LineAnimation_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(LineAnimation), pointer :: this
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'LineAnimation'
    this%f_newLine = JR_newIntArray2(2, 2)
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_tempLine = jtemp1%f_NULL_INT_ARRAY_ARRAY
    this%f_line = JR_newIntArray2(2, 2)
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive subroutine LineAnimation_jm_init_2(this, j_x, j_y)
    class(LineAnimation), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
        this%f_newLine((0) + 1, (0) + 1) = j_x
        this%f_newLine((0) + 1, (1) + 1) = j_y
        this%f_newLine((1) + 1, (0) + 1) = j_x
        this%f_newLine((1) + 1, (1) + 1) = j_y
        this%f_tempLine = this%f_line
        this%f_line = this%f_newLine
        this%f_newLine = this%f_tempLine
  end subroutine

  recursive subroutine LineAnimation_jm_setPosition_3(this, j_x, j_y, j_z)
    class(LineAnimation), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        this%f_newLine((0) + 1, (0) + 1) = this%f_line((1) + 1, (0) + 1)
        this%f_newLine((0) + 1, (1) + 1) = this%f_line((1) + 1, (1) + 1)
        this%f_newLine((1) + 1, (0) + 1) = j_x
        this%f_newLine((1) + 1, (1) + 1) = j_y
        this%f_tempLine = this%f_line
        this%f_line = this%f_newLine
        this%f_newLine = this%f_tempLine
  end subroutine

  recursive subroutine LineAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(LineAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), allocatable :: j_currentLine(:,:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_currentLine = this%f_line
        call this%f_basicSetColorUtil%jm_setBasicColorP3_3(j_graphics, this%jm_getBasicColorP_0(), this%jm_getColor_0())
        call j_graphics%jm_drawLine_4(j_currentLine((0) + 1, (0) + 1), j_currentLine((0) + 1, (1) + 1), j_currentLine((1) + 1, (0) + 1), j_currentLine((1) + 1, (1) + 1))
  end subroutine

  recursive subroutine LineAnimation_jm_nextFrame_0(this)
    class(LineAnimation), target :: this
    continue
  end subroutine

  recursive function LineAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(LineAnimation), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%Animation%jm_getBasicColorP_0()
        return
  end function

  recursive subroutine LineAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(LineAnimation), target :: this
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
end module LineAnimation_m

