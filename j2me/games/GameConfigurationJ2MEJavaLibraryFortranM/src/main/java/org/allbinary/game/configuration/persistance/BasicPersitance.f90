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
module BasicPersitance_m
  use JR_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use PlatformRecordIdUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Integer_m
  use PersistanceStrings_m
  use NullRecordStore_m
  implicit none

  type, extends(JObject) :: BasicPersitance
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(PersistanceStrings), pointer :: f_persistanceStrings => null()
    class(PlatformRecordIdUtil), pointer :: f_platformRecordIdUtil => null()
    character(len=:), allocatable :: f_recordId
    class(BasicArrayList), pointer :: f_valueList => null()
    class(BasicArrayList), pointer :: f_idList => null()
  contains
    procedure :: jm_deleteRecoreStore_1 => BasicPersitance_jm_deleteRecoreStore_1
    procedure :: jm_deleteAll_1 => BasicPersitance_jm_deleteAll_1
    procedure :: jm_delete_2 => BasicPersitance_jm_delete_2
    procedure :: jm_getRecordId_1 => BasicPersitance_jm_getRecordId_1
    procedure :: jm_getList_0 => BasicPersitance_jm_getList_0
    procedure :: jm_getIds_0 => BasicPersitance_jm_getIds_0
    procedure :: jm_clear_0 => BasicPersitance_jm_clear_0
  end type


contains

  function BasicPersitance_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicPersitance), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicPersitance)
      jresult => object
    end select
  end function

  recursive function BasicPersitance_jnew_1(j_recordId) result(this)
    character(len=*), intent(in) :: j_recordId
    class(BasicPersitance), pointer :: this
    allocate(this)
    this%jclass = 'BasicPersitance'
    this%f_recordId = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_persistanceStrings => PersistanceStrings_jm_getInstance_0()
    this%f_platformRecordIdUtil => PlatformRecordIdUtil_jm_getInstance_0()
    
    this%f_valueList => BasicArrayListD_jnew_0()
    this%f_idList => BasicArrayListD_jnew_0()
        this%f_recordId = j_recordId
  end function

  recursive subroutine BasicPersitance_jm_deleteRecoreStore_1(this, j_abeClientInformation)
    class(BasicPersitance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call RecordStore_jm_deleteRecordStore_1(this%jm_getRecordId_1(j_abeClientInformation))
  end subroutine

  recursive subroutine BasicPersitance_jm_deleteAll_1(this, j_abeClientInformation)
    class(BasicPersitance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
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
        j_size = this%f_idList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_integer = JR_unboxInt(this%f_idList%f_objectArray((j_index) + 1)%v)
            call this%jm_delete_2(j_abeClientInformation, int(j_integer, 4))
            j_index = j_index + 1
        end do
        call this%jm_clear_0()
  end subroutine

  recursive subroutine BasicPersitance_jm_delete_2(this, j_abeClientInformation, j_deleteId)
    class(BasicPersitance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    integer(4), value :: j_deleteId
    class(RecordStore), pointer :: j_recordStore
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            jtemp3 => StringMaker_jnew_0()
            jtemp2 => jtemp3%jm_append_1(this%f_persistanceStrings%f_DELETING_WITH_ID)
            jtemp1 => jtemp2%jm_appendint_1(j_deleteId)
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_commonStrings%f_delete)
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(j_abeClientInformation), .true.)
            call j_recordStore%jm_deleteRecord_1(j_deleteId)
            if (associated(j_recordStore)) then
                call PreLogUtil_jm_put_3(this%f_persistanceStrings%f_CLOSING_RECORDSTORE, this, this%f_commonStrings%f_delete)
                call j_recordStore%jm_closeRecordStore_0()
            end if
  end subroutine

  recursive function BasicPersitance_jm_getRecordId_1(this, j_abeClientInformation) result(jresult)
    class(BasicPersitance), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=:), allocatable :: jresult
        jresult = this%f_platformRecordIdUtil%jm_getRecordId_2(j_abeClientInformation, this%f_recordId)
        return
  end function

  recursive function BasicPersitance_jm_getList_0(this) result(jresult)
    class(BasicPersitance), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_valueList
        return
  end function

  recursive function BasicPersitance_jm_getIds_0(this) result(jresult)
    class(BasicPersitance), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_idList
        return
  end function

  recursive subroutine BasicPersitance_jm_clear_0(this)
    class(BasicPersitance), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_valueList%jm_clear_0()
        call this%f_idList%jm_clear_0()
  end subroutine
end module BasicPersitance_m

