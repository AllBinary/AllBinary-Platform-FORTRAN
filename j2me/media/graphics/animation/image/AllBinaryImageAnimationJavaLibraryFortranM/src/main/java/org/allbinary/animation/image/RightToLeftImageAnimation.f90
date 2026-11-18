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
module RightToLeftImageAnimation_m
  use JR_m
  use AnimationBehavior_m
  use Anchor_m
  use PrimitiveIntUtil_m
  use ImageSegmentAnimation_m
  implicit none

  type, extends(ImageSegmentAnimation) :: RightToLeftImageAnimation
    integer(4) :: f_startWidth = 0
    integer(4) :: f_currentWidth = 0
  contains
    procedure :: jm_nextFrame_0 => RightToLeftImageAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => RightToLeftImageAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => RightToLeftImageAnimation_jm_setFrame_1
    procedure :: jm_update_0 => RightToLeftImageAnimation_jm_update_0
    procedure :: jm_paintXY_3 => RightToLeftImageAnimation_jm_paintXY_3
  end type


contains

  function RightToLeftImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RightToLeftImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RightToLeftImageAnimation)
      jresult => object
    end select
  end function

  recursive function RightToLeftImageAnimation_jnew_2(j_image, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(RightToLeftImageAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RightToLeftImageAnimation'
    
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        call this%jm_setFrame_1((this%jm_getSize_0() - 1))
  end function

  recursive subroutine RightToLeftImageAnimation_jm_nextFrame_0(this)
    class(RightToLeftImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ImageSegmentAnimation%jm_previousFrame_0()
        call this%jm_update_0()
  end subroutine

  recursive subroutine RightToLeftImageAnimation_jm_previousFrame_0(this)
    class(RightToLeftImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ImageSegmentAnimation%jm_nextFrame_0()
        call this%jm_update_0()
  end subroutine

  recursive subroutine RightToLeftImageAnimation_jm_setFrame_1(this, j_index)
    class(RightToLeftImageAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ImageSegmentAnimation%jm_setFrame_1(j_index)
        call this%jm_update_0()
  end subroutine

  recursive subroutine RightToLeftImageAnimation_jm_update_0(this)
    class(RightToLeftImageAnimation), target :: this
        this%f_startWidth = ((this%jm_getDrawWidth_0() * this%jm_getFrame_0()) / this%jm_getSize_0())
        this%f_currentWidth = (this%jm_getDrawWidth_0() - this%f_startWidth)
  end subroutine

  recursive subroutine RightToLeftImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(RightToLeftImageAnimation), target :: this
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
        call j_graphics%jm_drawRegion_9(this%jm_getImage_0(), this%f_startWidth, this%jm_getStartY_0(), this%f_currentWidth, this%jm_getDrawHeight_0(), Sprite_jstatic_TRANS_NONE(), (j_x + this%f_startWidth), j_y, this%f_anchor)
  end subroutine
end module RightToLeftImageAnimation_m

