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
! package org.allbinary.game.input
module InputPersistance_m
  use JR_m
  use ByteArrayInputStream_m
  use ByteArrayOutputStream_m
  use DataInputStream_m
  use DataOutputStream_m
  use TsUtil_m
  use BasicPersitance_m
  use NullRecordComparator_m
  use NullRecordFilter_m
  use NullRecordStore_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use CommonSeps_m
  use BasicArrayList_m
  use HashtableUtil_m
  use StdUtil_m
  use ABHashtable_m
  use Integer_m
  use Input_m
  use GameKeyMappingFactory_m
  use InputFactory_m
  implicit none

  type, extends(BasicPersitance) :: InputPersistance
    class(TsUtil), pointer :: f_tsUtil => null()
    class(HashtableUtil), pointer :: f_hashtableUtil => null()
  contains
    procedure :: jm_loadAll_1 => InputPersistance_jm_loadAll_1
    procedure :: jm_save_2 => InputPersistance_jm_save_2
  end type


contains

  function InputPersistance_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputPersistance), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputPersistance)
      jresult => object
    end select
  end function

  recursive function InputPersistance_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(InputPersistance), pointer :: this
    allocate(this)
    this%jclass = 'InputPersistance'
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_hashtableUtil => HashtableUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine InputPersistance_jm_loadAll_1(this, j_abeClientInformation)
    class(InputPersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(RecordStore), pointer :: j_recordStore
    class(RecordEnumeration), pointer :: j_recordEnum
    integer(8) :: j_gameActionInputId
    integer(8) :: j_inputId
    class(Input), pointer :: j_gameActionInput
    class(Input), pointer :: j_input
    class(ABHashtable), pointer :: j_hashtable
    class(GameKeyMappingFactory), pointer :: j_gameKeyFactory
    class(StringMaker), pointer :: j_stringBuffer
    class(InputFactory), pointer :: j_inputFactory
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    class(StdUtil), pointer :: j_stdUtil
    integer(4), allocatable :: j_recordAsBytes(:)
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStream
    class(DataInputStream), pointer :: j_inputStream
    integer(4) :: j_id
    integer(4) :: j_value
    character(len=:), allocatable :: j_gameActionInputIdAsString
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            j_recordEnum => j_recordStore%jm_enumerateRecords_3(NullRecordFilter_jstatic_NULL_RECORD_FILTER(), NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR(), .true.)
            continue
            continue
            continue
            continue
            continue
            j_gameKeyFactory => GameKeyMappingFactory_jm_getInstance_0()
            j_stringBuffer => StringMaker_jnew_0()
            j_inputFactory => InputFactory_jm_getInstance_0()
            j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
            j_stdUtil => StdUtil_jm_getInstance_0()
            continue
            continue
            continue
            do while (j_recordEnum%jm_hasNextElement_0())
                j_id = j_recordEnum%jm_nextRecordId_0()
                jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
                jtemp2 => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_LOADING_ID)
                jtemp1 => jtemp2%jm_appendint_1(j_id)
                call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_persistanceStrings%f_LOAD_ALL)
                j_recordAsBytes = this%f_tsUtil%jm_getRecord_2(j_recordStore, j_id)
                if (allocated(j_recordAsBytes)) then
                    j_byteArrayInputStream => ByteArrayInputStream_jnew_1(j_recordAsBytes)
                    j_inputStream => DataInputStream_jnew_1(j_byteArrayInputStream)
                    j_hashtable => j_stdUtil%jm_createHashtable_0()
                    continue
                    do while ((j_inputStream%jm_available_0() > 0))
                        j_gameActionInputIdAsString = j_inputStream%jm_readUTF_0()
                        j_value = Integer_jm_parseInt_1(j_gameActionInputIdAsString)
                        j_gameActionInputId = int(j_value, 8)
                        call j_inputStream%jm_readUTF_0()
                        j_value = Integer_jm_parseInt_1(j_inputStream%jm_readUTF_0())
                        j_inputId = int(j_value, 8)
                        j_gameActionInput => j_gameKeyFactory%jm_getGameKey_1(JR_l2i(j_gameActionInputId))
                        j_input => j_inputFactory%jm_getInstanceById_1(JR_l2i(j_inputId))
                        if ((JR_same(j_input, j_inputFactory%f_NO_INPUT) .or. (.not. associated(j_gameActionInput)))) then
                            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
                            if (JR_same(j_input, j_inputFactory%f_NO_INPUT)) then
                                jdiscardRef => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_ERROR_LOADING_ID)
                                jdiscardRef => j_stringBuffer%jm_appendlong_1(j_inputId)
                                jdiscardRef => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_GAME_ACTION_INPUT)
                                jdiscardRef => j_stringBuffer%jm_appendlong_1(j_gameActionInputId)
                                call PreLogUtil_jm_put_3(j_stringBuffer%jm_toString_0(), this, this%f_persistanceStrings%f_LOAD_ALL)
                            end if
                            if ((.not. associated(j_gameActionInput))) then
                                jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
                                jdiscardRef => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_ERROR_LOADING)
                                jdiscardRef => j_stringBuffer%jm_appendlong_1(j_gameActionInputId)
                                jdiscardRef => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_ID)
                                jdiscardRef => j_stringBuffer%jm_appendlong_1(j_inputId)
                                call PreLogUtil_jm_put_3(j_stringBuffer%jm_toString_0(), this, this%f_persistanceStrings%f_LOAD_ALL)
                            end if
                        else
                            continue
                        end if
                        jdiscardRef => j_hashtable%jm_put_2(j_input, j_gameActionInput)
                    end do
                    jdiscardBoolean = this%f_valueList%jm_add_1(j_hashtable)
                    jdiscardBoolean = this%f_idList%jm_add_1(j_smallIntegerSingletonFactory%jm_getAt_1(j_id))
                else
                    continue
                end if
            end do
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3(this%f_persistanceStrings%f_CLOSING_RECORDSTORE, this, this%f_persistanceStrings%f_LOAD_ALL)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine

  recursive subroutine InputPersistance_jm_save_2(this, j_abeClientInformation, j_hashtable)
    class(InputPersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(ABHashtable), target, optional :: j_hashtable
    class(RecordStore), pointer :: j_recordStore
    class(StringMaker), pointer :: j_stringBuffer
    class(ByteArrayOutputStream), pointer :: j_byteArrayOutputStream
    class(DataOutputStream), pointer :: j_outputStream
    class(Input), pointer :: j_gameActionInput
    class(BasicArrayList), pointer :: j_list
    class(Input), pointer :: j_input
    integer(4), allocatable :: j_savedGameBytes(:)
    class(CommonSeps), pointer :: j_commonSeps
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    type(JRef), allocatable :: j_inputObjectArray(:)
    integer(4) :: j_size
    character(len=:), allocatable :: j_gameActionInputIdAsString
    character(len=:), allocatable :: j_inputIdAsString
    integer(4) :: j_index2
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringUtil), pointer :: jtemp5
    class(Integer), pointer :: jtemp6
    class(Integer), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            j_stringBuffer => StringMaker_jnew_0()
            jtemp5 => StringUtil_jm_getInstance_0()
            jtemp4 => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_SAVING)
            jtemp3 => jtemp4%jm_append_1(jtemp5%jm_toString_1(j_hashtable))
            call PreLogUtil_jm_put_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_SAVE)
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            j_byteArrayOutputStream => ByteArrayOutputStream_jnew_0()
            j_outputStream => DataOutputStream_jnew_1(j_byteArrayOutputStream)
            continue
            continue
            continue
            continue
            j_commonSeps => CommonSeps_jm_getInstance_0()
            j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
            j_inputObjectArray = this%f_hashtableUtil%jm_getKeysAsArray_1(j_hashtable)
            j_size = size(j_inputObjectArray, 1)
            j_index = 0
            do while ((j_index < j_size))
                j_gameActionInput => Input_jcast(j_inputObjectArray((j_index) + 1)%v)
                j_list => BasicArrayList_jcast(j_hashtable%jm_get_1(j_inputObjectArray((j_index) + 1)%v))
                j_index2 = 0
                do while ((j_index2 < j_list%jm_size_0()))
                    jtemp6 => j_smallIntegerSingletonFactory%jm_getAt_1(j_gameActionInput%jm_getId_0())
                    j_gameActionInputIdAsString = jtemp6%jm_toString_0()
                    call j_outputStream%jm_writeUTF_1(j_gameActionInputIdAsString)
                    call j_outputStream%jm_writeUTF_1(j_commonSeps%f_EQUALS)
                    j_input => Input_jcast(j_list%f_objectArray((j_index2) + 1)%v)
                    jtemp7 => j_smallIntegerSingletonFactory%jm_getAt_1(j_input%jm_getId_0())
                    j_inputIdAsString = jtemp7%jm_toString_0()
                    call j_outputStream%jm_writeUTF_1(j_inputIdAsString)
                    j_index2 = j_index2 + 1
                end do
                j_index = j_index + 1
            end do
            j_savedGameBytes = j_byteArrayOutputStream%jm_toByteArray_0()
            call j_recordStore%jm_addRecord_3(j_savedGameBytes, 0, size(j_savedGameBytes, 1))
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3(this%f_persistanceStrings%f_CLOSING_RECORDSTORE, this, this%f_commonStrings%f_SAVE)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine
end module InputPersistance_m

function InputPersistance_jnew_1_jext(p1) result(this)
  use InputPersistance_m, only: JObject, InputPersistance_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => InputPersistance_jnew_1(p1)
end function

