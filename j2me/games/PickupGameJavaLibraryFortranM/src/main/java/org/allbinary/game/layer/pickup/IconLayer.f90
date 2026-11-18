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
! package org.allbinary.game.layer.pickup
module IconLayer_m
  use JR_m
  use Animation_m
  use NullAnimationFactory_m
  use PointFactory_m
  use Rectangle_m
  use AllBinaryLayer_m
  use StringUtil_m
  use ViewPosition_m
  implicit none

  type, extends(AllBinaryLayer) :: IconLayer
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_paint_1 => IconLayer_jm_paint_1
    procedure :: jm_paintThreed_1 => IconLayer_jm_paintThreed_1
    procedure :: jm_getAnimationInterface_0 => IconLayer_jm_getAnimationInterface_0
  end type

  class(IconLayer), pointer, save :: IconLayer_jcell_NULL_ICON_LAYER => null()
  logical, save :: IconLayer_jset_NULL_ICON_LAYER = .false.

contains

  function IconLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IconLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IconLayer)
      jresult => object
    end select
  end function

  function IconLayer_jstatic_NULL_ICON_LAYER() result(jresult)
    class(IconLayer), pointer :: jresult
    class(NullAnimationFactory), pointer :: jtemp1
    if (.not. IconLayer_jset_NULL_ICON_LAYER) then
      IconLayer_jset_NULL_ICON_LAYER = .true.
      jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
    IconLayer_jcell_NULL_ICON_LAYER => IconLayer_jnew_3(jtemp1%jm_getInstance_1(0), 0, 0)
    end if
    jresult => IconLayer_jcell_NULL_ICON_LAYER
  end function

  subroutine IconLayer_jsetstatic_NULL_ICON_LAYER(jvalue)
    class(IconLayer), target, optional :: jvalue
    IconLayer_jset_NULL_ICON_LAYER = .true.
    if (present(jvalue)) then
      IconLayer_jcell_NULL_ICON_LAYER => jvalue
    else
      IconLayer_jcell_NULL_ICON_LAYER => null()
    end if
  end subroutine

  recursive function IconLayer_jnew_3(j_animationInterface, j_width, j_height) result(this)
    class(Animation), target, optional :: j_animationInterface
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(IconLayer), pointer :: this
    class(StringUtil), pointer :: jtemp2
    class(PointFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'IconLayer'
    
        jtemp3 => PointFactory_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        continue ! super()
        this%f_animationInterface => j_animationInterface
  end function

  recursive subroutine IconLayer_jm_paint_1(this, j_graphics)
    class(IconLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintXY_3(j_graphics, this%f_x, this%f_y)
  end subroutine

  recursive subroutine IconLayer_jm_paintThreed_1(this, j_graphics)
    class(IconLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, this%f_x, this%f_y, this%f_z)
  end subroutine

  recursive function IconLayer_jm_getAnimationInterface_0(this) result(jresult)
    class(IconLayer), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function
end module IconLayer_m

