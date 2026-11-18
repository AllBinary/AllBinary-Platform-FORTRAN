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
module BasicTouchButtonsBuilder_m
  use JR_m
  use LogUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use BaseTouchInput_m
  use CommonButtons_m
  use TouchButtonLocationHelper_m
  use BasicTouchButtonCellPositionFactory_m
  use TouchButton_m
  use BasicTouchInputFactory_m
  use TouchButtonUpResource_m
  use TouchButtonDownResource_m
  use TouchButtonTurnLeftResource_m
  use TouchButtonTurnRightResource_m
  implicit none

  type, extends(BaseTouchInput) :: BasicTouchButtonsBuilder
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getList_0 => BasicTouchButtonsBuilder_jm_getList_0
  end type


contains

  function BasicTouchButtonsBuilder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTouchButtonsBuilder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTouchButtonsBuilder)
      jresult => object
    end select
  end function

  function BasicTouchButtonsBuilder_jnew_0() result(this)
    class(BasicTouchButtonsBuilder), pointer :: this
    allocate(this)
    this%jclass = 'BasicTouchButtonsBuilder'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function BasicTouchButtonsBuilder_jm_getList_0(this) result(jresult)
    class(BasicTouchButtonsBuilder), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(CommonButtons), pointer :: j_commonButtons
    class(TouchButtonLocationHelper), pointer :: j_touchButtonLocationHelper
    class(BasicTouchButtonCellPositionFactory), pointer :: j_basicTouchButtonCellPositionFactory
    class(TouchButton), pointer :: j_UP
    class(TouchButton), pointer :: j_DOWN
    class(TouchButton), pointer :: j_LEFT
    class(TouchButton), pointer :: j_RIGHT
    class(BasicTouchInputFactory), pointer :: jtemp1
    class(BasicTouchInputFactory), pointer :: jtemp2
    class(BasicTouchInputFactory), pointer :: jtemp3
    class(BasicTouchInputFactory), pointer :: jtemp4
    class(BasicArrayListUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
            j_list => BasicArrayListD_jnew_0()
            j_commonButtons => CommonButtons_jm_getInstance_0()
            j_touchButtonLocationHelper => TouchButtonLocationHelper_jnew_0()
            j_basicTouchButtonCellPositionFactory => BasicTouchButtonCellPositionFactory_jnew_0()
            jtemp1 => BasicTouchInputFactory_jm_getInstance_0()
            j_UP => TouchButton_jm_createButton_6(jtemp1%f_UP, TouchButtonUpResource_jm_getInstance_0(), j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_SECOND_FROM_BOTTOM_LEFT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp2 => BasicTouchInputFactory_jm_getInstance_0()
            j_DOWN => TouchButton_jm_createButton_6(jtemp2%f_DOWN, TouchButtonDownResource_jm_getInstance_0(), j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_LEFT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp3 => BasicTouchInputFactory_jm_getInstance_0()
            j_LEFT => TouchButton_jm_createButton_6(jtemp3%f_SPECIAL_BUTTON_FOUR, TouchButtonTurnLeftResource_jm_getInstance_0(), j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_SECOND_FROM_RIGHT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp4 => BasicTouchInputFactory_jm_getInstance_0()
            j_RIGHT => TouchButton_jm_createButton_6(jtemp4%f_SPECIAL_BUTTON_THREE, TouchButtonTurnRightResource_jm_getInstance_0(), j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_RIGHT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jdiscardBoolean = j_list%jm_add_1(j_UP)
            jdiscardBoolean = j_list%jm_add_1(j_LEFT)
            jdiscardBoolean = j_list%jm_add_1(j_RIGHT)
            jdiscardBoolean = j_list%jm_add_1(j_DOWN)
            jresult => j_list
            return
  end function
end module BasicTouchButtonsBuilder_m

function BasicTouchButtonsBuilder_jnew_0_jext() result(this)
  use BasicTouchButtonsBuilder_m, only: JObject, BasicTouchButtonsBuilder_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicTouchButtonsBuilder_jnew_0()
end function

