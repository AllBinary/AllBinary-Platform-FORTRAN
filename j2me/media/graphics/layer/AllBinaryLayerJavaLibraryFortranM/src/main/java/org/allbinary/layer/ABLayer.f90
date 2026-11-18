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
! package org.allbinary.layer
module ABLayer_m
  use JR_m
  use CanvasStrings_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use CommonStrings_m
  use Integer_m
  implicit none

  type, extends(JObject) :: ABLayer
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_x = 0
    integer(4) :: f_y = 0
    integer(4) :: f_z = 0
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
    logical :: f_visible = .false.
  contains
    procedure :: jm_setPosition_3 => ABLayer_jm_setPosition_3
    procedure :: jm_moveDXY_2 => ABLayer_jm_moveDXY_2
    procedure :: jm_moveDXYZ_3 => ABLayer_jm_moveDXYZ_3
    procedure :: jm_getXP_0 => ABLayer_jm_getXP_0
    procedure :: jm_getYP_0 => ABLayer_jm_getYP_0
    procedure :: jm_getZP_0 => ABLayer_jm_getZP_0
    procedure :: jm_getWidth_0 => ABLayer_jm_getWidth_0
    procedure :: jm_getHeight_0 => ABLayer_jm_getHeight_0
    procedure :: jm_getDepth_0 => ABLayer_jm_getDepth_0
    procedure :: jm_setVisible_1 => ABLayer_jm_setVisible_1
    procedure :: jm_isVisible_0 => ABLayer_jm_isVisible_0
    procedure :: jm_paint_1 => ABLayer_jm_paint_1
    procedure :: jm_setLayerWidth_1 => ABLayer_jm_setLayerWidth_1
    procedure :: jm_setLayerHeight_1 => ABLayer_jm_setLayerHeight_1
    procedure :: jm_toStringAppend_1 => ABLayer_jm_toStringAppend_1
  end type

  integer(4), save :: ABLayer_jcell_ID
  logical, save :: ABLayer_jset_ID = .false.

contains

  function ABLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ABLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ABLayer)
      jresult => object
    end select
  end function

  function ABLayer_jstatic_ID() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. ABLayer_jset_ID) then
      ABLayer_jset_ID = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    ABLayer_jcell_ID = jtemp1%jm_getAt_1(0)
    end if
    jresult = ABLayer_jcell_ID
  end function

  subroutine ABLayer_jsetstatic_ID(jvalue)
    integer(4), value :: jvalue
    ABLayer_jset_ID = .true.
    ABLayer_jcell_ID = jvalue
  end subroutine

  recursive function ABLayer_jnew_2(j_width, j_height) result(this)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(ABLayer), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ABLayer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
    this%f_z = 3
    
    
    this%f_visible = .true.
        call this%jm_setLayerWidth_1(j_width)
        call this%jm_setLayerHeight_1(j_height)
  end function

  recursive subroutine ABLayer_jm_setPosition_3(this, j_x, j_y, j_z)
    class(ABLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        this%f_x = j_x
        this%f_y = j_y
        this%f_z = j_z
  end subroutine

  recursive subroutine ABLayer_jm_moveDXY_2(this, j_dx, j_dy)
    class(ABLayer), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
        this%f_x = (this%f_x + j_dx)
        this%f_y = (this%f_y + j_dy)
  end subroutine

  recursive subroutine ABLayer_jm_moveDXYZ_3(this, j_dx, j_dy, j_dz)
    class(ABLayer), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_dz
        this%f_x = (this%f_x + j_dx)
        this%f_y = (this%f_y + j_dy)
        this%f_z = (this%f_z + j_dz)
  end subroutine

  recursive function ABLayer_jm_getXP_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_x
        return
  end function

  recursive function ABLayer_jm_getYP_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_y
        return
  end function

  recursive function ABLayer_jm_getZP_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_z
        return
  end function

  recursive function ABLayer_jm_getWidth_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_width
        return
  end function

  recursive function ABLayer_jm_getHeight_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_height
        return
  end function

  recursive function ABLayer_jm_getDepth_0(this) result(jresult)
    class(ABLayer), target :: this
    integer(8) :: jresult
        jresult = 0_8
        return
  end function

  recursive subroutine ABLayer_jm_setVisible_1(this, j_visible)
    class(ABLayer), target :: this
    logical, value :: j_visible
        this%f_visible = j_visible
  end subroutine

  recursive function ABLayer_jm_isVisible_0(this) result(jresult)
    class(ABLayer), target :: this
    logical :: jresult
        jresult = this%f_visible
        return
  end function

  recursive subroutine ABLayer_jm_paint_1(this, j_graphics)
    class(ABLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(CommonStrings), pointer :: j_commonStrings
    class(CanvasStrings), pointer :: j_canvasStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_canvasStrings => CanvasStrings_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(j_commonStrings%f_NOT_IMPLEMENTED, this, j_canvasStrings%f_PAINT)
  end subroutine

  recursive subroutine ABLayer_jm_setLayerWidth_1(this, j_width)
    class(ABLayer), target :: this
    integer(4), value :: j_width
        if ((j_width < 0)) then
            error stop JR_toString(JR_newJObject('IllegalArgumentException'))
        end if
        this%f_width = j_width
  end subroutine

  recursive subroutine ABLayer_jm_setLayerHeight_1(this, j_height)
    class(ABLayer), target :: this
    integer(4), value :: j_height
        if ((j_height < 0)) then
            error stop JR_toString(JR_newJObject('IllegalArgumentException'))
        end if
        this%f_height = j_height
  end subroutine

  recursive subroutine ABLayer_jm_toStringAppend_1(this, j_stringBuffer)
    class(ABLayer), target :: this
    class(StringMaker), target, optional :: j_stringBuffer
    continue
  end subroutine
end module ABLayer_m

