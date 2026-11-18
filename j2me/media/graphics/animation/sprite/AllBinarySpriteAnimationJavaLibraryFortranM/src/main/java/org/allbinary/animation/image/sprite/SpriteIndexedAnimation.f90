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
module SpriteIndexedAnimation_m
  use JR_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use BasicColor_m
  use BasicColorFactory_m
  use ColorCompositeInterface_m
  use PrimitiveIntUtil_m
  use StringMaker_m
  use CommonLabels_m
  implicit none

  type, extends(IndexedAnimation) :: SpriteIndexedAnimation
    class(Sprite), pointer :: f_sprite => null()
    class(Image), pointer :: f_image => null()
    type(JRef), allocatable :: f_basicColorArray(:)
  contains
    procedure :: jm_getAnimationSize_0 => SpriteIndexedAnimation_jm_getAnimationSize_0
    procedure :: jm_setBasicColorP_1 => SpriteIndexedAnimation_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => SpriteIndexedAnimation_jm_getBasicColorP_0
    procedure :: jm_paintFrame_4 => SpriteIndexedAnimation_jm_paintFrame_4
    procedure :: jm_paintXY_3 => SpriteIndexedAnimation_jm_paintXY_3
    procedure :: jm_paint_1 => SpriteIndexedAnimation_jm_paint_1
    procedure :: jm_nextFrame_0 => SpriteIndexedAnimation_jm_nextFrame_0
    procedure :: jm_previousFrame_0 => SpriteIndexedAnimation_jm_previousFrame_0
    procedure :: jm_getSize_0 => SpriteIndexedAnimation_jm_getSize_0
    procedure :: jm_setFrame_1 => SpriteIndexedAnimation_jm_setFrame_1
    procedure :: jm_getFrame_0 => SpriteIndexedAnimation_jm_getFrame_0
    procedure :: jm_isLastFrame_0 => SpriteIndexedAnimation_jm_isLastFrame_0
    procedure :: jm_getLastFrame_0 => SpriteIndexedAnimation_jm_getLastFrame_0
    procedure :: jm_setSequence_1 => SpriteIndexedAnimation_jm_setSequence_1
    procedure :: jm_getSequence_0 => SpriteIndexedAnimation_jm_getSequence_0
    procedure :: jm_close_0 => SpriteIndexedAnimation_jm_close_0
    procedure :: jm_finalize_0 => SpriteIndexedAnimation_jm_finalize_0
  end type

  ! SpriteIndexedAnimation used as a ColorCompositeInterface
  type, extends(ColorCompositeInterface) :: SpriteIndexedAnimation_jas_ColorCompositeInterface
    class(SpriteIndexedAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_getBasicColorP_0 => SpriteIndexedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function SpriteIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpriteIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpriteIndexedAnimation)
      jresult => object
    end select
  end function

  function SpriteIndexedAnimation_jas_ColorCompositeInterface_jnew(object) result(jresult)
    class(SpriteIndexedAnimation), target :: object
    class(SpriteIndexedAnimation_jas_ColorCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'SpriteIndexedAnimation'
    jresult%jtarget => object
  end function

  recursive function SpriteIndexedAnimation_jas_ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(SpriteIndexedAnimation_jas_ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    jresult => this%jtarget%jm_getBasicColorP_0()
  end function

  recursive function SpriteIndexedAnimation_jnew_4(j_sprite, j_image, j_basicColorArray, j_animationBehavior) result(this)
    class(Sprite), target, optional :: j_sprite
    class(Image), target, optional :: j_image
    type(JRef) :: j_basicColorArray(:)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(SpriteIndexedAnimation), pointer :: this
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    allocate(this)
    this%jclass = 'SpriteIndexedAnimation'
    
    
    
        continue ! super()
        this%f_sprite => j_sprite
        this%f_image => j_image
        this%f_basicColorArray = j_basicColorArray
        if (((size(this%f_basicColorArray, 1) /= 0) .and. (this%jm_getSize_0() /= size(this%f_basicColorArray, 1)))) then
            jtemp6 => CommonLabels_jm_getInstance_0()
            jtemp5 => StringMaker_jnew_0()
            jtemp4 => jtemp5%jm_append_1(jtemp6%f_TOTAL_LABEL)
            jtemp3 => jtemp4%jm_appendint_1(this%jm_getSize_0())
            jtemp2 => jtemp3%jm_append_1('!=')
            jtemp1 => jtemp2%jm_appendint_1(size(this%f_basicColorArray, 1))
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive function SpriteIndexedAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine SpriteIndexedAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(SpriteIndexedAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        do while ((j_index < size(this%f_basicColorArray, 1)))
            if (JR_same(j_basicColor, BasicColor_jcast(this%f_basicColorArray((j_index) + 1)%v))) then
                call this%jm_setFrame_1(j_index)
                exit
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive function SpriteIndexedAnimation_jm_getBasicColorP_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    class(BasicColor), pointer :: jresult
    class(BasicColorFactory), pointer :: jtemp7
        if ((size(this%f_basicColorArray, 1) < this%jm_getFrame_0())) then
            jresult => BasicColor_jcast(this%f_basicColorArray((this%jm_getFrame_0()) + 1)%v)
            return
        else
            jtemp7 => BasicColorFactory_jm_getInstance_0()
            jresult => jtemp7%f_WHITE
            return
        end if
  end function

  recursive subroutine SpriteIndexedAnimation_jm_paintFrame_4(this, j_graphics, j_frame, j_x, j_y)
    class(SpriteIndexedAnimation), target :: this
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
        call this%f_sprite%jm_setPosition_2(j_x, j_y)
        call this%f_sprite%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine SpriteIndexedAnimation_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(SpriteIndexedAnimation), target :: this
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
        call this%f_sprite%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine SpriteIndexedAnimation_jm_paint_1(this, j_graphics)
    class(SpriteIndexedAnimation), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine SpriteIndexedAnimation_jm_nextFrame_0(this)
    class(SpriteIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_nextFrame_0()
  end subroutine

  recursive subroutine SpriteIndexedAnimation_jm_previousFrame_0(this)
    class(SpriteIndexedAnimation), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_sprite%jm_prevFrame_0()
  end subroutine

  recursive function SpriteIndexedAnimation_jm_getSize_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_sprite%jm_getRawFrameCount_0()
        return
  end function

  recursive subroutine SpriteIndexedAnimation_jm_setFrame_1(this, j_index)
    class(SpriteIndexedAnimation), target :: this
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

  recursive function SpriteIndexedAnimation_jm_getFrame_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%f_sprite%jm_getFrame_0()
        return
  end function

  recursive function SpriteIndexedAnimation_jm_isLastFrame_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    logical :: jresult
        if ((this%f_sprite%jm_getFrame_0() == (this%jm_getSize_0() - 1))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function SpriteIndexedAnimation_jm_getLastFrame_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = this%jm_getSize_0()
        return
  end function

  recursive subroutine SpriteIndexedAnimation_jm_setSequence_1(this, j_sequence)
    class(SpriteIndexedAnimation), target :: this
    integer(4) :: j_sequence(:)
    continue
  end subroutine

  recursive function SpriteIndexedAnimation_jm_getSequence_0(this) result(jresult)
    class(SpriteIndexedAnimation), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = PrimitiveIntUtil_jm_getArrayInstance_0()
        return
  end function

  recursive subroutine SpriteIndexedAnimation_jm_close_0(this)
    class(SpriteIndexedAnimation), target :: this
    continue
  end subroutine

  recursive subroutine SpriteIndexedAnimation_jm_finalize_0(this)
    class(SpriteIndexedAnimation), target :: this
    continue
  end subroutine
end module SpriteIndexedAnimation_m

