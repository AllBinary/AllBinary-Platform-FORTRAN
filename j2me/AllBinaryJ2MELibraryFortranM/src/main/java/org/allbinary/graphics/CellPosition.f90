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
! package org.allbinary.graphics
module CellPosition_m
  use JR_m
  use V_m
  use StringMaker_m
  use CommonSeps_m
  implicit none

  type, extends(V) :: CellPosition
    integer(4) :: f_id = 0
    integer(4) :: f_column = 0
    integer(4) :: f_row = 0
  contains
    procedure :: jm_getColumn_0 => CellPosition_jm_getColumn_0
    procedure :: jm_getRow_0 => CellPosition_jm_getRow_0
    procedure :: jm_toString_0 => CellPosition_jm_toString_0
    procedure :: jm_getId_0 => CellPosition_jm_getId_0
  end type


contains

  function CellPosition_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CellPosition), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CellPosition)
      jresult => object
    end select
  end function

  recursive function CellPosition_jnew_4(j_column, j_row, j_columns, j_rows) result(this)
    integer(4), value :: j_column
    integer(4), value :: j_row
    integer(4), value :: j_columns
    integer(4), value :: j_rows
    class(CellPosition), pointer :: this
    allocate(this)
    this%jclass = 'CellPosition'
    
    
    
        this%f_column = j_column
        this%f_row = j_row
        this%f_id = (((j_row * j_columns)) + j_column)
  end function

  recursive function CellPosition_jm_getColumn_0(this) result(jresult)
    class(CellPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_column
        return
  end function

  recursive function CellPosition_jm_getRow_0(this) result(jresult)
    class(CellPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_row
        return
  end function

  recursive function CellPosition_jm_toString_0(this) result(jresult)
    class(CellPosition), target :: this
    character(len=:), allocatable :: jresult
        jresult = CellPosition_jm_toStringColRow_2(this%jm_getColumn_0(), this%jm_getRow_0())
        return
  end function

  recursive function CellPosition_jm_toStringCellPosition_1(j_basicGeographicMapCellPosition) result(jresult)
    class(CellPosition), target, optional :: j_basicGeographicMapCellPosition
    character(len=:), allocatable :: jresult
        jresult = CellPosition_jm_toStringColRow_2(j_basicGeographicMapCellPosition%jm_getColumn_0(), j_basicGeographicMapCellPosition%jm_getRow_0())
        return
  end function

  recursive function CellPosition_jm_toStringColRow_2(j_i_column, j_i_row) result(jresult)
    integer(4), value :: j_i_column
    integer(4), value :: j_i_row
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_PARENTHESIS_OPEN)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_i_column)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_i_row)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_PARENTHESIS_CLOSE)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function CellPosition_jm_getId_0(this) result(jresult)
    class(CellPosition), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function
end module CellPosition_m

function CellPosition_jnew_4_jext(p1, p2, p3, p4) result(this)
  use CellPosition_m, only: JObject, CellPosition_jnew_4
  implicit none
      integer(4), value :: p1
      integer(4), value :: p2
      integer(4), value :: p3
      integer(4), value :: p4
  class(JObject), pointer :: this
  this => CellPosition_jnew_4(p1, p2, p3, p4)
end function

