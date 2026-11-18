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
module TopToBottomImageAnimation_m
  use JR_m
  use AnimationBehavior_m
  use Anchor_m
  use ImageSegmentAnimation_m
  implicit none

  type, extends(ImageSegmentAnimation) :: TopToBottomImageAnimation
    integer(4) :: f_currentHeight = 0
  contains
    procedure :: jm_nextFrame_0 => TopToBottomImageAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => TopToBottomImageAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => TopToBottomImageAnimation_jm_setFrame_1
    procedure :: jm_update_0 => TopToBottomImageAnimation_jm_update_0
    procedure :: jm_paintXY_3 => TopToBottomImageAnimation_jm_paintXY_3
  end type


contains

  function TopToBottomImageAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TopToBottomImageAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TopToBottomImageAnimation)
      jresult => object
    end select
  end function

  recursive function TopToBottomImageAnimation_jnew_3(j_image, j_sequenceArray, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(TopToBottomImageAnimation), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TopToBottomImageAnimation'
    
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue ! super()
        this%f_currentHeight = 0
        if ((this%jm_getSequence_0()((0) + 1) == (-1))) then
            call this%jm_setFrame_1((this%jm_getSize_0() - 1))
        end if
  end function

  recursive subroutine TopToBottomImageAnimation_jm_nextFrame_0(this)
    class(TopToBottomImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getSequence_0()((0) + 1) == (-1))) then
            call this%ImageSegmentAnimation%jm_previousFrame_0()
        else
            call this%ImageSegmentAnimation%jm_nextFrame_0()
        end if
        call this%jm_update_0()
  end subroutine

  recursive subroutine TopToBottomImageAnimation_jm_previousFrame_0(this)
    class(TopToBottomImageAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getSequence_0()((0) + 1) == (-1))) then
            call this%ImageSegmentAnimation%jm_nextFrame_0()
        else
            call this%ImageSegmentAnimation%jm_previousFrame_0()
        end if
        call this%jm_update_0()
  end subroutine

  recursive subroutine TopToBottomImageAnimation_jm_setFrame_1(this, j_index)
    class(TopToBottomImageAnimation), target :: this
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

  recursive subroutine TopToBottomImageAnimation_jm_update_0(this)
    class(TopToBottomImageAnimation), target :: this
        this%f_currentHeight = ((this%jm_getDrawHeight_0() * this%jm_getFrame_0()) / this%jm_getSize_0())
  end subroutine

  recursive subroutine TopToBottomImageAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(TopToBottomImageAnimation), target :: this
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
        call j_graphics%jm_drawRegion_9(this%jm_getImage_0(), this%jm_getStartX_0(), this%jm_getStartY_0(), this%jm_getDrawWidth_0(), this%f_currentHeight, Sprite_jstatic_TRANS_NONE(), j_x, j_y, this%f_anchor)
  end subroutine
end module TopToBottomImageAnimation_m

