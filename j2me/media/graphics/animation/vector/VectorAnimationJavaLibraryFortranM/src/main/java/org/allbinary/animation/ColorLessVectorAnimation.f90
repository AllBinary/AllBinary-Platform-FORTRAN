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
module ColorLessVectorAnimation_m
  use JR_m
  use BasicColorFactory_m
  use VectorAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(VectorAnimation) :: ColorLessVectorAnimation
  contains
    procedure :: jm_paintXY_3 => ColorLessVectorAnimation_jm_paintXY_3
  end type


contains

  function ColorLessVectorAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorLessVectorAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorLessVectorAnimation)
      jresult => object
    end select
  end function

  recursive function ColorLessVectorAnimation_jnew_2(j_currentPoints, j_animationBehavior) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ColorLessVectorAnimation), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ColorLessVectorAnimation'
        jtemp1 => BasicColorFactory_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine ColorLessVectorAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ColorLessVectorAnimation), target :: this
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
        call this%jm_paintVectors_3(j_graphics, j_x, j_y)
  end subroutine
end module ColorLessVectorAnimation_m

