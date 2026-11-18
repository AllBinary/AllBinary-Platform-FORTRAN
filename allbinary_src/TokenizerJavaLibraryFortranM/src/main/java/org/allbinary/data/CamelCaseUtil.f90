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
! package org.allbinary.data
module CamelCaseUtil_m
  use JR_m
  use StringMaker_m
  use StringValidationUtil_m
  use Tokenizer_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Character_m
  implicit none

  type, extends(JObject) :: CamelCaseUtil
    class(CommonSeps), pointer :: f_commonSeps => null()
  contains
    procedure :: jm_getAsCamelCase_2 => CamelCaseUtil_jm_getAsCamelCase_2
  end type

  class(CamelCaseUtil), pointer, save :: CamelCaseUtil_jcell_instance => null()
  logical, save :: CamelCaseUtil_jset_instance = .false.

contains

  function CamelCaseUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CamelCaseUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CamelCaseUtil)
      jresult => object
    end select
  end function

  function CamelCaseUtil_jstatic_instance() result(jresult)
    class(CamelCaseUtil), pointer :: jresult
    if (.not. CamelCaseUtil_jset_instance) then
      CamelCaseUtil_jset_instance = .true.
      CamelCaseUtil_jcell_instance => CamelCaseUtil_jnew_0()
    end if
    jresult => CamelCaseUtil_jcell_instance
  end function

  subroutine CamelCaseUtil_jsetstatic_instance(jvalue)
    class(CamelCaseUtil), target, optional :: jvalue
    CamelCaseUtil_jset_instance = .true.
    if (present(jvalue)) then
      CamelCaseUtil_jcell_instance => jvalue
    else
      CamelCaseUtil_jcell_instance => null()
    end if
  end subroutine

  function CamelCaseUtil_jnew_0() result(this)
    class(CamelCaseUtil), pointer :: this
    allocate(this)
    this%jclass = 'CamelCaseUtil'
    this%f_commonSeps => CommonSeps_jm_getInstance_0()
  end function

  recursive function CamelCaseUtil_jm_getInstance_0() result(jresult)
    class(CamelCaseUtil), pointer :: jresult
        jresult => CamelCaseUtil_jstatic_instance()
        return
  end function

  recursive function CamelCaseUtil_jm_getAsCamelCase_2(this, j_string, j_stringBuilder) result(jresult)
    class(CamelCaseUtil), target :: this
    character(len=*), intent(in) :: j_string
    class(StringMaker), target, optional :: j_stringBuilder
    character(len=:), allocatable :: jresult
    class(StringValidationUtil), pointer :: j_stringValidationUtil
    class(BasicArrayList), pointer :: j_list
    class(Tokenizer), pointer :: j_tokenizer
    integer(4) :: j_size
    character(len=:), allocatable :: j_word
    integer(4) :: j_i
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    character(len=:), allocatable :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringValidationUtil => StringValidationUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuilder%jm_delete_2(0, j_stringBuilder%jm_length_0())
        j_list => BasicArrayListD_jnew_0()
        j_tokenizer => Tokenizer_jnew_1(this%f_commonSeps%f_UNDERSCORE)
        jdiscardRef => j_tokenizer%jm_getTokensFromString_2(j_string, j_list)
        j_size = j_list%jm_size_0()
        continue
        j_i = 0
        do while ((j_i < j_size))
            j_word = j_list%jm_get_1(j_i)
            jtemp4 = JR_substring(j_word, 1)
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_appendchar_1(Character_jm_toUpperCase_1(JR_charAt(j_word, 0)))
            jtemp1 => jtemp2%jm_append_1(JR_toLowerCase(jtemp4))
            j_word = merge(j_word, jtemp1%jm_toString_0(), j_stringValidationUtil%jm_isEmpty_1(j_word))
            jdiscardRef => j_stringBuilder%jm_append_1(j_word)
            j_i = j_i + 1
        end do
        jresult = j_stringBuilder%jm_toString_0()
        return
  end function
end module CamelCaseUtil_m

