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
module TouchButtonsMappingPaintable_m
  use JR_m
  use CellPositionFactory_m
  use BasicColor_m
  use Paintable_m
  use LogUtil_m
  use CommonStrings_m
  use TouchButtonLocationHelper_m
  use CommonButtons_m
  use TouchButton_m
  use BasicTouchInputFactory_m
  use TouchButtonBlankResource_m
  implicit none

  type, extends(Paintable) :: TouchButtonsMappingPaintable
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_foregroundColor = 0
    type(JRef), allocatable :: f_paintableTable(:,:)
    class(TouchButtonLocationHelper), pointer :: f_touchButtonLocationHelper => null()
  contains
    procedure :: jm_init_0 => TouchButtonsMappingPaintable_jm_init_0
    procedure :: jm_createPaintableTable_0 => TouchButtonsMappingPaintable_jm_createPaintableTable_0
    procedure :: jm_paint_1 => TouchButtonsMappingPaintable_jm_paint_1
  end type


contains

  function TouchButtonsMappingPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsMappingPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsMappingPaintable)
      jresult => object
    end select
  end function

  recursive function TouchButtonsMappingPaintable_jnew_1(j_basicColor) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(TouchButtonsMappingPaintable), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TouchButtonsMappingPaintable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_paintableTable = JR_newRefArray2(0, 0)
    this%f_touchButtonLocationHelper => TouchButtonLocationHelper_jnew_0()
        this%f_foregroundColor = j_basicColor%jm_intValue_0()
        call this%jm_init_0()
  end function

  recursive subroutine TouchButtonsMappingPaintable_jm_init_0(this)
    class(TouchButtonsMappingPaintable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            this%f_paintableTable = this%jm_createPaintableTable_0()
  end subroutine

  recursive function TouchButtonsMappingPaintable_jm_createPaintableTable_0(this) result(jresult)
    class(TouchButtonsMappingPaintable), target :: this
    type(JRef), allocatable :: jresult(:,:)
    integer(4) :: j_totalColumns
    integer(4) :: j_totalRows
    type(JRef), allocatable :: j_paintableTable(:,:)
    class(CellPositionFactory), pointer :: j_cellPositionFactory
    class(CommonButtons), pointer :: j_commonButtons
    integer(4) :: j_rowIndex
    integer(4) :: j_index
    class(BasicTouchInputFactory), pointer :: jtemp1
        j_totalColumns = this%f_touchButtonLocationHelper%jm_getTotalColumns_0()
        j_totalRows = this%f_touchButtonLocationHelper%jm_getTotalRows_0()
        j_paintableTable = JR_newRefArray2(j_totalColumns, j_totalRows)
        j_cellPositionFactory => CellPositionFactory_jm_getInstance_0()
        j_commonButtons => CommonButtons_jm_getInstance_0()
        j_index = (j_totalColumns - 1)
        do while ((j_index >= 0))
            j_rowIndex = (j_totalRows - 1)
            do while ((j_rowIndex >= 0))
                jtemp1 => BasicTouchInputFactory_jm_getInstance_0()
                this%f_paintableTable((j_index) + 1, (j_rowIndex) + 1)%v = TouchButton_jm_createButton_6(jtemp1%f_NONE, TouchButtonBlankResource_jm_getInstance_0(), j_commonButtons%f_NORMAL_BUTTON, j_cellPositionFactory%jm_getInstanceColRow_2(j_index, j_rowIndex), this%f_touchButtonLocationHelper%jm_getColumnsRemainderHalf_0(), this%f_touchButtonLocationHelper%jm_getRowsRemainderHalf_0())
                j_rowIndex = j_rowIndex - 1
            end do
            j_index = j_index - 1
        end do
        jresult = j_paintableTable
        return
  end function

  recursive subroutine TouchButtonsMappingPaintable_jm_paint_1(this, j_graphics)
    class(TouchButtonsMappingPaintable), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4) :: j_totalColumns
    integer(4) :: j_totalRows
    integer(4) :: j_rowIndex
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_totalColumns = this%f_touchButtonLocationHelper%jm_getTotalColumns_0()
        j_totalRows = this%f_touchButtonLocationHelper%jm_getTotalRows_0()
        j_index = (j_totalColumns - 1)
        do while ((j_index >= 0))
            j_rowIndex = (j_totalRows - 1)
            do while ((j_rowIndex >= 0))
                call this%f_paintableTable((j_index) + 1, (j_rowIndex) + 1)%v%jm_paint_1(j_graphics)
                j_rowIndex = j_rowIndex - 1
            end do
            j_index = j_index - 1
        end do
  end subroutine
end module TouchButtonsMappingPaintable_m

