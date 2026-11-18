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
  use BasicPersitance_m
  use NullRecordComparator_m
  use NullRecordFilter_m
  use PreLogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use BasicArrayList_m
  use HashtableUtil_m
  use StdUtil_m
  use ABHashtable_m
  use Input_m
  implicit none

  type, extends(BasicPersitance) :: InputPersistance
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
    this%f_hashtableUtil => HashtableUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine InputPersistance_jm_loadAll_1(this, j_abeClientInformation)
    class(InputPersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(RecordStore), pointer :: j_recordStore
    class(RecordEnumeration), pointer :: j_recordEnum
    class(ABHashtable), pointer :: j_hashtable
    class(StringMaker), pointer :: j_stringBuffer
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    integer(4) :: j_id
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StdUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
        j_recordEnum => j_recordStore%jm_enumerateRecords_3(NullRecordFilter_jstatic_NULL_RECORD_FILTER(), NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR(), .true.)
        continue
        j_stringBuffer => StringMaker_jnew_0()
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        continue
        do while (j_recordEnum%jm_hasNextElement_0())
            j_id = j_recordEnum%jm_nextRecordId_0()
            jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
            jtemp2 => j_stringBuffer%jm_append_1(this%f_persistanceStrings%f_LOADING_ID)
            jtemp1 => jtemp2%jm_appendint_1(j_id)
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_persistanceStrings%f_LOAD_ALL)
            jtemp3 => StdUtil_jm_getInstance_0()
            j_hashtable => jtemp3%jm_createHashtable_0()
            jdiscardBoolean = this%f_valueList%jm_add_1(j_hashtable)
            jdiscardBoolean = this%f_idList%jm_add_1(j_smallIntegerSingletonFactory%jm_getAt_1(j_id))
        end do
        call j_recordStore%jm_closeRecordStore_0()
  end subroutine

  recursive subroutine InputPersistance_jm_save_2(this, j_abeClientInformation, j_hashtable)
    class(InputPersistance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(ABHashtable), target, optional :: j_hashtable
    class(RecordStore), pointer :: j_recordStore
    class(Input), pointer :: j_gameActionInput
    class(BasicArrayList), pointer :: j_list
    class(Input), pointer :: j_input
    type(JRef), allocatable :: j_inputObjectArray(:)
    integer(4) :: j_size
    integer(4) :: j_index2
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp7 => StringUtil_jm_getInstance_0()
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(this%f_persistanceStrings%f_NOT_SAVING)
        jtemp4 => jtemp5%jm_append_1(jtemp7%jm_toString_1(j_hashtable))
        call PreLogUtil_jm_put_3(jtemp4%jm_toString_0(), this, this%f_commonStrings%f_SAVE)
        j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
        continue
        continue
        continue
        j_inputObjectArray = this%f_hashtableUtil%jm_getKeysAsArray_1(j_hashtable)
        j_size = size(j_inputObjectArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            j_gameActionInput => Input_jcast(j_inputObjectArray((j_index) + 1)%v)
            j_list => BasicArrayList_jcast(j_hashtable%jm_get_1(j_inputObjectArray((j_index) + 1)%v))
            j_index2 = 0
            do while ((j_index2 < j_list%jm_size_0()))
                j_input => Input_jcast(j_list%jm_get_1(j_index2))
                j_index2 = j_index2 + 1
            end do
            j_index = j_index + 1
        end do
        call j_recordStore%jm_closeRecordStore_0()
  end subroutine
end module InputPersistance_m

function InputPersistance_jnew_1_jext(p1) result(this)
  use InputPersistance_m, only: JObject, InputPersistance_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => InputPersistance_jnew_1(p1)
end function

