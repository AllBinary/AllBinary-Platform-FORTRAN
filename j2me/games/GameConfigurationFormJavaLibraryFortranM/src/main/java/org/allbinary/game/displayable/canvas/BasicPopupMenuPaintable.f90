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
! package org.allbinary.game.displayable.canvas
module BasicPopupMenuPaintable_m
  use JR_m
  use AndroidUtil_m
  use J2MEUtil_m
  use Animation_m
  use NullAnimationFactory_m
  use RectangleFilledAnimation_m
  use Features_m
  use SWTUtil_m
  use GPoint_m
  use Rectangle_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use DrawVerticalStringUtil_m
  use MyFontProcessor_m
  use UpdateMyFontInterface_m
  use UpdateMyFontProcessor_m
  use OpenGLFeatureFactory_m
  use OpenGLFeatureUtil_m
  use Paintable_m
  use SWTJOGLProcessor_m
  implicit none

  type, extends(Paintable) :: BasicPopupMenuPaintable
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(DrawVerticalStringUtil), pointer :: f_drawStringUtil => null()
    character(len=:), allocatable :: f_label
    class(BasicColor), pointer :: f_foregroundBasicColor => null()
    class(MyFontProcessor), pointer :: f_myFontProcessor => null()
    class(Rectangle), pointer :: f_rectangle => null()
    integer(4) :: f_BORDER = 0
    integer(4) :: f_heightOffset = 0
    integer(4) :: f_offset = 0
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_updateMeasurement_1 => BasicPopupMenuPaintable_jm_updateMeasurement_1
    procedure :: jm_init_1 => BasicPopupMenuPaintable_jm_init_1
    procedure :: jm_paint_1 => BasicPopupMenuPaintable_jm_paint_1
  end type

  ! BasicPopupMenuPaintable used as a UpdateMyFontInterface
  type, extends(UpdateMyFontInterface) :: BasicPopupMenuPaintable_jas_UpdateMyFontInterface
    class(BasicPopupMenuPaintable), pointer :: jtarget => null()
  contains
    procedure :: jm_updateMeasurement_1 => BasicPopupMenuPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1
  end type

  character(len=:), allocatable, save :: BasicPopupMenuPaintable_jcell_NAME
  logical, save :: BasicPopupMenuPaintable_jset_NAME = .false.

contains

  function BasicPopupMenuPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicPopupMenuPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicPopupMenuPaintable)
      jresult => object
    end select
  end function

  function BasicPopupMenuPaintable_jas_UpdateMyFontInterface_jnew(object) result(jresult)
    class(BasicPopupMenuPaintable), target :: object
    class(BasicPopupMenuPaintable_jas_UpdateMyFontInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicPopupMenuPaintable'
    jresult%jtarget => object
  end function

  recursive subroutine BasicPopupMenuPaintable_jas_UpdateMyFontInterface_jm_updateMeasurement_1(this, j_graphics)
    class(BasicPopupMenuPaintable_jas_UpdateMyFontInterface), target :: this
    class(Graphics), target, optional :: j_graphics
    call this%jtarget%jm_updateMeasurement_1(j_graphics)
  end subroutine

  function BasicPopupMenuPaintable_jstatic_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BasicPopupMenuPaintable_jset_NAME) then
      BasicPopupMenuPaintable_jset_NAME = .true.
      BasicPopupMenuPaintable_jcell_NAME = 'MENU'
    end if
    jresult = BasicPopupMenuPaintable_jcell_NAME
  end function

  subroutine BasicPopupMenuPaintable_jsetstatic_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    BasicPopupMenuPaintable_jset_NAME = .true.
    BasicPopupMenuPaintable_jcell_NAME = jvalue
  end subroutine

  recursive function BasicPopupMenuPaintable_jnew_3(j_rectangle, j_backgroundBasicColor, j_foregroundBasicColor) result(this)
    class(Rectangle), target, optional :: j_rectangle
    class(BasicColor), target, optional :: j_backgroundBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(BasicPopupMenuPaintable), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(NullAnimationFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicPopupMenuPaintable'
    this%f_label = ''
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    this%f_drawStringUtil => DrawVerticalStringUtil_jm_getInstance_0()
    
    
    this%f_myFontProcessor => UpdateMyFontProcessor_jnew_1(this)
    
    
    
    
    
        this%f_foregroundBasicColor => j_foregroundBasicColor
        this%f_label = BasicPopupMenuPaintable_jstatic_NAME()
        this%f_rectangle => j_rectangle
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            jtemp2 => NullAnimationFactory_jm_getFactoryInstance_0()
            this%f_animationInterface => jtemp2%jm_getInstance_1(0)
        else
            jtemp1 => BasicColorFactory_jm_getInstance_0()
            this%f_animationInterface => RectangleFilledAnimation_jnew_3(this%f_rectangle%jm_getWidth_0(), this%f_rectangle%jm_getHeight_0(), jtemp1%f_TRANSPARENT_GREY)
        end if
        call this%jm_init_1(j_rectangle)
  end function

  recursive subroutine BasicPopupMenuPaintable_jm_updateMeasurement_1(this, j_graphics)
    class(BasicPopupMenuPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Font), pointer :: j_font
    class(Features), pointer :: j_features
    logical :: j_isOpenGL
    integer(4) :: j_BORDER
    class(OpenGLFeatureFactory), pointer :: jtemp3
    class(OpenGLFeatureUtil), pointer :: jtemp4
    class(SWTJOGLProcessor), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_font => j_graphics%jm_getFont_0()
        j_features => Features_jm_getInstance_0()
        jtemp3 => OpenGLFeatureFactory_jm_getInstance_0()
        j_isOpenGL = j_features%jm_isDefault_1(jtemp3%f_OPENGL)
        call this%f_drawStringUtil%jm_updateMeasurement_2(j_graphics, this%f_label)
        j_BORDER = 0
        if ((J2MEUtil_jm_isHTML_0() .or. j_isOpenGL)) then
            j_BORDER = (MyFontProcessor_jm_defaultCharWidth_1(j_font) / 2)
        else if (((AndroidUtil_jm_isAndroid_0() .or. J2MEUtil_jm_isJ2SE_0()) .or. SWTUtil_jstatic_isSWT())) then
            j_BORDER = MyFontProcessor_jm_defaultCharWidth_1(j_font)
        else
            j_BORDER = (MyFontProcessor_jm_defaultCharWidth_1(j_font) * 2)
        end if
        this%f_BORDER = j_BORDER
        associate (jstatic_N69877 => BasicPopupMenuPaintable_jstatic_NAME())
        this%f_heightOffset = (this%f_rectangle%jm_getHeight_0() - ((j_font%jm_getHeight_0() * jstatic_N69877%jm_length_0())))
        end associate
        jtemp4 => OpenGLFeatureUtil_jm_getInstance_0()
        if (jtemp4%jm_isAnyThreed_0()) then
            this%f_heightOffset = (this%f_heightOffset - (j_font%jm_getHeight_0() + 2))
            if (AndroidUtil_jm_isAndroid_0()) then
                this%f_heightOffset = j_font%jm_getHeight_0()
            else
                this%f_heightOffset = (this%f_heightOffset - (j_font%jm_getHeight_0() + 2))
            end if
        end if
        jtemp5 => SWTJOGLProcessor_jm_getInstance_0()
        this%f_offset = ((shifta(this%f_heightOffset, iand(1, 31))) + (merge(4, 0, jtemp5%jm_isJOGL_0())))
        this%f_myFontProcessor => MyFontProcessor_jm_getInstance_0()
  end subroutine

  recursive subroutine BasicPopupMenuPaintable_jm_init_1(this, j_rectangle)
    class(BasicPopupMenuPaintable), target :: this
    class(Rectangle), target, optional :: j_rectangle
    integer(4) :: j_width
    integer(4) :: j_height
    class(RectangleFilledAnimation), pointer :: j_rectangleFilledAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_rectangle => j_rectangle
        j_width = this%f_rectangle%jm_getWidth_0()
        j_height = this%f_rectangle%jm_getHeight_0()
        if ((J2MEUtil_jm_isJ2ME_0() .or. J2MEUtil_jm_isHTML_0())) then
            continue
        else
            j_rectangleFilledAnimation => RectangleFilledAnimation_jcast(this%f_animationInterface)
            call j_rectangleFilledAnimation%jm_setWidth_1(j_width)
            call j_rectangleFilledAnimation%jm_setHeight_1(j_height)
        end if
  end subroutine

  recursive subroutine BasicPopupMenuPaintable_jm_paint_1(this, j_graphics)
    class(BasicPopupMenuPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    class(GPoint), pointer :: j_point
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_width
    integer(4) :: j_height
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_myFontProcessor%jm_process_1(j_graphics)
        j_point => this%f_rectangle%jm_getPoint_0()
        j_x = j_point%jm_getX_0()
        j_y = j_point%jm_getY_0()
        j_width = this%f_rectangle%jm_getWidth_0()
        j_height = this%f_rectangle%jm_getHeight_0()
        call this%f_animationInterface%jm_paintXY_3(j_graphics, j_x, j_y)
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_foregroundBasicColor)
        call this%f_drawStringUtil%jm_paintVerticle_5(j_graphics, this%f_label, (j_x + this%f_BORDER), (j_y + this%f_offset), 0)
        call j_graphics%jm_drawRect_4(j_x, j_y, j_width, j_height)
  end subroutine
end module BasicPopupMenuPaintable_m

