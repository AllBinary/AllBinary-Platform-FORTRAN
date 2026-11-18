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
module RecordStoreHighScores_m
  use JR_m
  use ByteArrayInputStream_m
  use DataInputStream_m
  use EOFException_m
  use IOException_m
  use TsUtil_m
  use GameInfo_m
  use NullRecordComparator_m
  use NullRecordFilter_m
  use NullRecordStore_m
  use StdUtil_m
  use LogUtil_m
  use PreLogUtil_m
  use StringMaker_m
  use AbeClientInformationInterface_m
  use PlatformRecordIdUtil_m
  use CommonSeps_m
  use CommonStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use HighScores_m
  use HighScore_m
  use ScoreComparator_m
  implicit none

  type, extends(HighScores) :: RecordStoreHighScores
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(PlatformRecordIdUtil), pointer :: f_platformRecordIdUtil => null()
    class(TsUtil), pointer :: f_tsUtil => null()
    character(len=:), allocatable :: f_RECORD_ID
    integer(4) :: f_MAXHIGHSCORES = 0
    class(GameInfo), pointer :: f_gameInfo => null()
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
    class(RecordComparator), pointer :: f_recordComparatorInterface => null()
  contains
    procedure :: jm_getRecordId_1 => RecordStoreHighScores_jm_getRecordId_1
    procedure :: jm_addHighScore_1 => RecordStoreHighScores_jm_addHighScore_1
    procedure :: jm_removeLowestHighScore_0 => RecordStoreHighScores_jm_removeLowestHighScore_0
    procedure :: jm_load_0 => RecordStoreHighScores_jm_load_0
    procedure :: jm_isTooManyHighScores_0 => RecordStoreHighScores_jm_isTooManyHighScores_0
    procedure :: jm_isBestScore_1 => RecordStoreHighScores_jm_isBestScore_1
    procedure :: jm_toString_0 => RecordStoreHighScores_jm_toString_0
  end type

  class(ABHashtable), pointer, save :: RecordStoreHighScores_jcell_hashTable => null()
  logical, save :: RecordStoreHighScores_jset_hashTable = .false.

contains

  function RecordStoreHighScores_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RecordStoreHighScores), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RecordStoreHighScores)
      jresult => object
    end select
  end function

  function RecordStoreHighScores_jstatic_hashTable() result(jresult)
    class(ABHashtable), pointer :: jresult
    class(StdUtil), pointer :: jtemp1
    if (.not. RecordStoreHighScores_jset_hashTable) then
      RecordStoreHighScores_jset_hashTable = .true.
      jtemp1 => StdUtil_jm_getInstance_0()
    RecordStoreHighScores_jcell_hashTable => jtemp1%jm_createHashtable_0()
    end if
    jresult => RecordStoreHighScores_jcell_hashTable
  end function

  subroutine RecordStoreHighScores_jsetstatic_hashTable(jvalue)
    class(ABHashtable), target, optional :: jvalue
    RecordStoreHighScores_jset_hashTable = .true.
    if (present(jvalue)) then
      RecordStoreHighScores_jcell_hashTable => jvalue
    else
      RecordStoreHighScores_jcell_hashTable => null()
    end if
  end subroutine

  recursive function RecordStoreHighScores_jnew_6(j_abeClientInformation, j_gameInfo, j_name, j_heading, j_columnTwoHeading, j_recordComparatorInterface) result(this)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_heading
    character(len=*), intent(in) :: j_columnTwoHeading
    class(RecordComparator), target, optional :: j_recordComparatorInterface
    class(RecordStoreHighScores), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RecordStoreHighScores'
    this%f_RECORD_ID = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_platformRecordIdUtil => PlatformRecordIdUtil_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    this%f_RECORD_ID = '_HS'
    this%f_MAXHIGHSCORES = 100
    
    
    
        continue ! super()
        this%f_abeClientInformation => j_abeClientInformation
        this%f_gameInfo => j_gameInfo
        this%f_recordComparatorInterface => j_recordComparatorInterface
        call this%jm_load_0()
  end function

  recursive function RecordStoreHighScores_jm_getInstance_6(j_abeClientInformation, j_gameInfo, j_highScoreName, j_heading, j_columnTwoHeading, j_recordComparatorInterface) result(jresult)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    character(len=*), intent(in) :: j_highScoreName
    character(len=*), intent(in) :: j_heading
    character(len=*), intent(in) :: j_columnTwoHeading
    class(RecordComparator), target, optional :: j_recordComparatorInterface
    class(HighScores), pointer :: jresult
    class(JObject), pointer :: j_highScoresCanBeNull
    class(HighScores), pointer :: j_highScores
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref1 => RecordStoreHighScores_jstatic_hashTable())
        j_highScoresCanBeNull => jstaticref1%jm_get_1(j_highScoreName)
        end associate
        if ((.not. associated(j_highScoresCanBeNull))) then
            j_highScores => RecordStoreHighScores_jnew_6(j_abeClientInformation, j_gameInfo, j_highScoreName, j_heading, j_columnTwoHeading, j_recordComparatorInterface)
            associate (jstaticref2 => RecordStoreHighScores_jstatic_hashTable())
            jdiscardRef => jstaticref2%jm_put_2(j_highScores%jm_getName_0(), j_highScores)
            end associate
            jresult => j_highScores
            return
        end if
        jresult => HighScores_jcast(j_highScoresCanBeNull)
        return
  end function

  recursive function RecordStoreHighScores_jm_getRecordId_1(this, j_abeClientInformation) result(jresult)
    class(RecordStoreHighScores), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonSeps), pointer :: jtemp6
        jtemp6 => CommonSeps_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(jtemp6%f_UNDERSCORE)
        jtemp3 => jtemp4%jm_append_1(this%jm_getName_0())
        jtemp2 => jtemp3%jm_append_1(this%f_RECORD_ID)
        jresult = this%f_platformRecordIdUtil%jm_getRecordId_2(j_abeClientInformation, jtemp2%jm_toString_0())
        return
  end function

  recursive subroutine RecordStoreHighScores_jm_addHighScore_1(this, j_newHighScore)
    class(RecordStoreHighScores), target :: this
    class(HighScore), target, optional :: j_newHighScore
    class(RecordStore), pointer :: j_recordStore
    integer(4), allocatable :: j_highScoreBytes(:)
    integer(4) :: j_recordId
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1('Adding HighScore: ')
            jtemp7 => jtemp8%jm_appendlong_1(j_newHighScore%jm_getScore_0())
            call this%f_logUtil%jm_putF_3(jtemp7%jm_toString_0(), this, this%f_commonStrings%f_ADD)
            if (this%jm_isTooManyHighScores_0()) then
                call this%f_logUtil%jm_putF_3('Removing Lowest Score', this, this%f_commonStrings%f_ADD)
                call this%jm_removeLowestHighScore_0()
            end if
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(this%f_abeClientInformation), .true.)
            j_highScoreBytes = j_newHighScore%jm_getAsBytes_0()
            j_recordId = j_recordStore%jm_addRecord_3(j_highScoreBytes, 0, size(j_highScoreBytes, 1))
            call this%jm_load_0()
            continue ! try
                if (associated(j_recordStore)) then
                    call PreLogUtil_jm_put_3('Closing RecordStore', this, this%f_commonStrings%f_ADD)
                    call j_recordStore%jm_closeRecordStore_0()
                end if
  end subroutine

  recursive subroutine RecordStoreHighScores_jm_removeLowestHighScore_0(this)
    class(RecordStoreHighScores), target :: this
    class(RecordStore), pointer :: j_recordStore
    class(RecordEnumeration), pointer :: j_recordEnum
    class(ScoreComparator), pointer :: j_scoreComparator
    class(HighScore), pointer :: j_bestHighScore
    integer(4), allocatable :: j_recordAsBytes(:)
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStream
    class(DataInputStream), pointer :: j_inputStream
    integer(4) :: j_id
    character(len=:), allocatable :: j_name
    integer(8) :: j_nextScore
    class(HighScore), pointer :: j_nextCurrentHighScore
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(this%f_abeClientInformation), .true.)
            j_recordEnum => j_recordStore%jm_enumerateRecords_3(NullRecordFilter_jstatic_NULL_RECORD_FILTER(), NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR(), .true.)
            j_scoreComparator => ScoreComparator_jcast(this%f_recordComparatorInterface)
            j_bestHighScore => HighScore_jnew_4((-1), 'none', GameInfo_jstatic_NONE(), j_scoreComparator%jm_getBestScore_0())
            continue
            continue
            continue
            do while (j_recordEnum%jm_hasNextElement_0())
                j_id = j_recordEnum%jm_nextRecordId_0()
                j_recordAsBytes = this%f_tsUtil%jm_getRecord_2(j_recordStore, j_id)
                if (allocated(j_recordAsBytes)) then
                    j_byteArrayInputStream => ByteArrayInputStream_jnew_1(j_recordAsBytes)
                    j_inputStream => DataInputStream_jnew_1(j_byteArrayInputStream)
                    j_name = j_inputStream%jm_readUTF_0()
                    j_nextScore = j_inputStream%jm_readLong_0()
                    j_nextCurrentHighScore => HighScore_jnew_4(j_id, j_name, GameInfo_jstatic_NONE(), j_nextScore)
                    if ((this%f_recordComparatorInterface%jm_compare_2(j_nextCurrentHighScore%jm_getAsBytes_0(), j_bestHighScore%jm_getAsBytes_0()) == RecordComparator_jstatic_FOLLOWS())) then
                        j_bestHighScore => j_nextCurrentHighScore
                    end if
                end if
            end do
            if ((j_bestHighScore%jm_getId_0() /= (-1))) then
                jtemp12 => StringMaker_jnew_0()
                jtemp11 => jtemp12%jm_append_1('Removing Lowest HighScore: ')
                jtemp10 => jtemp11%jm_appendlong_1(j_bestHighScore%jm_getScore_0())
                call this%f_logUtil%jm_putF_3(jtemp10%jm_toString_0(), this, this%f_commonStrings%f_LOAD)
                call j_recordStore%jm_deleteRecord_1(j_bestHighScore%jm_getId_0())
            end if
            continue ! try
                if (associated(j_recordStore)) then
                    call PreLogUtil_jm_put_3('Closing RecordStore', this, 'removeLowestHighScore')
                    call j_recordStore%jm_closeRecordStore_0()
                end if
  end subroutine

  recursive subroutine RecordStoreHighScores_jm_load_0(this)
    class(RecordStoreHighScores), target :: this
    class(RecordStore), pointer :: j_recordStore
    class(RecordEnumeration), pointer :: j_recordEnum
    integer(4), allocatable :: j_recordAsBytes(:)
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStream
    class(DataInputStream), pointer :: j_inputStream
    integer(4) :: j_id
    character(len=:), allocatable :: j_name
    integer(8) :: j_score
    class(HighScore), pointer :: j_newHighScore
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    integer(4) :: j_lastIndex
    class(HighScore), pointer :: j_highScore
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_recordStore => NullRecordStore_jstatic_NULL_RECORD_STORE()
        continue ! try
            j_recordStore => RecordStore_jm_openRecordStore_2(this%jm_getRecordId_1(this%f_abeClientInformation), .true.)
            call this%jm_setList_1(BasicArrayListD_jnew_0())
            j_recordEnum => j_recordStore%jm_enumerateRecords_3(NullRecordFilter_jstatic_NULL_RECORD_FILTER(), NullRecordComparator_jstatic_NULL_RECORD_COMPARATOR(), .true.)
            continue
            continue
            continue
            do while (j_recordEnum%jm_hasNextElement_0())
                j_id = j_recordEnum%jm_nextRecordId_0()
                j_recordAsBytes = this%f_tsUtil%jm_getRecord_2(j_recordStore, j_id)
                if (allocated(j_recordAsBytes)) then
                    j_byteArrayInputStream => ByteArrayInputStream_jnew_1(j_recordAsBytes)
                    j_inputStream => DataInputStream_jnew_1(j_byteArrayInputStream)
                    continue ! try
                        j_name = j_inputStream%jm_readUTF_0()
                        j_score = j_inputStream%jm_readLong_0()
                        j_newHighScore => HighScore_jnew_4(j_id, j_name, GameInfo_jstatic_NONE(), j_score)
                        j_list => this%jm_getList_0()
                        j_size = j_list%jm_size_0()
                        j_lastIndex = j_size
                        j_index = 0
                        do while ((j_index < j_size))
                            j_highScore => HighScore_jcast(j_list%f_objectArray((j_index) + 1)%v)
                            if ((this%f_recordComparatorInterface%jm_compare_2(j_newHighScore%jm_getAsBytes_0(), j_highScore%jm_getAsBytes_0()) == RecordComparator_jstatic_PRECEDES())) then
                                j_lastIndex = j_index
                                exit
                            end if
                            j_index = j_index + 1
                        end do
                        call j_list%jm_addAt_2(j_lastIndex, j_newHighScore)
                end if
            end do
            continue ! try
                if (associated(j_recordStore)) then
                    call PreLogUtil_jm_put_3('Closing RecordStore', this, this%f_commonStrings%f_LOAD)
                    call j_recordStore%jm_closeRecordStore_0()
                end if
  end subroutine

  recursive function RecordStoreHighScores_jm_isTooManyHighScores_0(this) result(jresult)
    class(RecordStoreHighScores), target :: this
    logical :: jresult
    class(BasicArrayList), pointer :: jtemp13
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
        jtemp13 => this%jm_getList_0()
        if ((associated(this%jm_getList_0()) .and. (jtemp13%jm_size_0() < this%f_MAXHIGHSCORES))) then
            jresult = .false.
            return
        else
            jtemp16 => StringMaker_jnew_0()
            jtemp15 => jtemp16%jm_append_1('HighScores RecordStore Max Reached: ')
            jtemp14 => jtemp15%jm_appendint_1(this%f_MAXHIGHSCORES)
            call this%f_logUtil%jm_putF_3(jtemp14%jm_toString_0(), this, 'isTooManyHighScores')
            jresult = .true.
            return
        end if
  end function

  recursive function RecordStoreHighScores_jm_isBestScore_1(this, j_newHighScore) result(jresult)
    class(RecordStoreHighScores), target :: this
    class(HighScore), target, optional :: j_newHighScore
    logical :: jresult
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(HighScore), pointer :: j_highScore
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if ((.not. this%jm_isTooManyHighScores_0())) then
                call this%f_logUtil%jm_putF_3('Slot Available for a High Score', this, 'isBestScore')
                jresult = .true.
                return
            else
                j_list => this%jm_getList_0()
                j_size = j_list%jm_size_0()
                j_index = 0
                do while ((j_index < j_size))
                    j_highScore => HighScore_jcast(j_list%f_objectArray((j_index) + 1)%v)
                    if ((this%f_recordComparatorInterface%jm_compare_2(j_newHighScore%jm_getAsBytes_0(), j_highScore%jm_getAsBytes_0()) == RecordComparator_jstatic_FOLLOWS())) then
                        call this%f_logUtil%jm_putF_3('Obtained a High Score', this, 'isBestScore')
                        jresult = .true.
                        return
                    end if
                    j_index = j_index + 1
                end do
            end if
            call this%f_logUtil%jm_putF_3('Not a High Score', this, 'isBestScore')
            jresult = .false.
            return
  end function

  recursive function RecordStoreHighScores_jm_toString_0(this) result(jresult)
    class(RecordStoreHighScores), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(HighScore), pointer :: j_highScore
    integer(4) :: j_index
    class(CommonSeps), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%HighScores%jm_toString_0())
        j_list => this%jm_getList_0()
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_highScore => HighScore_jcast(j_list%f_objectArray((j_index) + 1)%v)
            jdiscardRef => j_stringBuffer%jm_append_1(j_highScore%jm_getScoreString_0())
            jtemp17 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp17%f_COMMA_SEP)
            j_index = j_index + 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module RecordStoreHighScores_m

