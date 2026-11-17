! Generated Code Do Not Modify
! package org.allbinary.util
module ArrayUtil_m
  use JR_m
  use MathUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use System_m
  implicit none

  type, extends(JObject) :: ArrayUtil
    class(MathUtil), pointer :: f_mathUtil => null()
  contains
    procedure :: jm_copyOf_2 => ArrayUtil_jm_copyOf_2
    procedure :: jm_copyOfType_3 => ArrayUtil_jm_copyOfType_3
    procedure :: jm_copyOfbyte_2 => ArrayUtil_jm_copyOfbyte_2
    procedure :: jm_copyOfshort_2 => ArrayUtil_jm_copyOfshort_2
    procedure :: jm_copyOfint_2 => ArrayUtil_jm_copyOfint_2
    procedure :: jm_copyOflong_2 => ArrayUtil_jm_copyOflong_2
    procedure :: jm_copyOfchar_2 => ArrayUtil_jm_copyOfchar_2
    procedure :: jm_copyOffloat_2 => ArrayUtil_jm_copyOffloat_2
    procedure :: jm_copyOfdouble_2 => ArrayUtil_jm_copyOfdouble_2
    procedure :: jm_copyOfboolean_2 => ArrayUtil_jm_copyOfboolean_2
    procedure :: jm_reverse_1 => ArrayUtil_jm_reverse_1
    procedure :: jm_flip_3 => ArrayUtil_jm_flip_3
    procedure :: jm_toStringFromTwoDimensionaArray_1 => ArrayUtil_jm_toStringFromTwoDimensionaArray_1
    procedure :: jm_toStringFromObjectArray_1 => ArrayUtil_jm_toStringFromObjectArray_1
    procedure :: jm_toStringFromByteArray_1 => ArrayUtil_jm_toStringFromByteArray_1
  end type

  class(ArrayUtil), pointer, save :: ArrayUtil_jcell_instance => null()
  logical, save :: ArrayUtil_jset_instance = .false.

contains

  function ArrayUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArrayUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArrayUtil)
      jresult => object
    end select
  end function

  function ArrayUtil_jstatic_instance() result(jresult)
    class(ArrayUtil), pointer :: jresult
    if (.not. ArrayUtil_jset_instance) then
      ArrayUtil_jset_instance = .true.
      ArrayUtil_jcell_instance => ArrayUtil_jnew_0()
    end if
    jresult => ArrayUtil_jcell_instance
  end function

  function ArrayUtil_jnew_0() result(this)
    class(ArrayUtil), pointer :: this
    allocate(this)
    this%jclass = 'ArrayUtil'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
  end function

  recursive function ArrayUtil_jm_getInstance_0() result(jresult)
    class(ArrayUtil), pointer :: jresult
        jresult => ArrayUtil_jstatic_instance()
        return
  end function

  recursive function ArrayUtil_jm_copyOf_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    type(JRef) :: j_original(:)
    integer(4), value :: j_newLength
    type(JRef), allocatable :: jresult(:)
        jresult = this%jm_copyOfType_3(j_original, j_newLength, JR_className(j_original))
        return
  end function

  recursive function ArrayUtil_jm_copyOfType_3(this, j_original, j_newLength, j_newType) result(jresult)
    class(ArrayUtil), target :: this
    type(JRef) :: j_original(:)
    integer(4), value :: j_newLength
    character(len=*), intent(in) :: j_newType
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newRefArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfbyte_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_original(:)
    integer(4), value :: j_newLength
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newIntArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfshort_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_original(:)
    integer(4), value :: j_newLength
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newIntArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfint_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_original(:)
    integer(4), value :: j_newLength
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newIntArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOflong_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    integer(8) :: j_original(:)
    integer(4), value :: j_newLength
    integer(8), allocatable :: jresult(:)
    integer(8), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newLongArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfchar_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_original(:)
    integer(4), value :: j_newLength
    integer(4), allocatable :: jresult(:)
    integer(4), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newIntArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOffloat_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    real(4) :: j_original(:)
    integer(4), value :: j_newLength
    real(4), allocatable :: jresult(:)
    real(4), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newFloatArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfdouble_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    real(8) :: j_original(:)
    integer(4), value :: j_newLength
    real(8), allocatable :: jresult(:)
    real(8), allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newDoubleArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive function ArrayUtil_jm_copyOfboolean_2(this, j_original, j_newLength) result(jresult)
    class(ArrayUtil), target :: this
    logical :: j_original(:)
    integer(4), value :: j_newLength
    logical, allocatable :: jresult(:)
    logical, allocatable :: j_copy(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_copy = JR_newBoolArray(j_newLength)
        call JR_arraycopy(j_original, 0, j_copy, 0, this%f_mathUtil%jm_min_2(size(j_original, 1), j_newLength))
        jresult = j_copy
        return
  end function

  recursive subroutine ArrayUtil_jm_reverse_1(this, j_intArray)
    class(ArrayUtil), target :: this
    integer(4) :: j_intArray(:)
    integer(4) :: j_length
    integer(4) :: j_temp
    integer(4) :: j_size
    integer(4) :: j_index
        j_length = (size(j_intArray, 1) - 1)
        continue
        j_size = (j_length / 2)
        j_index = 0
        do while ((j_index <= j_size))
            j_temp = j_intArray((j_index) + 1)
            j_intArray((j_index) + 1) = j_intArray(((j_length - j_index)) + 1)
            j_intArray(((j_length - j_index)) + 1) = j_temp
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine ArrayUtil_jm_flip_3(this, j_intArray, j_width, j_height)
    class(ArrayUtil), target :: this
    integer(4) :: j_intArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4) :: j_length
    integer(4) :: j_temp
    integer(4) :: j_index
    integer(4) :: j_rowIndex
    integer(4) :: j_x
    integer(4) :: j_y
        j_length = (j_height - 1)
        continue
        continue
        continue
        j_y = 0
        do while ((j_y <= (j_length / 2)))
            j_x = 0
            do while ((j_x < j_width))
                j_rowIndex = ((((j_length - j_y)) * j_width))
                j_index = (j_x + ((j_y * j_width)))
                j_temp = j_intArray((j_index) + 1)
                j_intArray((j_index) + 1) = j_intArray(((j_rowIndex + j_x)) + 1)
                j_intArray(((j_rowIndex + j_x)) + 1) = j_temp
                j_x = j_x + 1
            end do
            j_y = j_y + 1
        end do
  end subroutine

  recursive function ArrayUtil_jm_toStringFromTwoDimensionaArray_1(this, j_twoDimensionalIntArray) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_twoDimensionalIntArray(:,:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_endIndex
    integer(4) :: j_endIndex2
    integer(4) :: j_index2
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_endIndex = size(j_twoDimensionalIntArray, 1)
        j_endIndex2 = size(j_twoDimensionalIntArray((0) + 1, :), 1)
        j_index = 0
        do while ((j_index < j_endIndex))
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_BRACE_OPEN)
            j_index2 = 0
            do while ((j_index2 < j_endIndex2))
                jdiscardRef => j_stringBuffer%jm_appendint_1(j_twoDimensionalIntArray((j_index) + 1, (j_index2) + 1))
                jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
                j_index2 = j_index2 + 1
            end do
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_BRACE_CLOSE)
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function ArrayUtil_jm_toStringFromObjectArray_1(this, j_objectArray) result(jresult)
    class(ArrayUtil), target :: this
    type(JRef) :: j_objectArray(:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_index
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(j_objectArray, 1)))
            jtemp1 => StringUtil_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_1(j_objectArray((j_index) + 1)%v))
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function ArrayUtil_jm_toStringFromByteArray_1(this, j_byteArray) result(jresult)
    class(ArrayUtil), target :: this
    integer(4) :: j_byteArray(:)
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_index = 0
        do while ((j_index < size(j_byteArray, 1)))
            jdiscardRef => j_stringBuffer%jm_appendbyte_1(j_byteArray((j_index) + 1))
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA_SEP)
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module ArrayUtil_m

