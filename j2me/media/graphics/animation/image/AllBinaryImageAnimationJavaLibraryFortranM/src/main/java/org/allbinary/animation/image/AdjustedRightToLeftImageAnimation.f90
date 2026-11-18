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
module AdjustedRightToLeftImageAnimation_m
  use JR_m
  use AnimationBehavior_m
  use RightToLeftImageAnimation_m
  implicit none

  type, extends(RightToLeftImageAnimation) :: AdjustedRightToLeftImageAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_init_2 => AdjustedRightToLeftImageAnimation_jm_init_2
    procedure :: jm_paintXY_3 => AdjustedRightToLeftImageAnimation_jm_paintXY_3
  end type


contains

  function AdjustedRightToLeftImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedRightToLeftImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedRightToLeftImageAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedRightToLeftImageAnimation_jnew_4(j_image, j_dx, j_dy, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedRightToLeftImageAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdjustedRightToLeftImageAnimation'
    
    
        continue ! super()
        call this%jm_init_2(j_dx, j_dy)
  end function

  recursive subroutine AdjustedRightToLeftImageAnimation_jm_init_2(this, j_dx, j_dy)
    class(AdjustedRightToLeftImageAnimation), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_dx = j_dx
        this%f_dy = j_dy
  end subroutine

  recursive subroutine AdjustedRightToLeftImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedRightToLeftImageAnimation), target :: this
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
        call this%RightToLeftImageAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine
end module AdjustedRightToLeftImageAnimation_m

