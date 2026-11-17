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
! package org.allbinary.util
module CircularIndexUtil_m
  use JR_m
  use StringMaker_m
  use CommonLabels_m
  implicit none

  type, extends(JObject) :: CircularIndexUtil
    integer(4) :: f_index = 0
    integer(4) :: f_lastIndex = 0
    integer(4) :: f_size = 0
  contains
    procedure :: jm_next_0 => CircularIndexUtil_jm_next_0
    procedure :: jm_previous_0 => CircularIndexUtil_jm_previous_0
    procedure :: jm_setIndex_1 => CircularIndexUtil_jm_setIndex_1
    procedure :: jm_getIndex_0 => CircularIndexUtil_jm_getIndex_0
    procedure :: jm_setSize_1 => CircularIndexUtil_jm_setSize_1
    procedure :: jm_getSize_0 => CircularIndexUtil_jm_getSize_0
    procedure :: jm_toString_0 => CircularIndexUtil_jm_toString_0
  end type

  class(CircularIndexUtil), pointer, save :: CircularIndexUtil_jcell_NULL_CIRCULAR_INDEX_UTIL => null()
  logical, save :: CircularIndexUtil_jset_NULL_CIRCULAR_INDEX_UTIL = .false.

contains

  function CircularIndexUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CircularIndexUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CircularIndexUtil)
      jresult => object
    end select
  end function

  function CircularIndexUtil_jstatic_NULL_CIRCULAR_INDEX_UTIL() result(jresult)
    class(CircularIndexUtil), pointer :: jresult
    if (.not. CircularIndexUtil_jset_NULL_CIRCULAR_INDEX_UTIL) then
      CircularIndexUtil_jset_NULL_CIRCULAR_INDEX_UTIL = .true.
      CircularIndexUtil_jcell_NULL_CIRCULAR_INDEX_UTIL => CircularIndexUtil_jnew_2(0, 0)
    end if
    jresult => CircularIndexUtil_jcell_NULL_CIRCULAR_INDEX_UTIL
  end function

  recursive function CircularIndexUtil_jnew_2(j_index, j_size) result(this)
    integer(4), value :: j_index
    integer(4), value :: j_size
    class(CircularIndexUtil), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CircularIndexUtil'
    this%f_index = 0
    this%f_lastIndex = 0
    this%f_size = 0
        call this%jm_setSize_1(j_size)
        call this%jm_setIndex_1(j_index)
  end function

  recursive function CircularIndexUtil_jm_next_0(this) result(jresult)
    class(CircularIndexUtil), target :: this
    integer(4) :: jresult
        if ((this%f_index >= this%f_lastIndex)) then
            this%f_index = 0
        else
            this%f_index = this%f_index + 1
        end if
        jresult = this%f_index
        return
  end function

  recursive function CircularIndexUtil_jm_previous_0(this) result(jresult)
    class(CircularIndexUtil), target :: this
    integer(4) :: jresult
        if ((this%f_index < 1)) then
            this%f_index = this%f_lastIndex
        else
            this%f_index = this%f_index - 1
        end if
        jresult = this%f_index
        return
  end function

  recursive subroutine CircularIndexUtil_jm_setIndex_1(this, j_index)
    class(CircularIndexUtil), target :: this
    integer(4), value :: j_index
        if ((j_index > this%f_lastIndex)) then
            return
        end if
        this%f_index = j_index
  end subroutine

  recursive function CircularIndexUtil_jm_getIndex_0(this) result(jresult)
    class(CircularIndexUtil), target :: this
    integer(4) :: jresult
        jresult = this%f_index
        return
  end function

  recursive function CircularIndexUtil_jm_createInstance_1(j_max) result(jresult)
    integer(4), value :: j_max
    class(CircularIndexUtil), pointer :: jresult
        jresult => CircularIndexUtil_jnew_2(0, j_max)
        return
  end function

  recursive function CircularIndexUtil_jm_createInstanceAt_2(j_index, j_max) result(jresult)
    integer(4), value :: j_index
    integer(4), value :: j_max
    class(CircularIndexUtil), pointer :: jresult
        jresult => CircularIndexUtil_jnew_2(j_index, j_max)
        return
  end function

  recursive subroutine CircularIndexUtil_jm_setSize_1(this, j_size)
    class(CircularIndexUtil), target :: this
    integer(4), value :: j_size
        this%f_size = j_size
        this%f_lastIndex = (j_size - 1)
        this%f_index = 0
  end subroutine

  recursive function CircularIndexUtil_jm_getSize_0(this) result(jresult)
    class(CircularIndexUtil), target :: this
    integer(4) :: jresult
        jresult = this%f_size
        return
  end function

  recursive function CircularIndexUtil_jm_toString_0(this) result(jresult)
    class(CircularIndexUtil), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(CommonLabels), pointer :: jtemp8
        jtemp8 => CommonLabels_jm_getInstance_0()
        jtemp7 => StringMaker_jnew_0()
        jtemp6 => jtemp7%jm_append_1(jtemp8%f_INDEX_LABEL)
        jtemp5 => jtemp6%jm_appendint_1(this%f_index)
        jtemp4 => jtemp5%jm_append_1('lastIndex: ')
        jtemp3 => jtemp4%jm_appendint_1(this%f_lastIndex)
        jtemp2 => jtemp3%jm_append_1('size: ')
        jtemp1 => jtemp2%jm_appendint_1(this%f_size)
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module CircularIndexUtil_m

