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
! package org.allbinary.logic.system.security.crypt
module DatabaseEncoder_m
  use JR_m
  use NullUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use Tokenizer_m
  use CommonSeps_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Byte_m
  implicit none

  type, extends(JObject) :: DatabaseEncoder
  end type


contains

  function DatabaseEncoder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DatabaseEncoder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DatabaseEncoder)
      jresult => object
    end select
  end function

  recursive function DatabaseEncoder_jnew_0() result(this)
    class(DatabaseEncoder), pointer :: this
    allocate(this)
    this%jclass = 'DatabaseEncoder'
        continue
  end function

  recursive function DatabaseEncoder_jm_encode_1(j_value) result(jresult)
    integer(4) :: j_value(:)
    character(len=:), allocatable :: jresult
    integer(4), allocatable :: j_array(:)
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(Byte), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_array = j_value
            j_stringBuffer => StringMaker_jnew_0()
            j_index = 0
            do while ((j_index < size(j_array, 1)))
                jtemp1 => j_array((j_index) + 1)
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_0())
                if ((j_index < (size(j_array, 1) - 1))) then
                    jtemp2 => CommonSeps_jm_getInstance_0()
                    jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
                end if
                j_index = j_index + 1
            end do
            jresult = j_stringBuffer%jm_toString_0()
            return
  end function

  recursive function DatabaseEncoder_jm_decode_1(j_value) result(jresult)
    character(len=*), intent(in) :: j_value
    integer(4), allocatable :: jresult(:)
    class(Tokenizer), pointer :: j_tokenizer
    class(BasicArrayList), pointer :: j_vector
    integer(4) :: j_size
    integer(4), allocatable :: j_decode(:)
    character(len=:), allocatable :: j_byteOfData
    integer(4) :: j_index
    class(CommonStrings), pointer :: j_commonStrings
    class(CommonSeps), pointer :: jtemp4
    class(NullUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp4 => CommonSeps_jm_getInstance_0()
            j_tokenizer => Tokenizer_jnew_1(jtemp4%f_SPACE)
            j_vector => j_tokenizer%jm_getTokensFromString_2(j_value, BasicArrayListD_jnew_0())
            j_size = j_vector%jm_size_0()
            j_decode = JR_newIntArray(j_size)
            continue
            j_index = 0
            do while ((j_index < j_size))
                j_byteOfData = j_vector%f_objectArray((j_index) + 1)%v
                j_decode((j_index) + 1) = Byte_jm_parseByte_1(j_byteOfData)
                j_index = j_index + 1
            end do
            jresult = j_decode
            return
  end function
end module DatabaseEncoder_m

