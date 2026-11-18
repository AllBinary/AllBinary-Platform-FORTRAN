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
module StringValidationUtil_m
  use JR_m
  use TsUtil_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: StringValidationUtil
    class(StringUtil), pointer :: f_stringUtil => null()
    class(TsUtil), pointer :: f_tsUtil => null()
  contains
    procedure :: jm_containsSpaces_1 => StringValidationUtil_jm_containsSpaces_1
    procedure :: jm_isNumber_1 => StringValidationUtil_jm_isNumber_1
    procedure :: jm_isNumberFromChar_1 => StringValidationUtil_jm_isNumberFromChar_1
    procedure :: jm_isValidRequired_3 => StringValidationUtil_jm_isValidRequired_3
    procedure :: jm_isValidRequiredNumber_3 => StringValidationUtil_jm_isValidRequiredNumber_3
    procedure :: jm_isValidNotRequired_3 => StringValidationUtil_jm_isValidNotRequired_3
    procedure :: jm_isValidNotRequiredNumber_3 => StringValidationUtil_jm_isValidNotRequiredNumber_3
    procedure :: jm_isEmpty_1 => StringValidationUtil_jm_isEmpty_1
  end type

  class(StringValidationUtil), pointer, save :: StringValidationUtil_jcell_instance => null()
  logical, save :: StringValidationUtil_jset_instance = .false.

contains

  function StringValidationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StringValidationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StringValidationUtil)
      jresult => object
    end select
  end function

  function StringValidationUtil_jstatic_instance() result(jresult)
    class(StringValidationUtil), pointer :: jresult
    if (.not. StringValidationUtil_jset_instance) then
      StringValidationUtil_jset_instance = .true.
      StringValidationUtil_jcell_instance => StringValidationUtil_jnew_0()
    end if
    jresult => StringValidationUtil_jcell_instance
  end function

  subroutine StringValidationUtil_jsetstatic_instance(jvalue)
    class(StringValidationUtil), target, optional :: jvalue
    StringValidationUtil_jset_instance = .true.
    if (present(jvalue)) then
      StringValidationUtil_jcell_instance => jvalue
    else
      StringValidationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function StringValidationUtil_jnew_0() result(this)
    class(StringValidationUtil), pointer :: this
    allocate(this)
    this%jclass = 'StringValidationUtil'
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
        continue
  end function

  recursive function StringValidationUtil_jm_getInstance_0() result(jresult)
    class(StringValidationUtil), pointer :: jresult
        jresult => StringValidationUtil_jstatic_instance()
        return
  end function

  recursive function StringValidationUtil_jm_containsSpaces_1(this, j_value) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    logical :: jresult
        if ((JR_indexOf(j_value, iachar(' ')) >= 0)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function StringValidationUtil_jm_isNumber_1(this, j_value) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    logical :: jresult
    integer(4) :: j_numberOfDecimalPoints
    integer(4) :: j_digit
    integer(4) :: j_index
        j_numberOfDecimalPoints = 0
        j_index = 0
        do while ((j_index < len(j_value)))
            j_digit = JR_charAt(j_value, j_index)
            if (((.not. this%jm_isNumberFromChar_1(j_digit)) .and. (j_digit /= iachar('.')))) then
                jresult = .false.
                return
            end if
            if ((j_digit == iachar('.'))) then
                j_numberOfDecimalPoints = j_numberOfDecimalPoints + 1
                if ((j_numberOfDecimalPoints > 1)) then
                    jresult = .false.
                    return
                end if
            end if
            j_index = j_index + 1
        end do
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isNumberFromChar_1(this, j_digit) result(jresult)
    class(StringValidationUtil), target :: this
    integer(4), value :: j_digit
    logical :: jresult
        if (((((((((((j_digit /= iachar('0')) .and. (j_digit /= iachar('1'))) .and. (j_digit /= iachar('2'))) .and. (j_digit /= iachar('3'))) .and. (j_digit /= iachar('4'))) .and. (j_digit /= iachar('5'))) .and. (j_digit /= iachar('6'))) .and. (j_digit /= iachar('7'))) .and. (j_digit /= iachar('8'))) .and. (j_digit /= iachar('9')))) then
            jresult = .false.
            return
        end if
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isValidRequired_3(this, j_value, j_min, j_max) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical :: jresult
        if (((len(j_value) < j_min) .or. (len(j_value) > j_max))) then
            jresult = .false.
            return
        end if
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isValidRequiredNumber_3(this, j_value, j_min, j_max) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical :: jresult
        if (((this%jm_isEmpty_1(j_value) .or. (len(j_value) < j_min)) .or. (len(j_value) > j_max))) then
            jresult = .false.
            return
        end if
        if ((.not. this%jm_isNumber_1(j_value))) then
            jresult = .false.
            return
        end if
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isValidNotRequired_3(this, j_value, j_min, j_max) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical :: jresult
        if ((len(j_value) > 0)) then
            if (((len(j_value) < j_min) .or. (len(j_value) > j_max))) then
                jresult = .false.
                return
            end if
        end if
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isValidNotRequiredNumber_3(this, j_value, j_min, j_max) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_value
    integer(4), value :: j_min
    integer(4), value :: j_max
    logical :: jresult
        if ((len(j_value) > 0)) then
            if ((((this%f_tsUtil%jm_compareTo_2(j_value, this%f_stringUtil%f_NULL_STRING) == 0) .or. (len(j_value) < j_min)) .or. (len(j_value) > j_max))) then
                jresult = .false.
                return
            end if
            if ((.not. this%jm_isNumber_1(j_value))) then
                jresult = .false.
                return
            end if
        end if
        jresult = .true.
        return
  end function

  recursive function StringValidationUtil_jm_isEmpty_1(this, j_string) result(jresult)
    class(StringValidationUtil), target :: this
    character(len=*), intent(in) :: j_string
    logical :: jresult
        if (((this%f_tsUtil%jm_compareTo_2(j_string, this%f_stringUtil%f_NULL_STRING) /= 0) .and. (this%f_tsUtil%jm_compareTo_2(j_string, this%f_stringUtil%f_EMPTY_STRING) /= 0))) then
            jresult = .false.
            return
        else
            jresult = .true.
            return
        end if
  end function
end module StringValidationUtil_m

