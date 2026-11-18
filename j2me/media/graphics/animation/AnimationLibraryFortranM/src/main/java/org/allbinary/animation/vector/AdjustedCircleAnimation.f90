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
module AdjustedCircleAnimation_m
  use JR_m
  use AndroidUtil_m
  use BasicColor_m
  use CircleAnimation_m
  implicit none

  type, extends(CircleAnimation) :: AdjustedCircleAnimation
    integer(4) :: f_xAdjustment = 0
    integer(4) :: f_yAdjustment = 0
  contains
    procedure :: jm_initXY_2 => AdjustedCircleAnimation_jm_initXY_2
    procedure :: jm_init_1 => AdjustedCircleAnimation_jm_init_1
    procedure :: jm_paintXY_3 => AdjustedCircleAnimation_jm_paintXY_3
  end type


contains

  function AdjustedCircleAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedCircleAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedCircleAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedCircleAnimation_jnew_3(j_width, j_height, j_basicColor) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(BasicColor), target, optional :: j_basicColor
    class(AdjustedCircleAnimation), pointer :: this
    allocate(this)
    this%jclass = 'AdjustedCircleAnimation'
    
    
        continue ! super()
  end function

  recursive function AdjustedCircleAnimation_jm_createAnimation_5(j_width, j_height, j_xAdjustment, j_yAdjustment, j_basicColor) result(jresult)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_xAdjustment
    integer(4), value :: j_yAdjustment
    class(BasicColor), target, optional :: j_basicColor
    class(AdjustedCircleAnimation), pointer :: jresult
    class(AdjustedCircleAnimation), pointer :: j_adjustedCircleAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_adjustedCircleAnimation => AdjustedCircleAnimation_jnew_3(j_width, j_height, j_basicColor)
        call j_adjustedCircleAnimation%jm_initXY_2(j_xAdjustment, j_yAdjustment)
        jresult => j_adjustedCircleAnimation
        return
  end function

  recursive function AdjustedCircleAnimation_jm_createW_4(j_width, j_height, j_innerWidth, j_basicColor) result(jresult)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_innerWidth
    class(BasicColor), target, optional :: j_basicColor
    class(AdjustedCircleAnimation), pointer :: jresult
    class(AdjustedCircleAnimation), pointer :: j_adjustedCircleAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_adjustedCircleAnimation => AdjustedCircleAnimation_jnew_3(j_width, j_height, j_basicColor)
        call j_adjustedCircleAnimation%jm_init_1(j_innerWidth)
        jresult => j_adjustedCircleAnimation
        return
  end function

  recursive subroutine AdjustedCircleAnimation_jm_initXY_2(this, j_xAdjustment, j_yAdjustment)
    class(AdjustedCircleAnimation), target :: this
    integer(4), value :: j_xAdjustment
    integer(4), value :: j_yAdjustment
        this%f_xAdjustment = j_xAdjustment
        this%f_yAdjustment = j_yAdjustment
  end subroutine

  recursive subroutine AdjustedCircleAnimation_jm_init_1(this, j_innerWidth)
    class(AdjustedCircleAnimation), target :: this
    integer(4), value :: j_innerWidth
    integer(4) :: j_widthPortion
        if (AndroidUtil_jm_isAndroid_0()) then
            j_widthPortion = ((((((j_innerWidth / 3)) * 10)) / 7))
            this%f_xAdjustment = (-(((shifta(this%f_width, iand(1, 31))) - j_widthPortion)))
            this%f_yAdjustment = this%f_xAdjustment
        else
            this%f_xAdjustment = (-(((shifta(this%f_width, iand(1, 31))) - j_innerWidth)))
            this%f_yAdjustment = this%f_xAdjustment
        end if
  end subroutine

  recursive subroutine AdjustedCircleAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedCircleAnimation), target :: this
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
        call j_graphics%jm_drawArc_6((j_x + this%f_xAdjustment), (j_y + this%f_yAdjustment), this%f_width, this%f_height, 0, this%f_TOTAL_ANGLE)
  end subroutine
end module AdjustedCircleAnimation_m

