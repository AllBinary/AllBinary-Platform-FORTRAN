! Generated Code Do Not Modify
! package org.allbinary.util
module BasicArrayList_m
  use JR_m
  use StringMaker_m
  use CommonLabels_m
  use CommonSeps_m
  use System_m
  use ArrayUtil_m
  implicit none
  interface
    function BasicArrayListS_jnew_1_jext(p1) result(this)
      import :: JObject
      integer(4), value :: p1
      class(JObject), pointer :: this
    end function
  end interface

  type, extends(JObject) :: BasicArrayList
    class(ArrayUtil), pointer :: f_arrayUtil => null()
    type(JRef), allocatable :: f_objectArray(:)
    integer(4) :: f_currentIndex = 0
  contains
    procedure :: jm_addAt_2 => BasicArrayList_jm_addAt_2
    procedure :: jm_add_1 => BasicArrayList_jm_add_1
    procedure :: jm_removeAt_1 => BasicArrayList_jm_removeAt_1
    procedure :: jm_remove_1 => BasicArrayList_jm_remove_1
    procedure :: jm_removeAll2_1 => BasicArrayList_jm_removeAll2_1
    procedure :: jm_addAll2_1 => BasicArrayList_jm_addAll2_1
    procedure :: jm_addAllList_1 => BasicArrayList_jm_addAllList_1
    procedure :: jm_addAll_1 => BasicArrayList_jm_addAll_1
    procedure :: jm_ensureCapacity_1 => BasicArrayList_jm_ensureCapacity_1
    procedure :: jm_trimToSize_0 => BasicArrayList_jm_trimToSize_0
    procedure :: jm_indexOf_1 => BasicArrayList_jm_indexOf_1
    procedure :: jm_lastIndexOf_1 => BasicArrayList_jm_lastIndexOf_1
    procedure :: jm_get_1 => BasicArrayList_jm_get_1
    procedure :: jm_set_2 => BasicArrayList_jm_set_2
    procedure :: jm_clear_0 => BasicArrayList_jm_clear_0
    procedure :: jm_size_0 => BasicArrayList_jm_size_0
    procedure :: jm_isEmpty_0 => BasicArrayList_jm_isEmpty_0
    procedure :: jm_contains_1 => BasicArrayList_jm_contains_1
    procedure :: jm_toArray_0 => BasicArrayList_jm_toArray_0
    procedure :: jm_toArrayType_1 => BasicArrayList_jm_toArrayType_1
    procedure :: jm_clone_0 => BasicArrayList_jm_clone_0
    procedure :: jm_toString_0 => BasicArrayList_jm_toString_0
  end type

  character(len=:), allocatable, save :: BasicArrayList_jcell_SIZE
  logical, save :: BasicArrayList_jset_SIZE = .false.

contains

  function BasicArrayList_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicArrayList), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicArrayList)
      jresult => object
    end select
  end function

  function BasicArrayList_jstatic_SIZE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BasicArrayList_jset_SIZE) then
      BasicArrayList_jset_SIZE = .true.
      BasicArrayList_jcell_SIZE = ', Size: '
    end if
    jresult = BasicArrayList_jcell_SIZE
  end function

  subroutine BasicArrayList_jsetstatic_SIZE(jvalue)
    character(len=*), intent(in) :: jvalue
    BasicArrayList_jset_SIZE = .true.
    BasicArrayList_jcell_SIZE = jvalue
  end subroutine

  recursive function BasicArrayList_jnew_1(j_objectArray) result(this)
    type(JRef) :: j_objectArray(:)
    class(BasicArrayList), pointer :: this
    allocate(this)
    this%jclass = 'BasicArrayList'
    this%f_arrayUtil => ArrayUtil_jm_getInstance_0()
    
    this%f_currentIndex = 0
        this%f_objectArray = j_objectArray
  end function

  recursive subroutine BasicArrayList_jm_addAt_2(this, j_index, j_element)
    class(BasicArrayList), target :: this
    integer(4), value :: j_index
    class(JObject), target, optional :: j_element
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonLabels), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((j_index > this%f_currentIndex) .or. (j_index < 0))) then
            j_stringBuffer => StringMaker_jnew_0()
            jtemp1 => CommonLabels_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_INDEX_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(BasicArrayList_jstatic_SIZE())
            jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_currentIndex)
            error stop JR_toString(JR_newJObject('IndexOutOfBoundsException'))
        end if
        call this%jm_ensureCapacity_1((this%f_currentIndex + 1))
        call JR_arraycopy(this%f_objectArray, j_index, this%f_objectArray, (j_index + 1), (this%f_currentIndex - j_index))
        this%f_objectArray((j_index) + 1)%v => j_element
        this%f_currentIndex = this%f_currentIndex + 1
  end subroutine

  recursive function BasicArrayList_jm_add_1(this, j_anyType) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    logical :: jresult
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_ensureCapacity_1((this%f_currentIndex + 1))
        jtemp2 = this%f_currentIndex
        this%f_currentIndex = this%f_currentIndex + 1
        this%f_objectArray((jtemp2) + 1)%v => j_anyType
        jresult = .true.
        return
  end function

  recursive function BasicArrayList_jm_removeAt_1(this, j_index) result(jresult)
    class(BasicArrayList), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: j_oldValue
    integer(4) :: j_numMoved
    class(CommonLabels), pointer :: jtemp3
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_index >= this%f_currentIndex)) then
            j_stringBuffer => StringMaker_jnew_0()
            jtemp3 => CommonLabels_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_INDEX_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(BasicArrayList_jstatic_SIZE())
            jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_currentIndex)
            error stop JR_toString(JR_newJObject('IndexOutOfBoundsException'))
        end if
        j_oldValue => this%f_objectArray((j_index) + 1)%v
        j_numMoved = ((this%f_currentIndex - j_index) - 1)
        if ((j_numMoved > 0)) then
            call JR_arraycopy(this%f_objectArray, (j_index + 1), this%f_objectArray, j_index, j_numMoved)
        end if
        this%f_currentIndex = this%f_currentIndex - 1
        jtemp4 = this%f_currentIndex
        this%f_objectArray((jtemp4) + 1)%v => null()
        jresult => j_oldValue
        return
  end function

  recursive function BasicArrayList_jm_remove_1(this, j_anyType) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    logical :: jresult
    integer(4) :: j_numMoved
    integer(4) :: j_index
    integer(4) :: jtemp5
    integer(4) :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. present(j_anyType))) then
            j_index = 0
            do while ((j_index < this%f_currentIndex))
                if ((.not. associated(this%f_objectArray((j_index) + 1)%v))) then
                    j_numMoved = ((this%f_currentIndex - j_index) - 1)
                    if ((j_numMoved > 0)) then
                        call JR_arraycopy(this%f_objectArray, (j_index + 1), this%f_objectArray, j_index, j_numMoved)
                    end if
                    this%f_currentIndex = this%f_currentIndex - 1
                    jtemp6 = this%f_currentIndex
                    this%f_objectArray((jtemp6) + 1)%v => null()
                    jresult = .true.
                    return
                end if
                j_index = j_index + 1
            end do
        else
            j_index = 0
            do while ((j_index < this%f_currentIndex))
                if ((JR_same(j_anyType, this%f_objectArray((j_index) + 1)%v) .or. JR_same(j_anyType, this%f_objectArray((j_index) + 1)%v))) then
                    j_numMoved = ((this%f_currentIndex - j_index) - 1)
                    if ((j_numMoved > 0)) then
                        call JR_arraycopy(this%f_objectArray, (j_index + 1), this%f_objectArray, j_index, j_numMoved)
                    end if
                    this%f_currentIndex = this%f_currentIndex - 1
                    jtemp5 = this%f_currentIndex
                    this%f_objectArray((jtemp5) + 1)%v => null()
                    jresult = .true.
                    return
                end if
                j_index = j_index + 1
            end do
        end if
        jresult = .false.
        return
  end function

  recursive function BasicArrayList_jm_removeAll2_1(this, j_list) result(jresult)
    class(BasicArrayList), target :: this
    class(BasicArrayList), target, optional :: j_list
    logical :: jresult
    logical :: j_result
    integer(4) :: j_size
    integer(4) :: j_index
        j_result = .true.
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            if (this%jm_remove_1(j_list%jm_get_1(j_index))) then
                continue
            else
                j_result = .false.
            end if
            j_index = j_index + 1
        end do
        jresult = j_result
        return
  end function

  recursive function BasicArrayList_jm_addAll2_1(this, j_list) result(jresult)
    class(BasicArrayList), target :: this
    class(BasicArrayList), target, optional :: j_list
    logical :: jresult
    integer(4) :: j_listSize
    integer(4) :: j_index
    integer(4) :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_ensureCapacity_1((this%f_currentIndex + j_list%f_currentIndex))
        j_listSize = j_list%f_currentIndex
        j_index = 0
        do while ((j_index < j_listSize))
            jtemp7 = this%f_currentIndex
            this%f_currentIndex = this%f_currentIndex + 1
            this%f_objectArray((jtemp7) + 1)%v => j_list%f_objectArray((j_index) + 1)%v
            j_index = j_index + 1
        end do
        jresult = .true.
        return
  end function

  recursive function BasicArrayList_jm_addAllList_1(this, j_list) result(jresult)
    class(BasicArrayList), target :: this
    class(BasicArrayList), target, optional :: j_list
    logical :: jresult
    type(JRef), allocatable :: j_newObjectArray(:)
        j_newObjectArray = j_list%jm_toArray_0()
        jresult = this%jm_addAll_1(j_newObjectArray)
        return
  end function

  recursive function BasicArrayList_jm_addAll_1(this, j_newObjectArray) result(jresult)
    class(BasicArrayList), target :: this
    type(JRef) :: j_newObjectArray(:)
    logical :: jresult
    integer(4) :: j_numSize
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_numSize = size(j_newObjectArray, 1)
        call this%jm_ensureCapacity_1((this%f_currentIndex + j_numSize))
        call JR_arraycopy(j_newObjectArray, 0, this%f_objectArray, this%f_currentIndex, j_numSize)
        this%f_currentIndex = (this%f_currentIndex + j_numSize)
        jresult = (j_numSize /= 0)
        return
  end function

  recursive subroutine BasicArrayList_jm_ensureCapacity_1(this, j_minSize)
    class(BasicArrayList), target :: this
    integer(4), value :: j_minSize
    integer(4) :: j_oldCapacity
    integer(4) :: j_newCapacity
        j_oldCapacity = size(this%f_objectArray, 1)
        if ((j_minSize > j_oldCapacity)) then
            j_newCapacity = ((shifta(((j_oldCapacity * 3)), iand(1, 31))) + 1)
            if ((j_newCapacity < j_minSize)) then
                j_newCapacity = j_minSize
            end if
            this%f_objectArray = this%f_arrayUtil%jm_copyOf_2(this%f_objectArray, j_newCapacity)
        end if
  end subroutine

  recursive subroutine BasicArrayList_jm_trimToSize_0(this)
    class(BasicArrayList), target :: this
    integer(4) :: j_oldCapacity
        j_oldCapacity = size(this%f_objectArray, 1)
        if ((this%f_currentIndex < j_oldCapacity)) then
            this%f_objectArray = this%f_arrayUtil%jm_copyOf_2(this%f_objectArray, this%f_currentIndex)
        end if
  end subroutine

  recursive function BasicArrayList_jm_indexOf_1(this, j_anyType) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
    integer(4) :: j_i
        if ((.not. present(j_anyType))) then
            j_i = 0
            do while ((j_i < this%f_currentIndex))
                if ((.not. associated(this%f_objectArray((j_i) + 1)%v))) then
                    jresult = j_i
                    return
                end if
                j_i = j_i + 1
            end do
        else
            j_i = 0
            do while ((j_i < this%f_currentIndex))
                if (JR_same(j_anyType, this%f_objectArray((j_i) + 1)%v)) then
                    jresult = j_i
                    return
                end if
                j_i = j_i + 1
            end do
        end if
        jresult = (-1)
        return
  end function

  recursive function BasicArrayList_jm_lastIndexOf_1(this, j_anyType) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    integer(4) :: jresult
    integer(4) :: j_i
        if ((.not. present(j_anyType))) then
            j_i = (this%f_currentIndex - 1)
            do while ((j_i >= 0))
                if ((.not. associated(this%f_objectArray((j_i) + 1)%v))) then
                    jresult = j_i
                    return
                end if
                j_i = j_i - 1
            end do
        else
            j_i = (this%f_currentIndex - 1)
            do while ((j_i >= 0))
                if (JR_same(j_anyType, this%f_objectArray((j_i) + 1)%v)) then
                    jresult = j_i
                    return
                end if
                j_i = j_i - 1
            end do
        end if
        jresult = (-1)
        return
  end function

  recursive function BasicArrayList_jm_get_1(this, j_index) result(jresult)
    class(BasicArrayList), target :: this
    integer(4), value :: j_index
    class(JObject), pointer :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonLabels), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_index >= this%f_currentIndex)) then
            j_stringBuffer => StringMaker_jnew_0()
            jtemp8 => CommonLabels_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp8%f_INDEX_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(BasicArrayList_jstatic_SIZE())
            jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_currentIndex)
            error stop JR_toString(JR_newJObject('IndexOutOfBoundsException'))
        end if
        jresult => this%f_objectArray((j_index) + 1)%v
        return
  end function

  recursive function BasicArrayList_jm_set_2(this, j_index, j_element) result(jresult)
    class(BasicArrayList), target :: this
    integer(4), value :: j_index
    class(JObject), target, optional :: j_element
    class(JObject), pointer :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: j_oldValue
    class(CommonLabels), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_index >= this%f_currentIndex)) then
            j_stringBuffer => StringMaker_jnew_0()
            jtemp9 => CommonLabels_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp9%f_INDEX_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_index)
            jdiscardRef => j_stringBuffer%jm_append_1(BasicArrayList_jstatic_SIZE())
            jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_currentIndex)
            error stop JR_toString(JR_newJObject('IndexOutOfBoundsException'))
        end if
        j_oldValue => this%f_objectArray((j_index) + 1)%v
        this%f_objectArray((j_index) + 1)%v => j_element
        jresult => j_oldValue
        return
  end function

  recursive subroutine BasicArrayList_jm_clear_0(this)
    class(BasicArrayList), target :: this
    integer(4) :: j_i
        j_i = 0
        do while ((j_i < this%f_currentIndex))
            this%f_objectArray((j_i) + 1)%v => null()
            j_i = j_i + 1
        end do
        this%f_currentIndex = 0
  end subroutine

  recursive function BasicArrayList_jm_size_0(this) result(jresult)
    class(BasicArrayList), target :: this
    integer(4) :: jresult
        jresult = this%f_currentIndex
        return
  end function

  recursive function BasicArrayList_jm_isEmpty_0(this) result(jresult)
    class(BasicArrayList), target :: this
    logical :: jresult
        jresult = (this%f_currentIndex == 0)
        return
  end function

  recursive function BasicArrayList_jm_contains_1(this, j_anyType) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), target, optional :: j_anyType
    logical :: jresult
        jresult = (this%jm_indexOf_1(j_anyType) >= 0)
        return
  end function

  recursive function BasicArrayList_jm_toArray_0(this) result(jresult)
    class(BasicArrayList), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_arrayUtil%jm_copyOf_2(this%f_objectArray, this%f_currentIndex)
        return
  end function

  recursive function BasicArrayList_jm_toArrayType_1(this, j_objectArray) result(jresult)
    class(BasicArrayList), target :: this
    type(JRef) :: j_objectArray(:)
    type(JRef), allocatable :: jresult(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((size(j_objectArray, 1) < this%f_currentIndex)) then
            jresult = this%f_arrayUtil%jm_copyOfType_3(this%f_objectArray, this%f_currentIndex, JR_className(j_objectArray))
            return
        end if
        call JR_arraycopy(this%f_objectArray, 0, j_objectArray, 0, this%f_currentIndex)
        if ((size(j_objectArray, 1) > this%f_currentIndex)) then
            j_objectArray((this%f_currentIndex) + 1)%v => null()
        end if
        jresult = j_objectArray
        return
  end function

  recursive function BasicArrayList_jm_clone_0(this) result(jresult)
    class(BasicArrayList), target :: this
    class(JObject), pointer :: jresult
    integer(4) :: j_size
    class(BasicArrayList), pointer :: j_list
    class(JObject), pointer :: j_anyType
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%jm_size_0()
        j_list => BasicArrayList_jcast(BasicArrayListS_jnew_1_jext(j_size))
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_anyType => this%f_objectArray((j_index) + 1)%v
            jdiscardBoolean = j_list%jm_add_1(j_anyType)
            j_index = j_index + 1
        end do
        jresult => j_list
        return
  end function

  recursive function BasicArrayList_jm_toString_0(this) result(jresult)
    class(BasicArrayList), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: j_COMMA_SEP
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_index
    class(CommonSeps), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp10 => CommonSeps_jm_getInstance_0()
        j_COMMA_SEP = jtemp10%f_COMMA_SEP
        j_stringBuffer => StringMaker_jnew_0()
        j_index = 0
        do while ((j_index < this%f_currentIndex))
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(this%f_objectArray((j_index) + 1)%v))
            jdiscardRef => j_stringBuffer%jm_append_1(j_COMMA_SEP)
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BasicArrayList_m

