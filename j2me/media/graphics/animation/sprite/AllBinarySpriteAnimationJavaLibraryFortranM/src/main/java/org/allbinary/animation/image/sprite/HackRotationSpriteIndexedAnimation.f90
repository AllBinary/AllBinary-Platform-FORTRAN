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
module HackRotationSpriteIndexedAnimation_m
  use JR_m
  use AnimationBehavior_m
  use RotationAnimation_m
  use PrimitiveIntUtil_m
  use AngleInfo_m
  use CircularIndexUtil_m
  implicit none

  type, extends(RotationAnimation) :: HackRotationSpriteIndexedAnimation
    class(Sprite), pointer :: f_sprite => null()
    class(Image), pointer :: f_image => null()
  contains
    procedure :: jm_getAnimationSize_0 => HackRotationSpriteIndexedAnimation_jm_getAnimationSize_0
    procedure :: jm_paintFrame_4 => HackRotationSpriteIndexedAnimation_jm_paintFrame_4
    procedure :: jm_paintXY_3 => HackRotationSpriteIndexedAnimation_jm_paintXY_3
    procedure :: jm_paint_1 => HackRotationSpriteIndexedAnimation_jm_paint_1
    procedure :: jm_nextRotation_0 => HackRotationSpriteIndexedAnimation_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => HackRotationSpriteIndexedAnimation_jm_previousRotation_0
    procedure :: jm_getSize_0 => HackRotationSpriteIndexedAnimation_jm_getSize_0
    procedure :: jm_setFrame_1 => HackRotationSpriteIndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => HackRotationSpriteIndexedAnimation_jm_getFrame_0
    procedure :: jm_setSequence_1 => HackRotationSpriteIndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => HackRotationSpriteIndexedAnimation_jm_getSequence_0
  end type


contains

  function HackRotationSpriteIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HackRotationSpriteIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HackRotationSpriteIndexedAnimation)
      jresult => object
    end select
  end function

  recursive function HackRotationSpriteIndexedAnimation_jnew_4(j_sprite, j_image, j_angleInfo, j_animationBehavior) result(this)
    class(Sprite), target, optional :: j_sprite
    class(Image), target, optional :: j_image
    class(AngleInfo), target, optional :: j_angleInfo
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(HackRotationSpriteIndexedAnimation), pointer :: this
    class(AngleIncrementInfo), pointer :: jtemp1
    allocate(this)
    this%jclass = 'HackRotationSpriteIndexedAnimation'
    
    
        jtemp1 => j_angleInfo%jm_getAngleIncrementInfo_0()
        continue ! super()
        this%f_sprite => j_sprite
        this%f_image => j_image
  end function

  recursive function HackRotationSpriteIndexedAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_paintFrame_4(this, j_g, j_frame, j_x, j_y)
    class(HackRotationSpriteIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_g
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
        call this%jm_paintXY_3(j_g, j_x, j_y)
  end subroutine

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(HackRotationSpriteIndexedAnimation), target :: this
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
        call this%f_sprite%jm_setPosition_2(j_x, j_y)
        call this%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_paint_1(this, j_g)
    class(HackRotationSpriteIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_g
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_paint_1(j_g)
  end subroutine

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_nextRotation_0(this)
    class(HackRotationSpriteIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_nextFrame_0()
  end subroutine

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_previousRotation_0(this)
    class(HackRotationSpriteIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_prevFrame_0()
  end subroutine

  recursive function HackRotationSpriteIndexedAnimation_jm_getSize_0(this) result(jresult)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_sprite%jm_getRawFrameCount_0()
        return
  end function

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_setFrame_1(this, j_index)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_setFrame_1(j_index)
  end subroutine

  recursive function HackRotationSpriteIndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_sprite%jm_getFrame_0()
        return
  end function

  recursive subroutine HackRotationSpriteIndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function HackRotationSpriteIndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(HackRotationSpriteIndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function
end module HackRotationSpriteIndexedAnimation_m

