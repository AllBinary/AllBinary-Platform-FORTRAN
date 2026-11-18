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
module AdjustedImageBaseRotationAnimation_m
  use JR_m
  use AnimationBehavior_m
  use AngleInfo_m
  use ImageBaseRotationAnimation_m
  implicit none

  type, extends(ImageBaseRotationAnimation) :: AdjustedImageBaseRotationAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_init_2 => AdjustedImageBaseRotationAnimation_jm_init_2
    procedure :: jm_paintXY_3 => AdjustedImageBaseRotationAnimation_jm_paintXY_3
  end type


contains

  function AdjustedImageBaseRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedImageBaseRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedImageBaseRotationAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedImageBaseRotationAnimation_jnew_6(j_image, j_angleInfo, j_totalAngle, j_dx, j_dy, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedImageBaseRotationAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AdjustedImageBaseRotationAnimation'
    
    
        continue ! super()
        call this%jm_init_2(j_dx, j_dy)
  end function

  recursive subroutine AdjustedImageBaseRotationAnimation_jm_init_2(this, j_dx, j_dy)
    class(AdjustedImageBaseRotationAnimation), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_dx = j_dx
        this%f_dy = j_dy
  end subroutine

  recursive subroutine AdjustedImageBaseRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedImageBaseRotationAnimation), target :: this
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
        call this%ImageBaseRotationAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine
end module AdjustedImageBaseRotationAnimation_m

