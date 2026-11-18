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
module TouchButtonLocationHelper_m
  use JR_m
  use DisplayInfoSingleton_m
  use StringMaker_m
  use CommonButtons_m
  implicit none

  type, extends(JObject) :: TouchButtonLocationHelper
    integer(4) :: f_totalColumns = 0
    integer(4) :: f_totalRows = 0
    integer(4) :: f_columnsRemainder = 0
    integer(4) :: f_rowsRemainder = 0
    integer(4) :: f_columnsRemainderHalf = 0
    integer(4) :: f_rowsRemainderHalf = 0
  contains
    procedure :: jm_getTotalColumns_0 => TouchButtonLocationHelper_jm_getTotalColumns_0
    procedure :: jm_getTotalRows_0 => TouchButtonLocationHelper_jm_getTotalRows_0
    procedure :: jm_getColumnsRemainder_0 => TouchButtonLocationHelper_jm_getColumnsRemainder_0
    procedure :: jm_getRowsRemainder_0 => TouchButtonLocationHelper_jm_getRowsRemainder_0
    procedure :: jm_getColumnsRemainderHalf_0 => TouchButtonLocationHelper_jm_getColumnsRemainderHalf_0
    procedure :: jm_getRowsRemainderHalf_0 => TouchButtonLocationHelper_jm_getRowsRemainderHalf_0
    procedure :: jm_toString_0 => TouchButtonLocationHelper_jm_toString_0
  end type


contains

  function TouchButtonLocationHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonLocationHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonLocationHelper)
      jresult => object
    end select
  end function

  recursive function TouchButtonLocationHelper_jnew_0() result(this)
    class(TouchButtonLocationHelper), pointer :: this
    integer(4) :: j_buttonSize
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(CommonButtons), pointer :: jtemp1
    allocate(this)
    this%jclass = 'TouchButtonLocationHelper'
    
    
    
    
    
    
        jtemp1 => CommonButtons_jm_getInstance_0()
        j_buttonSize = jtemp1%f_STANDARD_BUTTON_SIZE
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        this%f_totalColumns = JR_round((real(j_displayInfo%jm_getLastWidth_0(), 4) / real(j_buttonSize, 4)))
        this%f_totalRows = JR_round((real(j_displayInfo%jm_getLastHeight_0(), 4) / real(j_buttonSize, 4)))
        this%f_columnsRemainder = mod(j_displayInfo%jm_getLastWidth_0(), j_buttonSize)
        this%f_columnsRemainderHalf = (shifta(this%f_columnsRemainder, iand(1, 31)))
        this%f_rowsRemainder = mod(j_displayInfo%jm_getLastHeight_0(), j_buttonSize)
        this%f_rowsRemainderHalf = (shifta(this%f_rowsRemainder, iand(1, 31)))
  end function

  recursive function TouchButtonLocationHelper_jm_getTotalColumns_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_totalColumns
        return
  end function

  recursive function TouchButtonLocationHelper_jm_getTotalRows_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_totalRows
        return
  end function

  recursive function TouchButtonLocationHelper_jm_getColumnsRemainder_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_columnsRemainder
        return
  end function

  recursive function TouchButtonLocationHelper_jm_getRowsRemainder_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_rowsRemainder
        return
  end function

  recursive function TouchButtonLocationHelper_jm_getColumnsRemainderHalf_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_columnsRemainderHalf
        return
  end function

  recursive function TouchButtonLocationHelper_jm_getRowsRemainderHalf_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    integer(4) :: jresult
        jresult = this%f_rowsRemainderHalf
        return
  end function

  recursive function TouchButtonLocationHelper_jm_toString_0(this) result(jresult)
    class(TouchButtonLocationHelper), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('totalColumns: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_totalColumns)
        jdiscardRef => j_stringBuffer%jm_append_1(' totalRows: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_totalRows)
        jdiscardRef => j_stringBuffer%jm_append_1(' columnsRemainder: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_columnsRemainder)
        jdiscardRef => j_stringBuffer%jm_append_1(' rowsRemainder: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_rowsRemainder)
        jdiscardRef => j_stringBuffer%jm_append_1(' columnsRemainderHalf: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_columnsRemainderHalf)
        jdiscardRef => j_stringBuffer%jm_append_1(' rowsRemainderHalf: ')
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_rowsRemainderHalf)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module TouchButtonLocationHelper_m

