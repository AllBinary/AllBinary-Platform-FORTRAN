! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.animation.text
module AdjustCustomTextAnimation_m
  use JR_m
  use AnimationBehavior_m
  use CustomTextAnimation_m
  implicit none

  type, extends(CustomTextAnimation) :: AdjustCustomTextAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_getDx_0 => AdjustCustomTextAnimation_jm_getDx_0
    procedure :: jm_setDx_1 => AdjustCustomTextAnimation_jm_setDx_1
    procedure :: jm_getDy_0 => AdjustCustomTextAnimation_jm_getDy_0
    procedure :: jm_setDy_1 => AdjustCustomTextAnimation_jm_setDy_1
    procedure :: jm_paintXY_3 => AdjustCustomTextAnimation_jm_paintXY_3
  end type


contains

  function AdjustCustomTextAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustCustomTextAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustCustomTextAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustCustomTextAnimation_jnew_5(j_text, j_fontSize, j_dx, j_dy, j_animationBehavior) result(this)
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_fontSize
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustCustomTextAnimation), pointer :: this
    allocate(this)
    this%jclass = 'AdjustCustomTextAnimation'
    
    
        continue ! super()
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive function AdjustCustomTextAnimation_jm_getDx_0(this) result(jresult)
    class(AdjustCustomTextAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine AdjustCustomTextAnimation_jm_setDx_1(this, j_dx)
    class(AdjustCustomTextAnimation), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function AdjustCustomTextAnimation_jm_getDy_0(this) result(jresult)
    class(AdjustCustomTextAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function

  recursive subroutine AdjustCustomTextAnimation_jm_setDy_1(this, j_dy)
    class(AdjustCustomTextAnimation), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive subroutine AdjustCustomTextAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustCustomTextAnimation), target :: this
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
        call this%CustomTextAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine
end module AdjustCustomTextAnimation_m

