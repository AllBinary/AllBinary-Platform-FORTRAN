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
! package org.allbinary.game.score
module HighScoreNamePersistanceSingleton_m
  use JR_m
  use ByteArrayInputStream_m
  use ByteArrayOutputStream_m
  use DataInputStream_m
  use DataOutputStream_m
  use TsUtil_m
  use GameInfo_m
  use NullRecordComparator_m
  use NullRecordFilter_m
  use NullRecordStore_m
  use LogUtil_m
  use PreLogUtil_m
  use ExceptionUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use PlatformRecordIdUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  implicit none

  type, extends(JObject) :: HighScoreNamePersistanceSingleton
    class(LogUtil), pointer :: f_logUtil => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(PlatformRecordIdUtil), pointer :: f_platformRecordIdUtil => null()
    character(len=:), allocatable :: f_RECORD_ID
    character(len=:), allocatable :: f_name
    class(BasicArrayList), pointer :: f_nameBasicArrayList => null()
  contains
    procedure :: jm_clear_0 => HighScoreNamePersistanceSingleton_jm_clear_0
    procedure :: jm_deleteAll_2 => HighScoreNamePersistanceSingleton_jm_deleteAll_2
    procedure :: jm_getRecordId_1 => HighScoreNamePersistanceSingleton_jm_getRecordId_1
    procedure :: jm_delete_3 => HighScoreNamePersistanceSingleton_jm_delete_3
    procedure :: jm_getIds_0 => HighScoreNamePersistanceSingleton_jm_getIds_0
    procedure :: jm_load_2 => HighScoreNamePersistanceSingleton_jm_load_2
    procedure :: jm_save_3 => HighScoreNamePersistanceSingleton_jm_save_3
  end type

  class(HighScoreNamePersistanceSingleton), pointer, save :: HighScoreNamePersistanceSingleton_jcell_SINGLETON => null()
  logical, save :: HighScoreNamePersistanceSingleton_jset_SINGLETON = .false.

contains

  function HighScoreNamePersistanceSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreNamePersistanceSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreNamePersistanceSingleton)
      jresult => object
    end select
  end function

  function HighScoreNamePersistanceSingleton_jstatic_SINGLETON() result(jresult)
    class(HighScoreNamePersistanceSingleton), pointer :: jresult
    if (.not. HighScoreNamePersistanceSingleton_jset_SINGLETON) then
      HighScoreNamePersistanceSingleton_jset_SINGLETON = .true.
      HighScoreNamePersistanceSingleton_jcell_SINGLETON => HighScoreNamePersistanceSingleton_jnew_0()
    end if
    jresult => HighScoreNamePersistanceSingleton_jcell_SINGLETON
  end function

  subroutine HighScoreNamePersistanceSingleton_jsetstatic_SINGLETON(jvalue)
    class(HighScoreNamePersistanceSingleton), target, optional :: jvalue
    HighScoreNamePersistanceSingleton_jset_SINGLETON = .true.
    if (present(jvalue)) then
      HighScoreNamePersistanceSingleton_jcell_SINGLETON => jvalue
    else
      HighScoreNamePersistanceSingleton_jcell_SINGLETON => null()
    end if
  end subroutine

  function HighScoreNamePersistanceSingleton_jnew_0() result(this)
    class(HighScoreNamePersistanceSingleton), pointer :: this
    class(StringUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'HighScoreNamePersistanceSingleton'
    this%f_RECORD_ID = ''
    this%f_name = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_platformRecordIdUtil => PlatformRecordIdUtil_jm_getInstance_0()
    this%f_RECORD_ID = '_SN'
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
    this%f_nameBasicArrayList => BasicArrayListD_jnew_0()
  end function

  recursive function HighScoreNamePersistanceSingleton_jm_getInstance_0() result(jresult)
    class(HighScoreNamePersistanceSingleton), pointer :: jresult
        jresult => HighScoreNamePersistanceSingleton_jstatic_SINGLETON()
        return
  end function

  recursive subroutine HighScoreNamePersistanceSingleton_jm_clear_0(this)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(StringUtil), pointer :: jtemp2
        jtemp2 => StringUtil_jm_getInstance_0()
        this%f_name = jtemp2%f_EMPTY_STRING
  end subroutine

  recursive subroutine HighScoreNamePersistanceSingleton_jm_deleteAll_2(this, j_abeClientInformation, j_gameInfo)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    integer(4) :: j_size
    integer(4) :: j_integer
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = this%f_nameBasicArrayList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_integer = JR_unboxInt(this%f_nameBasicArrayList%f_objectArray((j_index) + 1)%v)
            call this%jm_delete_3(j_abeClientInformation, j_gameInfo, int(j_integer, 4))
            j_index = j_index + 1
        end do
        call this%jm_clear_0()
  end subroutine

  recursive function HighScoreNamePersistanceSingleton_jm_getRecordId_1(this, j_abeClientInformation) result(jresult)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=:), allocatable :: jresult
        jresult = this%f_platformRecordIdUtil%jm_getRecordId_2(j_abeClientInformation, this%f_RECORD_ID)
        return
  end function

  recursive subroutine HighScoreNamePersistanceSingleton_jm_delete_3(this, j_abeClientInformation, j_gameInfo, j_deleteId)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    integer(4), value :: j_deleteId
    class(RecordStore), pointer :: j_recordStore
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            jtemp5 => StringMaker_jnew_0()
            jtemp4 => jtemp5%jm_append_1('Deleting: ')
            jtemp3 => jtemp4%jm_appendint_1(j_deleteId)
            call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, this%f_commonStrings%f_delete)
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            call j_recordStore%jm_deleteRecord_1(j_deleteId)
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3('Closing RecordStore', this, this%f_commonStrings%f_delete)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine

  recursive function HighScoreNamePersistanceSingleton_jm_getIds_0(this) result(jresult)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_nameBasicArrayList
        return
  end function

  recursive function HighScoreNamePersistanceSingleton_jm_load_2(this, j_abeClientInformation, j_gameInfo) result(jresult)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    character(len=:), allocatable :: jresult
    class(RecordStore), pointer :: j_recordStore
    character(len=:), allocatable :: j_LOADING_ID
    class(RecordEnumeration), pointer :: j_recordEnum
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    integer(4), allocatable :: j_recordAsBytes(:)
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStream
    class(DataInputStream), pointer :: j_inputStream
    integer(4) :: j_id
    class(StringUtil), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(ExceptionUtil), pointer :: jtemp13
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
            if (JR_strEquals(this%f_name, jtemp6%f_EMPTY_STRING)) then
                j_LOADING_ID = 'Loading id: '
                j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
                j_recordEnum => j_recordStore%jm_enumerateRecords_3(NullRecordFilter_jstatic_NULL_RECORD_FILTER(), NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR(), .true.)
                j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
                continue
                continue
                continue
                do while (j_recordEnum%jm_hasNextElement_0())
                    j_id = j_recordEnum%jm_nextRecordId_0()
                    jtemp9 => StringMaker_jnew_0()
                    jtemp8 => jtemp9%jm_append_1(j_LOADING_ID)
                    jtemp7 => jtemp8%jm_appendint_1(j_id)
                    call this%f_logUtil%jm_putF_3(jtemp7%jm_toString_0(), this, this%f_commonStrings%f_LOAD)
                    j_recordAsBytes = this%f_tsUtil%jm_getRecord_2(j_recordStore, j_id)
                    j_byteArrayInputStream => ByteArrayInputStream_jnew_1(j_recordAsBytes)
                    j_inputStream => DataInputStream_jnew_1(j_byteArrayInputStream)
                    do while ((j_inputStream%jm_available_0() > 0))
                        this%f_name = j_inputStream%jm_readUTF_0()
                    end do
                    jdiscardBoolean = this%f_nameBasicArrayList%jm_add_1(j_smallIntegerSingletonFactory%jm_getAt_1(j_id))
                end do
            end if
            continue ! try
                if (associated(j_recordStore)) then
                    call PreLogUtil_jm_put_3('Closing RecordStore', this, this%f_commonStrings%f_LOAD)
                    call j_recordStore%jm_closeRecordStore_0()
                end if
        jresult = this%f_name
        return
  end function

  recursive subroutine HighScoreNamePersistanceSingleton_jm_save_3(this, j_abeClientInformation, j_gameInfo, j_name)
    class(HighScoreNamePersistanceSingleton), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    character(len=*), intent(in) :: j_name
    class(RecordStore), pointer :: j_recordStore
    class(ByteArrayOutputStream), pointer :: j_byteArrayOutputStream
    class(DataOutputStream), pointer :: j_outputStream
    integer(4), allocatable :: j_savedGameBytes(:)
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            jtemp16 => StringMaker_jnew_0()
            jtemp15 => jtemp16%jm_append_1('Saving: ')
            jtemp14 => jtemp15%jm_append_1(j_name)
            call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, this%f_commonStrings%f_SAVE)
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            j_byteArrayOutputStream => ByteArrayOutputStream_jnew_0()
            j_outputStream => DataOutputStream_jnew_1(j_byteArrayOutputStream)
            call j_outputStream%jm_writeUTF_1(j_name)
            j_savedGameBytes = j_byteArrayOutputStream%jm_toByteArray_0()
            call j_recordStore%jm_addRecord_3(j_savedGameBytes, 0, size(j_savedGameBytes, 1))
            this%f_name = j_name
            continue ! try
                if (associated(j_recordStore)) then
                    call PreLogUtil_jm_put_3('Closing RecordStore', this, this%f_commonStrings%f_SAVE)
                    call j_recordStore%jm_closeRecordStore_0()
                end if
  end subroutine
end module HighScoreNamePersistanceSingleton_m

