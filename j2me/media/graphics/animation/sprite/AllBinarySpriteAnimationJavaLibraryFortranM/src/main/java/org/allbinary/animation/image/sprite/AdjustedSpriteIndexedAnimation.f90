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
module AdjustedSpriteIndexedAnimation_m
  use JR_m
  use AnimationBehavior_m
  use BasicColor_m
  use SpriteIndexedAnimation_m
  implicit none

  type, extends(SpriteIndexedAnimation) :: AdjustedSpriteIndexedAnimation
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
  contains
    procedure :: jm_paintFrame_4 => AdjustedSpriteIndexedAnimation_jm_paintFrame_4
    procedure :: jm_paintXY_3 => AdjustedSpriteIndexedAnimation_jm_paintXY_3
    procedure :: jm_paint_1 => AdjustedSpriteIndexedAnimation_jm_paint_1
  end type


contains

  function AdjustedSpriteIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AdjustedSpriteIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AdjustedSpriteIndexedAnimation)
      jresult => object
    end select
  end function

  recursive function AdjustedSpriteIndexedAnimation_jnew_6(j_sprite, j_image, j_basicColorArray, j_dx, j_dy, j_animationBehavior) result(this)
    class(Sprite), target, optional :: j_sprite
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(AdjustedSpriteIndexedAnimation), pointer :: this
    allocate(this)
    this%jclass = 'AdjustedSpriteIndexedAnimation'
    
    
        continue ! super()
        this%f_dx = j_dx
        this%f_dy = j_dy
  end function

  recursive subroutine AdjustedSpriteIndexedAnimation_jm_paintFrame_4(this, j_graphics, j_frame, j_x, j_y)
    class(AdjustedSpriteIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_frame
    integer(4), value :: j_x
    integer(4), value :: j_y
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFrame_1(j_frame)
        call this%f_sprite%jm_setPosition_2((j_x + this%f_dx), (j_y + this%f_dy))
        call this%SpriteIndexedAnimation%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AdjustedSpriteIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(AdjustedSpriteIndexedAnimation), target :: this
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
        call this%SpriteIndexedAnimation%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AdjustedSpriteIndexedAnimation_jm_paint_1(this, j_graphics)
    class(AdjustedSpriteIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_setPosition_2(this%f_dx, this%f_dy)
        call this%SpriteIndexedAnimation%jm_paint_1(j_graphics)
  end subroutine
end module AdjustedSpriteIndexedAnimation_m

