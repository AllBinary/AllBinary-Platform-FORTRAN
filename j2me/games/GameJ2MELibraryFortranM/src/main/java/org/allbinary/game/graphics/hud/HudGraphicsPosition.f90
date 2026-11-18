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
! package org.allbinary.game.graphics.hud
module HudGraphicsPosition_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  implicit none

  type, extends(JObject) :: HudGraphicsPosition
    integer(4) :: f_anchor = 0
    class(GPoint), pointer :: f_point => null()
  contains
    procedure :: jm_getAnchor_0 => HudGraphicsPosition_jm_getAnchor_0
    procedure :: jm_setAnchor_1 => HudGraphicsPosition_jm_setAnchor_1
    procedure :: jm_getPoint_0 => HudGraphicsPosition_jm_getPoint_0
    procedure :: jm_setPoint_1 => HudGraphicsPosition_jm_setPoint_1
  end type

  class(HudGraphicsPosition), pointer, save :: HudGraphicsPosition_jcell_NULL_HUD_GRAPHICS_POSITION => null()
  logical, save :: HudGraphicsPosition_jset_NULL_HUD_GRAPHICS_POSITION = .false.

contains

  function HudGraphicsPosition_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HudGraphicsPosition), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HudGraphicsPosition)
      jresult => object
    end select
  end function

  function HudGraphicsPosition_jstatic_NULL_HUD_GRAPHICS_POSITION() result(jresult)
    class(HudGraphicsPosition), pointer :: jresult
    class(PointFactory), pointer :: jtemp1
    if (.not. HudGraphicsPosition_jset_NULL_HUD_GRAPHICS_POSITION) then
      HudGraphicsPosition_jset_NULL_HUD_GRAPHICS_POSITION = .true.
      jtemp1 => PointFactory_jm_getInstance_0()
    HudGraphicsPosition_jcell_NULL_HUD_GRAPHICS_POSITION => HudGraphicsPosition_jnew_2(jtemp1%f_ZERO_ZERO, 9)
    end if
    jresult => HudGraphicsPosition_jcell_NULL_HUD_GRAPHICS_POSITION
  end function

  subroutine HudGraphicsPosition_jsetstatic_NULL_HUD_GRAPHICS_POSITION(jvalue)
    class(HudGraphicsPosition), target, optional :: jvalue
    HudGraphicsPosition_jset_NULL_HUD_GRAPHICS_POSITION = .true.
    if (present(jvalue)) then
      HudGraphicsPosition_jcell_NULL_HUD_GRAPHICS_POSITION => jvalue
    else
      HudGraphicsPosition_jcell_NULL_HUD_GRAPHICS_POSITION => null()
    end if
  end subroutine

  recursive function HudGraphicsPosition_jnew_2(j_point, j_anchor) result(this)
    class(GPoint), target, optional :: j_point
    integer(4), value :: j_anchor
    class(HudGraphicsPosition), pointer :: this
    class(PointFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'HudGraphicsPosition'
    
    jtemp2 => PointFactory_jm_getInstance_0()
    this%f_point => jtemp2%f_ZERO_ZERO
        call this%jm_setAnchor_1(j_anchor)
        call this%jm_setPoint_1(j_point)
  end function

  recursive function HudGraphicsPosition_jm_getAnchor_0(this) result(jresult)
    class(HudGraphicsPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_anchor
        return
  end function

  recursive subroutine HudGraphicsPosition_jm_setAnchor_1(this, j_anchor)
    class(HudGraphicsPosition), target :: this
    integer(4), value :: j_anchor
        this%f_anchor = j_anchor
  end subroutine

  recursive function HudGraphicsPosition_jm_getPoint_0(this) result(jresult)
    class(HudGraphicsPosition), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_point
        return
  end function

  recursive subroutine HudGraphicsPosition_jm_setPoint_1(this, j_point)
    class(HudGraphicsPosition), target :: this
    class(GPoint), target, optional :: j_point
        this%f_point => j_point
  end subroutine
end module HudGraphicsPosition_m

