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
! package org.allbinary.animation.image
module AdjustedImageArrayAnimation_m
  use JR_m
  use AnimationBehavior_m
  use ImageArrayAnimation_m
  implicit none

  type, extends(ImageArrayAnimation) :: AdjustedImageArrayAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_init_2 => AdjustedImageArrayAnimation_jm_init_2
    procedure :: jm_paintXY_3 => AdjustedImageArrayAnimation_jm_paintXY_3
    procedure :: jm_setDx_1 => AdjustedImageArrayAnimation_jm_setDx_1
    procedure :: jm_getDx_0 => AdjustedImageArrayAnimation_jm_getDx_0
    procedure :: jm_setDy_1 => AdjustedImageArrayAnimation_jm_setDy_1
    procedure :: jm_getDy_0 => AdjustedImageArrayAnimation_jm_getDy_0
  end type


contains

  function AdjustedImageArrayAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedImageArrayAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedImageArrayAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedImageArrayAnimation_jnew_4(j_imageArray, j_dx, j_dy, j_animationBehavior) result(this)
    type(JRef) :: j_imageArray(:)
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageArrayAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdjustedImageArrayAnimation'
    
    
        continue ! super()
        call this%jm_init_2(j_dx, j_dy)
  end function

  recursive subroutine AdjustedImageArrayAnimation_jm_init_2(this, j_dx, j_dy)
    class(AdjustedImageArrayAnimation), target :: this
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

  recursive subroutine AdjustedImageArrayAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedImageArrayAnimation), target :: this
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
        call this%ImageArrayAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine

  recursive subroutine AdjustedImageArrayAnimation_jm_setDx_1(this, j_dx)
    class(AdjustedImageArrayAnimation), target :: this
    integer(4), value :: j_dx
        this%f_dx = j_dx
  end subroutine

  recursive function AdjustedImageArrayAnimation_jm_getDx_0(this) result(jresult)
    class(AdjustedImageArrayAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dx
        return
  end function

  recursive subroutine AdjustedImageArrayAnimation_jm_setDy_1(this, j_dy)
    class(AdjustedImageArrayAnimation), target :: this
    integer(4), value :: j_dy
        this%f_dy = j_dy
  end subroutine

  recursive function AdjustedImageArrayAnimation_jm_getDy_0(this) result(jresult)
    class(AdjustedImageArrayAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_dy
        return
  end function
end module AdjustedImageArrayAnimation_m

