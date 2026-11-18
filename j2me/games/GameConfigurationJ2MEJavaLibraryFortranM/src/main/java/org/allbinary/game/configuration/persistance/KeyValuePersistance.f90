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
! package org.allbinary.game.configuration.persistance
module KeyValuePersistance_m
  use JR_m
  use ByteArrayInputStream_m
  use ByteArrayOutputStream_m
  use DataInputStream_m
  use DataOutputStream_m
  use TsUtil_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use CommonSeps_m
  use ABHashtable_m
  use HashtableUtil_m
  use BasicPersitance_m
  use NullRecordStore_m
  use NullRecordFilter_m
  use NullRecordComparator_m
  implicit none

  type, extends(BasicPersitance) :: KeyValuePersistance
    class(TsUtil), pointer :: f_tsUtil => null()
  contains
    procedure :: jm_loadAll_1 => KeyValuePersistance_jm_loadAll_1
    procedure :: jm_loadAllSize_2 => KeyValuePersistance_jm_loadAllSize_2
    procedure :: jm_save_2 => KeyValuePersistance_jm_save_2
    procedure :: jm_get_1 => KeyValuePersistance_jm_get_1
  end type


contains

  function KeyValuePersistance_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyValuePersistance), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyValuePersistance)
      jresult => object
    end select
  end function

  recursive function KeyValuePersistance_jnew_1(j_recordId) result(this)
    character(len=*), intent(in) :: j_recordId
    class(KeyValuePersistance), pointer :: this
    allocate(this)
    this%jclass = 'KeyValuePersistance'
    this%f_tsUtil => TsUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine KeyValuePersistance_jm_loadAll_1(this, j_abeClientInformation)
    class(KeyValuePersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_loadAllSize_2(j_abeClientInformation, 1)
  end subroutine

  recursive subroutine KeyValuePersistance_jm_loadAllSize_2(this, j_abeClientInformation, j_size)
    class(KeyValuePersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    integer(4), value :: j_size
    class(RecordStore), pointer :: j_recordStore
    class(RecordEnumeration), pointer :: j_recordEnum
    class(ABHashtable), pointer :: j_hashtable
    character(len=:), allocatable :: j_name
    character(len=:), allocatable :: j_value
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    class(StringMaker), pointer :: j_stringBuffer
    integer(4), allocatable :: j_recordAsBytes(:)
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStream
    class(DataInputStream), pointer :: j_inputStream
    integer(4) :: j_id
    integer(4) :: j_index
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
            j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
            j_stringBuffer => StringMaker_jnew_0()
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
                    j_hashtable => ABHashtable_jnew_0()
                    j_index = 0
                    do while ((j_index < j_size))
                        j_name = j_inputStream%jm_readUTF_0()
                        call j_inputStream%jm_readUTF_0()
                        j_value = j_inputStream%jm_readUTF_0()
                        jdiscardRef => j_hashtable%jm_put_2(j_name, j_value)
                        j_index = j_index + 1
                    end do
                    jdiscardBoolean = this%f_valueList%jm_add_1(j_hashtable)
                    jdiscardBoolean = this%f_idList%jm_add_1(j_smallIntegerSingletonFactory%jm_getAt_1(j_id))
                end if
            end do
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3(this%f_persistanceStrings%f_CLOSING_RECORDSTORE, this, this%f_persistanceStrings%f_LOAD_ALL)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine

  recursive subroutine KeyValuePersistance_jm_save_2(this, j_abeClientInformation, j_hashtable)
    class(KeyValuePersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(ABHashtable), target, optional :: j_hashtable
    class(RecordStore), pointer :: j_recordStore
    class(ByteArrayOutputStream), pointer :: j_byteArrayOutputStream
    class(DataOutputStream), pointer :: j_outputStream
    character(len=:), allocatable :: j_value
    class(CommonSeps), pointer :: j_commonSeps
    type(JRef), allocatable :: j_objectArray(:)
    class(JObject), pointer :: j_anyType
    integer(4) :: j_size
    integer(4) :: j_index
    class(TsUtil), pointer :: j_tsUtil
    integer(4), allocatable :: j_savedGameBytes(:)
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    class(HashtableUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            jtemp6 => StringUtil_jm_getInstance_0()
            jtemp5 => StringMaker_jnew_0()
            jtemp4 => jtemp5%jm_append_1(this%f_persistanceStrings%f_SAVING)
            jtemp3 => jtemp4%jm_append_1(jtemp6%jm_toString_1(j_hashtable))
            call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_SAVE)
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            j_byteArrayOutputStream => ByteArrayOutputStream_jnew_0()
            j_outputStream => DataOutputStream_jnew_1(j_byteArrayOutputStream)
            continue
            j_commonSeps => CommonSeps_jm_getInstance_0()
            jtemp7 => HashtableUtil_jm_getInstance_0()
            j_objectArray = jtemp7%jm_getKeysAsArray_1(j_hashtable)
            continue
            j_size = size(j_objectArray, 1)
            j_index = 0
            do while ((j_index < j_size))
                call j_outputStream%jm_writeUTF_1(j_objectArray((j_index) + 1)%v)
                call j_outputStream%jm_writeUTF_1(j_commonSeps%f_EQUALS)
                j_anyType => j_objectArray((j_index) + 1)%v
                j_value = j_hashtable%jm_get_1(j_anyType)
                call j_outputStream%jm_writeUTF_1(j_value)
                j_index = j_index + 1
            end do
            j_tsUtil => TsUtil_jm_getInstance_0()
            j_savedGameBytes = j_tsUtil%jm_getByteArray_1(j_byteArrayOutputStream%jm_toString_0())
            call j_recordStore%jm_addRecord_3(j_savedGameBytes, 0, size(j_savedGameBytes, 1))
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3(this%f_persistanceStrings%f_CLOSING_RECORDSTORE, this, this%f_commonStrings%f_SAVE)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine

  recursive function KeyValuePersistance_jm_get_1(this, j_index) result(jresult)
    class(KeyValuePersistance), target :: this
    integer(4), value :: j_index
    class(ABHashtable), pointer :: jresult
    class(ABHashtable), pointer :: j_hashtable
        j_hashtable => ABHashtable_jcast(this%f_valueList%f_objectArray((j_index) + 1)%v)
        jresult => j_hashtable
        return
  end function
end module KeyValuePersistance_m

function KeyValuePersistance_jnew_1_jext(p1) result(this)
  use KeyValuePersistance_m, only: JObject, KeyValuePersistance_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => KeyValuePersistance_jnew_1(p1)
end function

