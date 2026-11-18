! Generated Code Do Not Modify
! package org.allbinary.animation
module FillAnimation_m
  use JR_m
  use BasicColor_m
  use IndexedAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(IndexedAnimation) :: FillAnimation
    integer(4), allocatable :: f_pixelBuffer(:)
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
  contains
    procedure :: jm_setBasicColorP_1 => FillAnimation_jm_setBasicColorP_1
    procedure :: jm_changeBasicColor_1 => FillAnimation_jm_changeBasicColor_1
    procedure :: jm_setAlpha_1 => FillAnimation_jm_setAlpha_1
    procedure :: jm_setScale_2 => FillAnimation_jm_setScale_2
    procedure :: jm_setMaxScale_2 => FillAnimation_jm_setMaxScale_2
    procedure :: jm_updateModifiers_0 => FillAnimation_jm_updateModifiers_0
    procedure :: jm_paint_1 => FillAnimation_jm_paint_1
  end type


contains

  function FillAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FillAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FillAnimation)
      jresult => object
    end select
  end function

  recursive function FillAnimation_jnew_4(j_pixelBuffer, j_width, j_height, j_animationBehavior) result(this)
    integer(4) :: j_pixelBuffer(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(FillAnimation), pointer :: this
    allocate(this)
    this%jclass = 'FillAnimation'
    
    
    
        continue ! super()
        this%f_width = 100
        this%f_height = 100
        this%f_pixelBuffer = j_pixelBuffer
  end function

  recursive subroutine FillAnimation_jm_setBasicColorP_1(this, j_basicColor)
    class(FillAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    logical :: j_changed
    class(BasicColor), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        jtemp1 => this%jm_getBasicColorP_0()
        if (((.not. associated(this%jm_getBasicColorP_0())) .or. (jtemp1%jm_intValue_0() /= j_basicColor%jm_intValue_0()))) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_setBasicColorP_1(j_basicColor)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine FillAnimation_jm_changeBasicColor_1(this, j_basicColor)
    class(FillAnimation), target :: this
    class(BasicColor), target, optional :: j_basicColor
    logical :: j_changed
    class(BasicColor), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        jtemp2 => this%jm_getChangeBasicColor_0()
        if (((.not. associated(this%jm_getChangeBasicColor_0())) .or. (jtemp2%jm_intValue_0() /= j_basicColor%jm_intValue_0()))) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_changeBasicColor_1(j_basicColor)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine FillAnimation_jm_setAlpha_1(this, j_alpha)
    class(FillAnimation), target :: this
    integer(4), value :: j_alpha
    logical :: j_changed
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_changed = .false.
        if ((this%f_alphaP /= j_alpha)) then
            j_changed = .true.
        end if
        call this%IndexedAnimation%jm_setAlpha_1(j_alpha)
        if (j_changed) then
            call this%jm_updateModifiers_0()
        end if
  end subroutine

  recursive subroutine FillAnimation_jm_setScale_2(this, j_scaleX, j_scaleY)
    class(FillAnimation), target :: this
    real(4), value :: j_scaleX
    real(4), value :: j_scaleY
    continue
  end subroutine

  recursive subroutine FillAnimation_jm_setMaxScale_2(this, j_maxScaleX, j_maxScaleY)
    class(FillAnimation), target :: this
    real(4), value :: j_maxScaleX
    real(4), value :: j_maxScaleY
    continue
  end subroutine

  recursive subroutine FillAnimation_jm_updateModifiers_0(this)
    class(FillAnimation), target :: this
    continue
  end subroutine

  recursive subroutine FillAnimation_jm_paint_1(this, j_g)
    class(FillAnimation), target :: this
    class(Graphics), target, optional :: j_g
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_g%jm_drawRGB_8(this%f_pixelBuffer, 0, this%f_width, 0, 0, this%f_width, this%f_height, .true.)
  end subroutine
end module FillAnimation_m

