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
! package org.allbinary.animation.image
module AdjustedImageAnimation_m
  use JR_m
  use AnimationBehavior_m
  use ImageAnimation_m
  implicit none

  type, extends(ImageAnimation) :: AdjustedImageAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_init_2 => AdjustedImageAnimation_jm_init_2
    procedure :: jm_paintXY_3 => AdjustedImageAnimation_jm_paintXY_3
    procedure :: jm_setDx_1 => AdjustedImageAnimation_jm_setDx_1
    procedure :: jm_getDx_0 => AdjustedImageAnimation_jm_getDx_0
    procedure :: jm_setDy_1 => AdjustedImageAnimation_jm_setDy_1
    procedure :: jm_getDy_0 => AdjustedImageAnimation_jm_getDy_0
  end type


contains

  function AdjustedImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedImageAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedImageAnimation_jnew_4(j_image, j_dx, j_dy, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdjustedImageAnimation'
    
    
        continue ! super()
        call this%jm_init_2(j_dx, j_dy)
  end function

  recursive subroutine AdjustedImageAnimation_jm_init_2(this, j_dx, j_dy)
    class(AdjustedImageAnimation), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setDx_1(j_dx)
        call this%jm_setDy_1(j_dy)
  end subroutine

  recursive subroutine AdjustedImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedImageAnimation), target :: this
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
        call this%ImageAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine

  recursive subroutine AdjustedImageAnimation_jm_setDx_1(this, j_dx)
    class(AdjustedImageAnimation), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function AdjustedImageAnimation_jm_getDx_0(this) result(jresult)
    class(AdjustedImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine AdjustedImageAnimation_jm_setDy_1(this, j_dy)
    class(AdjustedImageAnimation), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive function AdjustedImageAnimation_jm_getDy_0(this) result(jresult)
    class(AdjustedImageAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function
end module AdjustedImageAnimation_m

