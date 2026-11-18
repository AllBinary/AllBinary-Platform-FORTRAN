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
module CellPositionFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use CellPosition_m
  implicit none

  type, extends(JObject) :: CellPositionFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CellPosition), pointer :: f_NONE => null()
    type(JRef), allocatable :: f_cellPositionArray(:,:)
    integer(4) :: f_columns = 0
    integer(4) :: f_rows = 0
  contains
    procedure :: jm_init_2 => CellPositionFactory_jm_init_2
    procedure :: jm_getInstanceColRow_2 => CellPositionFactory_jm_getInstanceColRow_2
    procedure :: jm_createInstance_2 => CellPositionFactory_jm_createInstance_2
    procedure :: jm_getColumns_0 => CellPositionFactory_jm_getColumns_0
    procedure :: jm_getRows_0 => CellPositionFactory_jm_getRows_0
  end type

  class(CellPositionFactory), pointer, save :: CellPositionFactory_jcell_SINGLETON => null()
  logical, save :: CellPositionFactory_jset_SINGLETON = .false.

contains

  function CellPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CellPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CellPositionFactory)
      jresult => object
    end select
  end function

  function CellPositionFactory_jstatic_SINGLETON() result(jresult)
    class(CellPositionFactory), pointer :: jresult
    if (.not. CellPositionFactory_jset_SINGLETON) then
      CellPositionFactory_jset_SINGLETON = .true.
      CellPositionFactory_jcell_SINGLETON => CellPositionFactory_jnew_0()
    end if
    jresult => CellPositionFactory_jcell_SINGLETON
  end function

  subroutine CellPositionFactory_jsetstatic_SINGLETON(jvalue)
    class(CellPositionFactory), target, optional :: jvalue
    CellPositionFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      CellPositionFactory_jcell_SINGLETON => jvalue
    else
      CellPositionFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function CellPositionFactory_jnew_0() result(this)
    class(CellPositionFactory), pointer :: this
    allocate(this)
    this%jclass = 'CellPositionFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_NONE => CellPosition_jnew_4((-1), (-1), (-1), (-1))
    this%f_cellPositionArray = JR_newRefArray2(0, 0)
    
    
        continue
  end function

  recursive function CellPositionFactory_jm_getInstance_0() result(jresult)
    class(CellPositionFactory), pointer :: jresult
        jresult => CellPositionFactory_jstatic_SINGLETON()
        return
  end function

  recursive subroutine CellPositionFactory_jm_init_2(this, j_columns, j_rows)
    class(CellPositionFactory), target :: this
    integer(4), value :: j_columns
    integer(4), value :: j_rows
    class(CommonStrings), pointer :: j_commonStrings
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_row
    integer(4) :: j_column
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Init: columns: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_columns)
        jdiscardRef => j_stringBuffer%jm_append_1(' rows: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_rows)
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_INIT)
        this%f_cellPositionArray = JR_newRefArray2(j_columns, j_rows)
        this%f_columns = j_columns
        this%f_rows = j_rows
        j_column = 0
        do while ((j_column < j_columns))
            j_row = 0
            do while ((j_row < j_rows))
                jdiscardRef => this%jm_createInstance_2(j_column, j_row)
                j_row = j_row + 1
            end do
            j_column = j_column + 1
        end do
  end subroutine

  recursive function CellPositionFactory_jm_getInstanceColRow_2(this, j_i_column, j_i_row) result(jresult)
    class(CellPositionFactory), target :: this
    integer(4), value :: j_i_column
    integer(4), value :: j_i_row
    class(CellPosition), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult => this%f_cellPositionArray((j_i_column) + 1, (j_i_row) + 1)%v
            return
  end function

  recursive function CellPositionFactory_jm_createInstance_2(this, j_i_column, j_i_row) result(jresult)
    class(CellPositionFactory), target :: this
    integer(4), value :: j_i_column
    integer(4), value :: j_i_row
    class(CellPosition), pointer :: jresult
    class(CellPosition), pointer :: j_cellPositionCanBeNull
        j_cellPositionCanBeNull => this%f_cellPositionArray((j_i_column) + 1, (j_i_row) + 1)%v
        if ((.not. associated(j_cellPositionCanBeNull))) then
            j_cellPositionCanBeNull => CellPosition_jnew_4(j_i_column, j_i_row, this%f_columns, this%f_rows)
            this%f_cellPositionArray((j_i_column) + 1, (j_i_row) + 1)%v = j_cellPositionCanBeNull
        end if
        jresult => j_cellPositionCanBeNull
        return
  end function

  recursive function CellPositionFactory_jm_getColumns_0(this) result(jresult)
    class(CellPositionFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_columns
        return
  end function

  recursive function CellPositionFactory_jm_getRows_0(this) result(jresult)
    class(CellPositionFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_rows
        return
  end function
end module CellPositionFactory_m

