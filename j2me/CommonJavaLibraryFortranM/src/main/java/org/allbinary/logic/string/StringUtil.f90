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
! package org.allbinary.logic.string
module StringUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: StringUtil
    character(len=:), allocatable :: f_INIT_STRING
    character(len=:), allocatable :: f_NULL_STRING
    character(len=:), allocatable :: f_EMPTY_STRING
    type(JString), allocatable :: f_ONE_EMPTY_STRING_ARRAY(:)
    type(JString), allocatable :: f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS(:,:)
    type(JString), allocatable :: f_stringArray(:)
  contains
    procedure :: jm_getNonNull_1 => StringUtil_jm_getNonNull_1
    procedure :: jm_getArrayInstance_0 => StringUtil_jm_getArrayInstance_0
    procedure :: jm_count_2 => StringUtil_jm_count_2
    procedure :: jm_toString_1 => StringUtil_jm_toString_1
  end type

  class(StringUtil), pointer, save :: StringUtil_jcell_instance => null()
  logical, save :: StringUtil_jset_instance = .false.

contains

  function StringUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StringUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StringUtil)
      jresult => object
    end select
  end function

  function StringUtil_jstatic_instance() result(jresult)
    class(StringUtil), pointer :: jresult
    if (.not. StringUtil_jset_instance) then
      StringUtil_jset_instance = .true.
      StringUtil_jcell_instance => StringUtil_jnew_0()
    end if
    jresult => StringUtil_jcell_instance
  end function

  subroutine StringUtil_jsetstatic_instance(jvalue)
    class(StringUtil), target, optional :: jvalue
    StringUtil_jset_instance = .true.
    if (present(jvalue)) then
      StringUtil_jcell_instance => jvalue
    else
      StringUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function StringUtil_jnew_0() result(this)
    class(StringUtil), pointer :: this
    allocate(this)
    this%jclass = 'StringUtil'
    this%f_INIT_STRING = ''
    this%f_NULL_STRING = ''
    this%f_EMPTY_STRING = ''
    this%f_INIT_STRING = ''
    this%f_NULL_STRING = 'null'
    this%f_EMPTY_STRING = ''
    this%f_ONE_EMPTY_STRING_ARRAY = [JString :: JString(this%f_EMPTY_STRING)]
    this%f_ONE_EMPTY_STRING_ARRAY_OF_ARRAYS = JR_newStringArray2(0, 0)
    this%f_stringArray = JR_newStringArray(0)
        continue
  end function

  recursive function StringUtil_jm_getInstance_0() result(jresult)
    class(StringUtil), pointer :: jresult
        jresult => StringUtil_jstatic_instance()
        return
  end function

  recursive function StringUtil_jm_getNonNull_1(this, j_string) result(jresult)
    class(StringUtil), target :: this
    character(len=*), intent(in) :: j_string
    character(len=:), allocatable :: jresult
        jresult = j_string
        return
  end function

  recursive function StringUtil_jm_getArrayInstance_0(this) result(jresult)
    class(StringUtil), target :: this
    type(JString), allocatable :: jresult(:)
        jresult = this%f_stringArray
        return
  end function

  recursive function StringUtil_jm_count_2(this, j_string, j_aChar) result(jresult)
    class(StringUtil), target :: this
    character(len=*), intent(in) :: j_string
    integer(4), value :: j_aChar
    integer(4) :: jresult
    integer(4) :: j_count
    integer(4) :: j_size
    integer(4) :: j_index
        j_count = 0
        j_size = len(j_string)
        j_index = 0
        do while ((j_index < j_size))
            if ((JR_charAt(j_string, j_index) == j_aChar)) then
                j_count = j_count + 1
            end if
            j_index = j_index + 1
        end do
        jresult = j_count
        return
  end function

  recursive function StringUtil_jm_toString_1(this, j_anyType) result(jresult)
    class(StringUtil), target :: this
    class(JObject), target, optional :: j_anyType
    character(len=:), allocatable :: jresult
        if (present(j_anyType)) then
            jresult = JR_toString(j_anyType)
            return
        else
            jresult = this%f_NULL_STRING
            return
        end if
  end function
end module StringUtil_m

