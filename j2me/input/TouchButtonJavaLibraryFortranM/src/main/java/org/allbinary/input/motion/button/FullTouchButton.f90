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
module FullTouchButton_m
  use JR_m
  use Animation_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use CellPosition_m
  use GPoint_m
  use PointFactory_m
  use Rectangle_m
  use TouchButton_m
  use TouchButtonInput_m
  use TouchButtonResource_m
  implicit none

  type, extends(TouchButton) :: FullTouchButton
  contains
    procedure :: jm_updateRectangle_0 => FullTouchButton_jm_updateRectangle_0
  end type


contains

  function FullTouchButton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FullTouchButton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FullTouchButton)
      jresult => object
    end select
  end function

  recursive function FullTouchButton_jnew_7(j_touchButtonInput, j_animationInterface, j_hintAnimationInterface, j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder) result(this)
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_hintAnimationInterface
    class(Rectangle), target, optional :: j_rawRectangle
    class(CellPosition), target, optional :: j_cellPosition
    integer(4), value :: j_xBorder
    integer(4), value :: j_yBorder
    class(FullTouchButton), pointer :: this
    allocate(this)
    this%jclass = 'FullTouchButton'
        continue ! super()
  end function

  recursive function FullTouchButton_jm_createButton_6(j_touchButtonInput, j_touchButtonResource, j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder) result(jresult)
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(TouchButtonResource), target, optional :: j_touchButtonResource
    class(Rectangle), target, optional :: j_rawRectangle
    class(CellPosition), target, optional :: j_cellPosition
    integer(4), value :: j_xBorder
    integer(4), value :: j_yBorder
    class(FullTouchButton), pointer :: jresult
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp1
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp2
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp3
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp4
        jtemp2 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp4 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => jtemp2%jm_get_1(j_touchButtonResource%f_RESOURCE)
        jtemp3 => jtemp4%jm_get_1(j_touchButtonResource%f_HINT)
        jresult => FullTouchButton_jnew_7(j_touchButtonInput, jtemp1%jm_getInstance_1(0), jtemp3%jm_getInstance_1(0), j_rawRectangle, j_cellPosition, j_xBorder, j_yBorder)
        return
  end function

  recursive subroutine FullTouchButton_jm_updateRectangle_0(this)
    class(FullTouchButton), target :: this
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
            this%f_rectangleP => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(j_x, j_y), (this%f_rawRectangle%jm_getWidth_0() + ((2 * this%f_xBorder))), (this%f_rawRectangle%jm_getHeight_0() + ((2 * this%f_yBorder))))
            j_point => this%f_rectangleP%jm_getPoint_0()
            this%f_animationX = (j_point%jm_getX_0() + this%f_xBorder)
            this%f_animationY = (j_point%jm_getY_0() + this%f_yBorder)
            this%f_hintAnimationY = shifta((this%f_animationY - this%f_rectangleP%jm_getHeight_0()), iand(1, 31))
  end subroutine
end module FullTouchButton_m

