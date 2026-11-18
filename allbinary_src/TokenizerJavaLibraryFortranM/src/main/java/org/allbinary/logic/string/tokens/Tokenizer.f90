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
! package org.allbinary.logic.string.tokens
module Tokenizer_m
  use JR_m
  use TsUtil_m
  use StdUtil_m
  use StringUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: Tokenizer
    character(len=:), allocatable :: f_sep
    character(len=:), allocatable :: f_endSep
  contains
    procedure :: jm_setSep_1 => Tokenizer_jm_setSep_1
    procedure :: jm_setEndSep_1 => Tokenizer_jm_setEndSep_1
    procedure :: jm_getInsideSep_1 => Tokenizer_jm_getInsideSep_1
    procedure :: jm_getTokensFromString_2 => Tokenizer_jm_getTokensFromString_2
    procedure :: jm_getTokens_1 => Tokenizer_jm_getTokens_1
  end type


contains

  function Tokenizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Tokenizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Tokenizer)
      jresult => object
    end select
  end function

  recursive function Tokenizer_jnew_1(j_sep) result(this)
    character(len=*), intent(in) :: j_sep
    class(Tokenizer), pointer :: this
    class(TsUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'Tokenizer'
    this%f_sep = ''
    this%f_endSep = ''
    
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_endSep = jtemp1%f_EMPTY_STRING
        jtemp3 => StringUtil_jm_getInstance_0()
        jtemp2 => TsUtil_jm_getInstance_0()
        if ((jtemp2%jm_compareTo_2(j_sep, jtemp3%f_EMPTY_STRING) == 0)) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        this%f_sep = j_sep
  end function

  recursive subroutine Tokenizer_jm_setSep_1(this, j_sep)
    class(Tokenizer), target :: this
    character(len=*), intent(in) :: j_sep
        this%f_sep = j_sep
  end subroutine

  recursive subroutine Tokenizer_jm_setEndSep_1(this, j_endSep)
    class(Tokenizer), target :: this
    character(len=*), intent(in) :: j_endSep
        this%f_endSep = j_endSep
  end subroutine

  recursive function Tokenizer_jm_getInsideSep_1(this, j_string) result(jresult)
    class(Tokenizer), target :: this
    character(len=*), intent(in) :: j_string
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_tokenList
    integer(4) :: j_index
    integer(4) :: j_size
    integer(4) :: j_end
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_tokenList => BasicArrayListD_jnew_0()
        j_index = 0
        j_size = len(j_string)
        do while ((j_index < j_size))
            j_index = JR_indexOf(j_string, this%f_sep, j_index)
            if ((j_index /= (-1))) then
                j_end = JR_indexOf(j_string, this%f_endSep, (j_index + len(this%f_sep)))
                if ((j_end /= (-1))) then
                    jdiscardBoolean = j_tokenList%jm_add_1(JR_boxString(JR_substring(j_string, (j_index + len(this%f_sep)), (j_end - ((len(this%f_endSep) - 1))))))
                    j_index = (j_end + len(this%f_endSep))
                else
                    continue
                end if
            else
                exit
            end if
        end do
        jresult => j_tokenList
        return
  end function

  recursive function Tokenizer_jm_getTokensFromString_2(this, j_string, j_tokenVector) result(jresult)
    class(Tokenizer), target :: this
    character(len=*), intent(in) :: j_string
    class(BasicArrayList), target, optional :: j_tokenVector
    class(BasicArrayList), pointer :: jresult
    integer(4) :: j_index
    integer(4) :: j_end
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = 0
        j_end = 0
        do while ((j_index < len(j_string)))
            j_end = JR_indexOf(j_string, this%f_sep, j_index)
            if ((j_end /= (-1))) then
                jdiscardBoolean = j_tokenVector%jm_add_1(JR_boxString(JR_substring(j_string, j_index, j_end)))
                j_index = (j_end + len(this%f_sep))
            else
                jdiscardBoolean = j_tokenVector%jm_add_1(JR_boxString(JR_substring(j_string, j_index, len(j_string))))
                exit
            end if
        end do
        jresult => j_tokenVector
        return
  end function

  recursive function Tokenizer_jm_getTokens_1(this, j_stringVector) result(jresult)
    class(Tokenizer), target :: this
    class(BasicArrayList), target, optional :: j_stringVector
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_tokenHashtable
    character(len=:), allocatable :: j_string
    integer(4) :: j_end
    integer(4) :: j_size
    integer(4) :: j_index
    class(StdUtil), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => StdUtil_jm_getInstance_0()
        j_tokenHashtable => jtemp4%jm_createHashtable_0()
        jtemp5 => StringUtil_jm_getInstance_0()
        j_string = jtemp5%f_EMPTY_STRING
        j_end = 0
        j_size = j_stringVector%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_string = j_stringVector%f_objectArray((j_index) + 1)%v
            j_end = JR_indexOf(j_string, this%f_sep)
            if ((j_end >= 0)) then
                jdiscardRef => j_tokenHashtable%jm_put_2(JR_substring(j_string, 0, j_end), JR_substring(j_string, (j_end + 1), len(j_string)))
            end if
            j_index = j_index + 1
        end do
        jresult => j_tokenHashtable
        return
  end function
end module Tokenizer_m

