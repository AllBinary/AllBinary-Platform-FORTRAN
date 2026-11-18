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
module BasicNeededTouchButtonsBuilder_m
  use JR_m
  use Animation_m
  use NullAnimationFactory_m
  use LogUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use BaseTouchInput_m
  use TouchButtonLocationHelper_m
  use BasicTouchButtonCellPositionFactory_m
  use CommonButtons_m
  use TouchButton_m
  use BasicTouchInputFactory_m
  implicit none

  type, extends(BaseTouchInput) :: BasicNeededTouchButtonsBuilder
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getList_0 => BasicNeededTouchButtonsBuilder_jm_getList_0
  end type


contains

  function BasicNeededTouchButtonsBuilder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicNeededTouchButtonsBuilder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicNeededTouchButtonsBuilder)
      jresult => object
    end select
  end function

  function BasicNeededTouchButtonsBuilder_jnew_0() result(this)
    class(BasicNeededTouchButtonsBuilder), pointer :: this
    allocate(this)
    this%jclass = 'BasicNeededTouchButtonsBuilder'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function BasicNeededTouchButtonsBuilder_jm_getList_0(this) result(jresult)
    class(BasicNeededTouchButtonsBuilder), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(TouchButtonLocationHelper), pointer :: j_touchButtonLocationHelper
    class(BasicTouchButtonCellPositionFactory), pointer :: j_basicTouchButtonCellPositionFactory
    class(CommonButtons), pointer :: j_commonButtons
    class(Animation), pointer :: j_animationInterface
    class(TouchButton), pointer :: j_UP
    class(TouchButton), pointer :: j_DOWN
    class(TouchButton), pointer :: j_LEFT
    class(TouchButton), pointer :: j_RIGHT
    class(NullAnimationFactory), pointer :: jtemp1
    class(BasicTouchInputFactory), pointer :: jtemp2
    class(BasicTouchInputFactory), pointer :: jtemp3
    class(BasicTouchInputFactory), pointer :: jtemp4
    class(BasicTouchInputFactory), pointer :: jtemp5
    class(BasicArrayListUtil), pointer :: jtemp6
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
            j_touchButtonLocationHelper => TouchButtonLocationHelper_jnew_0()
            j_basicTouchButtonCellPositionFactory => BasicTouchButtonCellPositionFactory_jnew_0()
            j_commonButtons => CommonButtons_jm_getInstance_0()
            jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
            j_animationInterface => jtemp1%jm_getInstance_1(0)
            jtemp2 => BasicTouchInputFactory_jm_getInstance_0()
            j_UP => TouchButton_jnew_7(jtemp2%f_UP, j_animationInterface, j_animationInterface, j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_SECOND_FROM_BOTTOM_LEFT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp3 => BasicTouchInputFactory_jm_getInstance_0()
            j_DOWN => TouchButton_jnew_7(jtemp3%f_DOWN, j_animationInterface, j_animationInterface, j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_LEFT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp4 => BasicTouchInputFactory_jm_getInstance_0()
            j_LEFT => TouchButton_jnew_7(jtemp4%f_LEFT, j_animationInterface, j_animationInterface, j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_SECOND_FROM_RIGHT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jtemp5 => BasicTouchInputFactory_jm_getInstance_0()
            j_RIGHT => TouchButton_jnew_7(jtemp5%f_RIGHT, j_animationInterface, j_animationInterface, j_commonButtons%f_NORMAL_BUTTON, j_basicTouchButtonCellPositionFactory%f_BOTTOM_RIGHT, j_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), j_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
            jdiscardBoolean = j_list%jm_add_1(j_UP)
            jdiscardBoolean = j_list%jm_add_1(j_DOWN)
            jdiscardBoolean = j_list%jm_add_1(j_LEFT)
            jdiscardBoolean = j_list%jm_add_1(j_RIGHT)
            jresult => j_list
            return
  end function
end module BasicNeededTouchButtonsBuilder_m

function BasicNeededTouchButtonsBuilder_jnew_0_jext() result(this)
  use BasicNeededTouchButtonsBuilder_m, only: JObject, BasicNeededTouchButtonsBuilder_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicNeededTouchButtonsBuilder_jnew_0()
end function

