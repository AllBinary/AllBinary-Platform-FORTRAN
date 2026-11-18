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
module BasicTouchButtonCellPositionFactory_m
  use JR_m
  use CellPosition_m
  use CellPositionFactory_m
  use LogUtil_m
  use CommonStrings_m
  use TouchButtonLocationHelper_m
  implicit none

  type, extends(JObject) :: BasicTouchButtonCellPositionFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CellPosition), pointer :: f_TOP_RIGHT => null()
    class(CellPosition), pointer :: f_TOP_LEFT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_TOP_LEFT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_TOP_RIGHT => null()
    class(CellPosition), pointer :: f_TOP_SECOND_FROM_LEFT => null()
    class(CellPosition), pointer :: f_TOP_SECOND_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_BOTTOM_RIGHT => null()
    class(CellPosition), pointer :: f_BOTTOM_SECOND_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_RIGHT => null()
    class(CellPosition), pointer :: f_THIRD_FROM_BOTTOM_RIGHT => null()
    class(CellPosition), pointer :: f_FOURTH_FROM_BOTTOM_RIGHT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_BOTTOM_THIRD_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_BOTTOM_FOURTH_FROM_RIGHT => null()
    class(CellPosition), pointer :: f_BOTTOM_SECOND_FROM_LEFT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_LEFT => null()
    class(CellPosition), pointer :: f_THIRD_FROM_BOTTOM_LEFT => null()
    class(CellPosition), pointer :: f_BOTTOM_LEFT => null()
    class(CellPosition), pointer :: f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT => null()
  end type


contains

  function BasicTouchButtonCellPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTouchButtonCellPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTouchButtonCellPositionFactory)
      jresult => object
    end select
  end function

  recursive function BasicTouchButtonCellPositionFactory_jnew_0() result(this)
    class(BasicTouchButtonCellPositionFactory), pointer :: this
    class(TouchButtonLocationHelper), pointer :: j_touchButtonLocationHelper
    class(CellPositionFactory), pointer :: j_cellPositionFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicTouchButtonCellPositionFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
        j_touchButtonLocationHelper => TouchButtonLocationHelper_jnew_0()
        j_cellPositionFactory => CellPositionFactory_jm_getInstance_0()
        call j_cellPositionFactory%jm_init_2(j_touchButtonLocationHelper%jm_getTotalColumns_0(), j_touchButtonLocationHelper%jm_getTotalRows_0())
        this%f_TOP_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(0, 0)
        this%f_TOP_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), 0)
        this%f_BOTTOM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(0, (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
        this%f_BOTTOM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
        this%f_BOTTOM_SECOND_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 2), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
        this%f_SECOND_FROM_BOTTOM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
        this%f_SECOND_FROM_BOTTOM_SECOND_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 2), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
        this%f_BOTTOM_SECOND_FROM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(1, (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
        this%f_SECOND_FROM_BOTTOM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(0, (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
        this%f_SECOND_FROM_BOTTOM_SECOND_FROM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(1, (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
        if ((j_touchButtonLocationHelper%jm_getTotalRows_0() > 2)) then
            this%f_SECOND_FROM_TOP_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(0, 1)
            this%f_SECOND_FROM_TOP_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), 1)
        else
            this%f_SECOND_FROM_TOP_LEFT => j_cellPositionFactory%f_NONE
            this%f_SECOND_FROM_TOP_RIGHT => j_cellPositionFactory%f_NONE
        end if
        if ((j_touchButtonLocationHelper%jm_getTotalRows_0() >= 4)) then
            this%f_THIRD_FROM_BOTTOM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 3))
            this%f_FOURTH_FROM_BOTTOM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 1), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 4))
            this%f_THIRD_FROM_BOTTOM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(0, (j_touchButtonLocationHelper%jm_getTotalRows_0() - 3))
        else
            this%f_THIRD_FROM_BOTTOM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_FOURTH_FROM_BOTTOM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_THIRD_FROM_BOTTOM_LEFT => j_cellPositionFactory%f_NONE
        end if
        if ((j_touchButtonLocationHelper%jm_getTotalColumns_0() >= 4)) then
            this%f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 3), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
            this%f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 4), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 2))
            this%f_BOTTOM_THIRD_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 3), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
            this%f_BOTTOM_FOURTH_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 4), (j_touchButtonLocationHelper%jm_getTotalRows_0() - 1))
            this%f_TOP_SECOND_FROM_LEFT => j_cellPositionFactory%jm_getInstanceColRow_2(1, 0)
            this%f_TOP_SECOND_FROM_RIGHT => j_cellPositionFactory%jm_getInstanceColRow_2((j_touchButtonLocationHelper%jm_getTotalColumns_0() - 2), 0)
        else
            this%f_SECOND_FROM_BOTTOM_THIRD_FROM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_SECOND_FROM_BOTTOM_FOURTH_FROM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_BOTTOM_THIRD_FROM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_BOTTOM_FOURTH_FROM_RIGHT => j_cellPositionFactory%f_NONE
            this%f_TOP_SECOND_FROM_LEFT => j_cellPositionFactory%f_NONE
            this%f_TOP_SECOND_FROM_RIGHT => j_cellPositionFactory%f_NONE
        end if
  end function
end module BasicTouchButtonCellPositionFactory_m

