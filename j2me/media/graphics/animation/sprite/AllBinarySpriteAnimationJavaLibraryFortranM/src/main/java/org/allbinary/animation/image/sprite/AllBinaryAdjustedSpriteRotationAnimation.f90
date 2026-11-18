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
! package org.allbinary.animation.image.sprite
module AllBinaryAdjustedSpriteRotationAnimation_m
  use JR_m
  use AnimationBehavior_m
  use AllBinarySpriteRotationAnimation_m
  implicit none

  type, extends(AllBinarySpriteRotationAnimation) :: AllBinaryAdjustedSpriteRotationAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_paintXY_3 => AllBinaryAdjustedSpriteRotationAnimation_jm_paintXY_3
  end type


contains

  function AllBinaryAdjustedSpriteRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryAdjustedSpriteRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryAdjustedSpriteRotationAnimation)
      jresult => object
    end select
  end function

  recursive function AllBinaryAdjustedSpriteRotationAnimation_jnew_5(j_sprite, j_image, j_dx, j_dy, j_animationBehavior) result(this)
    class(Sprite), target, optional :: j_sprite
    class(Image), target, optional :: j_image
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AllBinaryAdjustedSpriteRotationAnimation), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryAdjustedSpriteRotationAnimation'
    
    
        continue ! super()
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine AllBinaryAdjustedSpriteRotationAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AllBinaryAdjustedSpriteRotationAnimation), target :: this
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
        call this%f_sprite%jm_setPosition_2((j_x + this%f_dx), (j_y + this%f_dy))
        call this%jm_paint_1(j_graphics)
  end subroutine
end module AllBinaryAdjustedSpriteRotationAnimation_m

