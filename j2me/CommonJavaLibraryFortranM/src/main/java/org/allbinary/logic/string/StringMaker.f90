! Generated Code Do Not Modify
! package org.allbinary.logic.string
module StringMaker_m
  use JR_m
  use System_m
  use Integer_m
  use Long_m
  use Float_m
  implicit none

  type, extends(JObject) :: StringMaker
    integer(4), allocatable :: f_charArray(:)
    integer(4) :: f_currentLength = 0
  contains
    procedure :: jm_append_1 => StringMaker_jm_append_1
    procedure :: jm_appendchar_1 => StringMaker_jm_appendchar_1
    procedure :: jm_appendCharArray_3 => StringMaker_jm_appendCharArray_3
    procedure :: jm_appendbyte_1 => StringMaker_jm_appendbyte_1
    procedure :: jm_appendshort_1 => StringMaker_jm_appendshort_1
    procedure :: jm_appendint_1 => StringMaker_jm_appendint_1
    procedure :: jm_appendlong_1 => StringMaker_jm_appendlong_1
    procedure :: jm_appendfloat_1 => StringMaker_jm_appendfloat_1
    procedure :: jm_appendboolean_1 => StringMaker_jm_appendboolean_1
    procedure :: jm_ensureCapacity_1 => StringMaker_jm_ensureCapacity_1
    procedure :: jm_min_2 => StringMaker_jm_min_2
    procedure :: jm_delete_2 => StringMaker_jm_delete_2
    procedure :: jm_length_0 => StringMaker_jm_length_0
    procedure :: jm_toString_0 => StringMaker_jm_toString_0
  end type


contains

  function StringMaker_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StringMaker), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StringMaker)
      jresult => object
    end select
  end function

  recursive function StringMaker_jnew_0() result(this)
    class(StringMaker), pointer :: this
    allocate(this)
    this%jclass = 'StringMaker'
    
    
        this%f_charArray = JR_newIntArray(20)
  end function

  recursive function StringMaker_jm_append_1(this, j_string) result(jresult)
    class(StringMaker), target :: this
    character(len=*), intent(in) :: j_string
    class(StringMaker), pointer :: jresult
    integer(4) :: j_stringLength
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringLength = len(j_string)
        call this%jm_ensureCapacity_1((this%f_currentLength + j_stringLength))
        call JR_getChars(j_string, 0, j_stringLength, this%f_charArray, this%f_currentLength)
        this%f_currentLength = (this%f_currentLength + j_stringLength)
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendchar_1(this, j_c) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_c
    class(StringMaker), pointer :: jresult
    integer(4) :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_ensureCapacity_1((this%f_currentLength + 1))
        jtemp1 = this%f_currentLength
        this%f_currentLength = this%f_currentLength + 1
        this%f_charArray((jtemp1) + 1) = j_c
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendCharArray_3(this, j_charArray, j_start, j_end) result(jresult)
    class(StringMaker), target :: this
    integer(4) :: j_charArray(:)
    integer(4), value :: j_start
    integer(4), value :: j_end
    class(StringMaker), pointer :: jresult
    integer(4) :: j_index
    integer(4) :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_ensureCapacity_1((this%f_currentLength + ((j_end - j_start))))
        j_index = j_start
        do while ((j_index < j_end))
            jtemp2 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp2) + 1) = j_charArray((j_index) + 1)
            j_index = j_index + 1
        end do
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendbyte_1(this, j_b) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_b
    class(StringMaker), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%jm_append_1(JR_intString(j_b))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendshort_1(this, j_b) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_b
    class(StringMaker), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%jm_append_1(JR_intString(j_b))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendint_1(this, j_i) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_i
    class(StringMaker), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%jm_append_1(JR_intString(j_i))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendlong_1(this, j_l) result(jresult)
    class(StringMaker), target :: this
    integer(8), value :: j_l
    class(StringMaker), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%jm_append_1(JR_longString(j_l))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendfloat_1(this, j_f) result(jresult)
    class(StringMaker), target :: this
    real(4), value :: j_f
    class(StringMaker), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%jm_append_1(JR_floatString(j_f))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_appendboolean_1(this, j_bool) result(jresult)
    class(StringMaker), target :: this
    logical, value :: j_bool
    class(StringMaker), pointer :: jresult
    integer(4) :: jtemp3
    integer(4) :: jtemp4
    integer(4) :: jtemp5
    integer(4) :: jtemp6
    integer(4) :: jtemp7
    integer(4) :: jtemp8
    integer(4) :: jtemp9
    integer(4) :: jtemp10
    integer(4) :: jtemp11
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (j_bool) then
            call this%jm_ensureCapacity_1((this%f_currentLength + 4))
            jtemp8 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp8) + 1) = iachar('t')
            jtemp9 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp9) + 1) = iachar('r')
            jtemp10 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp10) + 1) = iachar('u')
            jtemp11 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp11) + 1) = iachar('e')
        else
            call this%jm_ensureCapacity_1((this%f_currentLength + 5))
            jtemp3 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp3) + 1) = iachar('f')
            jtemp4 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp4) + 1) = iachar('a')
            jtemp5 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp5) + 1) = iachar('l')
            jtemp6 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp6) + 1) = iachar('s')
            jtemp7 = this%f_currentLength
            this%f_currentLength = this%f_currentLength + 1
            this%f_charArray((jtemp7) + 1) = iachar('e')
        end if
        jresult => this
        return
  end function

  recursive subroutine StringMaker_jm_ensureCapacity_1(this, j_minSize)
    class(StringMaker), target :: this
    integer(4), value :: j_minSize
    integer(4) :: j_oldCapacity
    integer(4) :: j_newCapacity
    integer(4), allocatable :: j_copy(:)
    integer(4) :: j_min
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_oldCapacity = size(this%f_charArray, 1)
        if ((j_minSize > j_oldCapacity)) then
            j_newCapacity = (j_oldCapacity * 3)
            if ((j_newCapacity < j_minSize)) then
                j_newCapacity = j_minSize
            end if
            j_copy = JR_newIntArray(j_newCapacity)
            j_min = this%jm_min_2(size(this%f_charArray, 1), j_newCapacity)
            call JR_arraycopy(this%f_charArray, 0, j_copy, 0, j_min)
            this%f_charArray = j_copy
        end if
  end subroutine

  recursive function StringMaker_jm_min_2(this, j_value, j_value2) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_value
    integer(4), value :: j_value2
    integer(4) :: jresult
        jresult = merge(j_value, j_value2, ((j_value <= j_value2)))
        return
  end function

  recursive function StringMaker_jm_delete_2(this, j_start, j_end) result(jresult)
    class(StringMaker), target :: this
    integer(4), value :: j_start
    integer(4), value :: j_end
    class(StringMaker), pointer :: jresult
        this%f_currentLength = (this%f_currentLength - ((j_end - j_start)))
        jresult => this
        return
  end function

  recursive function StringMaker_jm_length_0(this) result(jresult)
    class(StringMaker), target :: this
    integer(4) :: jresult
        jresult = this%f_currentLength
        return
  end function

  recursive function StringMaker_jm_toString_0(this) result(jresult)
    class(StringMaker), target :: this
    character(len=:), allocatable :: jresult
        jresult = JR_fromChars(this%f_charArray, 0, this%f_currentLength)
        return
  end function
end module StringMaker_m

