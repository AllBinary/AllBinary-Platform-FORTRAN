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
! package org.allbinary.input.motion.button
module TouchButton_m
  use JR_m
  use Animation_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use CellPosition_m
  use GPoint_m
  use PointFactory_m
  use Rectangle_m
  use RectangleFactory_m
  use Paintable_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use TouchButtonInput_m
  use TouchButtonResource_m
  implicit none

  type, extends(Paintable) :: TouchButton
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(TouchButtonInput), pointer :: f_touchButtonInput => null()
    class(Animation), pointer :: f_animationInterface => null()
    class(Animation), pointer :: f_hintAnimationInterface => null()
    class(Rectangle), pointer :: f_rawRectangle => null()
    integer(4) :: f_xBorder = 0
    integer(4) :: f_yBorder = 0
    class(Rectangle), pointer :: f_rectangleP => null()
    class(CellPosition), pointer :: f_cellPositionP => null()
    integer(4) :: f_animationX = 0
    integer(4) :: f_animationY = 0
    integer(4) :: f_hintAnimationY = 0
  contains
    procedure :: jm_paintHint_1 => TouchButton_jm_paintHint_1
    procedure :: jm_paint_1 => TouchButton_jm_paint_1
    procedure :: jm_updateRectangle_0 => TouchButton_jm_updateRectangle_0
    procedure :: jm_getCellPosition_0 => TouchButton_jm_getCellPosition_0
    procedure :: jm_getRectangle_0 => TouchButton_jm_getRectangle_0
    procedure :: jm_getTouchButtonInput_0 => TouchButton_jm_getTouchButtonInput_0
    procedure :: jm_toString_0 => TouchButton_jm_toString_0
  end type


contains

  function TouchButton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButton)
      jresult => object
    end select
  end function

  recursive function TouchButton_jnew_7(j_touchButtonInput, j_animationInterface, j_hintAnimationInterface, j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder) result(this)
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_hintAnimationInterface
    class(Rectangle), target, optional :: j_rawRectangle
    class(CellPosition), target, optional :: j_cellPosition
    integer(4), value :: j_xBorder
    integer(4), value :: j_yBorder
    class(TouchButton), pointer :: this
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TouchButton'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
    
    
    
    this%f_rectangleP => RectangleFactory_jstatic_SINGLETON()
    
    
    
    
        this%f_touchButtonInput => j_touchButtonInput
        this%f_animationInterface => j_animationInterface
        this%f_hintAnimationInterface => j_hintAnimationInterface
        this%f_rawRectangle => j_rawRectangle
        this%f_cellPositionP => j_cellPosition
        this%f_xBorder = j_xBorder
        this%f_yBorder = j_yBorder
        call this%jm_updateRectangle_0()
        jtemp7 => StringMaker_jnew_0()
        jtemp6 => jtemp7%jm_append_1('Created: ')
        jtemp5 => jtemp6%jm_append_1(this%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp5%jm_toString_0(), this, this%f_commonStrings%f_CONSTRUCTOR)
  end function

  recursive function TouchButton_jm_createButton_6(j_touchButtonInput, j_touchButtonResource, j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder) result(jresult)
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(TouchButtonResource), target, optional :: j_touchButtonResource
    class(Rectangle), target, optional :: j_rawRectangle
    class(CellPosition), target, optional :: j_cellPosition
    integer(4), value :: j_xBorder
    integer(4), value :: j_yBorder
    class(TouchButton), pointer :: jresult
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp1
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp2
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp3
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp4
        jtemp2 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp4 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => jtemp2%jm_get_1(j_touchButtonResource%f_RESOURCE)
        jtemp3 => jtemp4%jm_get_1(j_touchButtonResource%f_HINT)
        jresult => TouchButton_jnew_7(j_touchButtonInput, jtemp1%jm_getInstance_1(0), jtemp3%jm_getInstance_1(0), j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder)
        return
  end function

  recursive subroutine TouchButton_jm_paintHint_1(this, j_graphics)
    class(TouchButton), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_hintAnimationInterface%jm_paintXY_3(j_graphics, this%f_animationX, this%f_hintAnimationY)
  end subroutine

  recursive subroutine TouchButton_jm_paint_1(this, j_graphics)
    class(TouchButton), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintXY_3(j_graphics, this%f_animationX, this%f_animationY)
  end subroutine

  recursive subroutine TouchButton_jm_updateRectangle_0(this)
    class(TouchButton), target :: this
    class(PointFactory), pointer :: j_pointFactory
    integer(4) :: j_x
    integer(4) :: j_y
    class(GPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_pointFactory => PointFactory_jm_getInstance_0()
            j_x = (this%f_rawRectangle%jm_getWidth_0() * this%f_cellPositionP%jm_getColumn_0())
            j_y = (this%f_rawRectangle%jm_getHeight_0() * this%f_cellPositionP%jm_getRow_0())
            this%f_rectangleP => Rectangle_jnew_3(j_pointFactory%jm_createXY_2((j_x + this%f_xBorder), (j_y + this%f_yBorder)), this%f_rawRectangle%jm_getWidth_0(), this%f_rawRectangle%jm_getHeight_0())
            j_point => this%f_rectangleP%jm_getPoint_0()
            this%f_animationX = j_point%jm_getX_0()
            this%f_animationY = j_point%jm_getY_0()
            this%f_hintAnimationY = (this%f_animationY - 32)
  end subroutine

  recursive function TouchButton_jm_getCellPosition_0(this) result(jresult)
    class(TouchButton), target :: this
    class(CellPosition), pointer :: jresult
        jresult => this%f_cellPositionP
        return
  end function

  recursive function TouchButton_jm_getRectangle_0(this) result(jresult)
    class(TouchButton), target :: this
    class(Rectangle), pointer :: jresult
        jresult => this%f_rectangleP
        return
  end function

  recursive function TouchButton_jm_getTouchButtonInput_0(this) result(jresult)
    class(TouchButton), target :: this
    class(TouchButtonInput), pointer :: jresult
        jresult => this%f_touchButtonInput
        return
  end function

  recursive function TouchButton_jm_toString_0(this) result(jresult)
    class(TouchButton), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: j_stringUtil
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_stringUtil => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1('TouchButton: ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%jm_getRectangle_0()))
        jdiscardRef => j_stringBuffer%jm_append_1(' CellPosition: ')
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_cellPositionP))
        jdiscardRef => j_stringBuffer%jm_append_1(' xBorder: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_xBorder)
        jdiscardRef => j_stringBuffer%jm_append_1(' yBorder: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_yBorder)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module TouchButton_m

