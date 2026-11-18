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
module ImageSegmentAnimation_m
  use JR_m
  use AnimationBehavior_m
  use CircularIndexUtil_m
  use ImageAnimation_m
  implicit none

  type, extends(ImageAnimation) :: ImageSegmentAnimation
    integer(4) :: f_startX = 0
    integer(4) :: f_startY = 0
    integer(4) :: f_drawWidth = 0
    integer(4) :: f_drawHeight = 0
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4), allocatable :: f_sequenceArray(:)
  contains
    procedure :: jm_nextFrame_0 => ImageSegmentAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => ImageSegmentAnimation_jm_previousFrame_0
    procedure :: jm_setFrame_1 => ImageSegmentAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => ImageSegmentAnimation_jm_getFrame_0
    procedure :: jm_getSize_0 => ImageSegmentAnimation_jm_getSize_0
    procedure :: jm_setSequence_1 => ImageSegmentAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => ImageSegmentAnimation_jm_getSequence_0
    procedure :: jm_paintXY_3 => ImageSegmentAnimation_jm_paintXY_3
    procedure :: jm_getStartX_0 => ImageSegmentAnimation_jm_getStartX_0
    procedure :: jm_setStartX_1 => ImageSegmentAnimation_jm_setStartX_1
    procedure :: jm_getStartY_0 => ImageSegmentAnimation_jm_getStartY_0
    procedure :: jm_setStartY_1 => ImageSegmentAnimation_jm_setStartY_1
    procedure :: jm_getDrawWidth_0 => ImageSegmentAnimation_jm_getDrawWidth_0
    procedure :: jm_setDrawWidth_1 => ImageSegmentAnimation_jm_setDrawWidth_1
    procedure :: jm_getDrawHeight_0 => ImageSegmentAnimation_jm_getDrawHeight_0
    procedure :: jm_setDrawHeight_1 => ImageSegmentAnimation_jm_setDrawHeight_1
  end type


contains

  function ImageSegmentAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageSegmentAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageSegmentAnimation)
      jresult => object
    end select
  end function

  recursive function ImageSegmentAnimation_jnew_3(j_image, j_sequenceArray, j_animationBehavior) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(ImageSegmentAnimation), pointer :: this
    class(Image), pointer :: jtemp1
    class(Image), pointer :: jtemp2
    allocate(this)
    this%jclass = 'ImageSegmentAnimation'
    
    
    
    
    
    
        continue ! super()
        this%f_startX = 0
        this%f_startY = 0
        jtemp1 => this%jm_getImage_0()
        this%f_drawWidth = jtemp1%jm_getWidth_0()
        jtemp2 => this%jm_getImage_0()
        this%f_drawHeight = jtemp2%jm_getHeight_0()
        this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(this%f_drawHeight)
        this%f_sequenceArray = j_sequenceArray
  end function

  recursive subroutine ImageSegmentAnimation_jm_nextFrame_0(this)
    class(ImageSegmentAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
  end subroutine

  recursive subroutine ImageSegmentAnimation_jm_previousFrame_0(this)
    class(ImageSegmentAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardInt = this%f_circularIndexUtil%jm_previous_0()
  end subroutine

  recursive subroutine ImageSegmentAnimation_jm_setFrame_1(this, j_index)
    class(ImageSegmentAnimation), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_circularIndexUtil%jm_setIndex_1(j_index)
  end subroutine

  recursive function ImageSegmentAnimation_jm_getFrame_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getIndex_0()
        return
  end function

  recursive function ImageSegmentAnimation_jm_getSize_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_circularIndexUtil%jm_getSize_0()
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_setSequence_1(this, j_sequence)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: j_sequence(:)
        this%f_sequenceArray = j_sequence
  end subroutine

  recursive function ImageSegmentAnimation_jm_getSequence_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_sequenceArray
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(ImageSegmentAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine

  recursive function ImageSegmentAnimation_jm_getStartX_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_startX
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_setStartX_1(this, j_startX)
    class(ImageSegmentAnimation), target :: this
    integer(4), value :: j_startX
        this%f_startX = j_startX
  end subroutine

  recursive function ImageSegmentAnimation_jm_getStartY_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_startY
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_setStartY_1(this, j_startY)
    class(ImageSegmentAnimation), target :: this
    integer(4), value :: j_startY
        this%f_startY = j_startY
  end subroutine

  recursive function ImageSegmentAnimation_jm_getDrawWidth_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_drawWidth
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_setDrawWidth_1(this, j_drawWidth)
    class(ImageSegmentAnimation), target :: this
    integer(4), value :: j_drawWidth
        this%f_drawWidth = j_drawWidth
  end subroutine

  recursive function ImageSegmentAnimation_jm_getDrawHeight_0(this) result(jresult)
    class(ImageSegmentAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_drawHeight
        return
  end function

  recursive subroutine ImageSegmentAnimation_jm_setDrawHeight_1(this, j_drawHeight)
    class(ImageSegmentAnimation), target :: this
    integer(4), value :: j_drawHeight
        this%f_drawHeight = j_drawHeight
  end subroutine
end module ImageSegmentAnimation_m

