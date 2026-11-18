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
! package org.allbinary.animation
module AdjustedVectorAnimation_m
  use JR_m
  use BasicColor_m
  use VectorAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(VectorAnimation) :: AdjustedVectorAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_paintXY_3 => AdjustedVectorAnimation_jm_paintXY_3
  end type


contains

  function AdjustedVectorAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedVectorAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedVectorAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedVectorAnimation_jnew_5(j_currentPoints, j_basicColor, j_dx, j_dy, j_animationBehavior) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedVectorAnimation), pointer :: this
    allocate(this)
    this%jclass = 'AdjustedVectorAnimation'
    
    
        continue ! super()
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine AdjustedVectorAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedVectorAnimation), target :: this
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
        call this%VectorAnimation%jm_paintXY_3(j_graphics, (j_x + this%f_dx), (j_y + this%f_dy))
  end subroutine
end module AdjustedVectorAnimation_m

