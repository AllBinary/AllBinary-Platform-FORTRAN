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
module ScoreComparator_m
  use JR_m
  use ByteArrayInputStream_m
  use DataInputStream_m
  use EOFException_m
  use IOException_m
  use LogUtil_m
  use CommonStrings_m
  use Long_m
  implicit none

  type, extends(RecordComparator) :: ScoreComparator
    class(LogUtil), pointer :: f_logUtil => null()
    logical :: f_isHighestBest = .false.
  contains
    procedure :: jm_getBestScore_0 => ScoreComparator_jm_getBestScore_0
    procedure :: jm_compare_2 => ScoreComparator_jm_compare_2
    procedure :: jm_getHighTooLow_2 => ScoreComparator_jm_getHighTooLow_2
    procedure :: jm_getLowTooHigh_2 => ScoreComparator_jm_getLowTooHigh_2
  end type


contains

  function ScoreComparator_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScoreComparator), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScoreComparator)
      jresult => object
    end select
  end function

  recursive function ScoreComparator_jnew_1(j_isHighestBest) result(this)
    logical, value :: j_isHighestBest
    class(ScoreComparator), pointer :: this
    allocate(this)
    this%jclass = 'ScoreComparator'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_isHighestBest = j_isHighestBest
  end function

  recursive function ScoreComparator_jm_getBestScore_0(this) result(jresult)
    class(ScoreComparator), target :: this
    integer(8) :: jresult
        jresult = merge(Long_jstatic_MAX_VALUE(), 0, this%f_isHighestBest)
        return
  end function

  recursive function ScoreComparator_jm_compare_2(this, j_recordOne, j_recordTwo) result(jresult)
    class(ScoreComparator), target :: this
    integer(4) :: j_recordOne(:)
    integer(4) :: j_recordTwo(:)
    integer(4) :: jresult
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStreamOne
    class(DataInputStream), pointer :: j_inputStreamOne
    class(ByteArrayInputStream), pointer :: j_byteArrayInputStreamTwo
    class(DataInputStream), pointer :: j_inputStreamTwo
    integer(8) :: j_scoreOne
    integer(8) :: j_scoreTwo
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_byteArrayInputStreamOne => ByteArrayInputStream_jnew_1(j_recordOne)
        j_inputStreamOne => DataInputStream_jnew_1(j_byteArrayInputStreamOne)
        j_byteArrayInputStreamTwo => ByteArrayInputStream_jnew_1(j_recordTwo)
        j_inputStreamTwo => DataInputStream_jnew_1(j_byteArrayInputStreamTwo)
        j_scoreOne = 0_8
        j_scoreTwo = 0_8
        continue ! try
            call j_inputStreamOne%jm_readUTF_0()
            call j_inputStreamTwo%jm_readUTF_0()
            j_scoreOne = j_inputStreamOne%jm_readLong_0()
            j_scoreTwo = j_inputStreamTwo%jm_readLong_0()
        if (this%f_isHighestBest) then
            jresult = this%jm_getHighTooLow_2(j_scoreOne, j_scoreTwo)
            return
        else
            jresult = this%jm_getLowTooHigh_2(j_scoreOne, j_scoreTwo)
            return
        end if
  end function

  recursive function ScoreComparator_jm_getHighTooLow_2(this, j_scoreOne, j_scoreTwo) result(jresult)
    class(ScoreComparator), target :: this
    integer(8), value :: j_scoreOne
    integer(8), value :: j_scoreTwo
    integer(4) :: jresult
        if ((j_scoreOne > j_scoreTwo)) then
            jresult = RecordComparator_jstatic_PRECEDES()
            return
        else if ((j_scoreOne < j_scoreTwo)) then
            jresult = RecordComparator_jstatic_FOLLOWS()
            return
        else
            jresult = RecordComparator_jstatic_EQUIVALENT()
            return
        end if
  end function

  recursive function ScoreComparator_jm_getLowTooHigh_2(this, j_scoreOne, j_scoreTwo) result(jresult)
    class(ScoreComparator), target :: this
    integer(8), value :: j_scoreOne
    integer(8), value :: j_scoreTwo
    integer(4) :: jresult
        if ((j_scoreOne < j_scoreTwo)) then
            jresult = RecordComparator_jstatic_PRECEDES()
            return
        else if ((j_scoreOne > j_scoreTwo)) then
            jresult = RecordComparator_jstatic_FOLLOWS()
            return
        else
            jresult = RecordComparator_jstatic_EQUIVALENT()
            return
        end if
  end function
end module ScoreComparator_m

