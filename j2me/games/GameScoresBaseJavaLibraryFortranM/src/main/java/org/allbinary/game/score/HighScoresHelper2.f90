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
module HighScoresHelper2_m
  use JR_m
  use CircularIndexUtil_m
  use HighScoresHelperBase_m
  use NullHighScoresSingletonFactory_m
  use HighScores_m
  implicit none

  type, extends(HighScoresHelperBase) :: HighScoresHelper2
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    class(HighScores), pointer :: f_selectedHighScores => null()
  contains
    procedure :: jm_setSelectedHighScores_1 => HighScoresHelper2_jm_setSelectedHighScores_1
    procedure :: jm_getSelectedHighScores_0 => HighScoresHelper2_jm_getSelectedHighScores_0
    procedure :: jm_setHighScoresArray_1 => HighScoresHelper2_jm_setHighScoresArray_1
    procedure :: jm_selectHighScores_0 => HighScoresHelper2_jm_selectHighScores_0
  end type


contains

  function HighScoresHelper2_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresHelper2), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresHelper2)
      jresult => object
    end select
  end function

  function HighScoresHelper2_jnew_0() result(this)
    class(HighScoresHelper2), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresHelper2'
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstanceAt_2(0, 0)
    this%f_selectedHighScores => NullHighScoresSingletonFactory_jm_getInstance_0()
  end function

  recursive subroutine HighScoresHelper2_jm_setSelectedHighScores_1(this, j_selectedHighScores)
    class(HighScoresHelper2), target :: this
    class(HighScores), target, optional :: j_selectedHighScores
        this%f_selectedHighScores => j_selectedHighScores
  end subroutine

  recursive function HighScoresHelper2_jm_getSelectedHighScores_0(this) result(jresult)
    class(HighScoresHelper2), target :: this
    class(HighScores), pointer :: jresult
        jresult => this%f_selectedHighScores
        return
  end function

  recursive subroutine HighScoresHelper2_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoresHelper2), target :: this
    type(JRef) :: j_highScoresArrayP(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%HighScoresHelperBase%jm_setHighScoresArray_1(j_highScoresArrayP)
        call this%f_circularIndexUtil%jm_setSize_1(size(this%f_highScoresArrayP, 1))
        call this%jm_selectHighScores_0()
  end subroutine

  recursive subroutine HighScoresHelper2_jm_selectHighScores_0(this)
    class(HighScoresHelper2), target :: this
    class(HighScores), pointer :: j_highScores
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((size(this%f_highScoresArrayP, 1) == 0)) then
            call this%jm_setSelectedHighScores_1(NullHighScoresSingletonFactory_jm_getInstance_0())
            return
        end if
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        j_highScores => HighScores_jcast(this%f_highScoresArrayP((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
        j_index = 0
        do while (((j_highScores%jm_getTotal_0() < 1) .and. (j_index < size(this%f_highScoresArrayP, 1))))
            j_highScores => HighScores_jcast(this%f_highScoresArrayP((this%f_circularIndexUtil%jm_next_0()) + 1)%v)
            j_index = j_index + 1
        end do
        call this%jm_setSelectedHighScores_1(j_highScores)
  end subroutine
end module HighScoresHelper2_m

function HighScoresHelper2_jnew_0_jext() result(this)
  use HighScoresHelper2_m, only: JObject, HighScoresHelper2_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HighScoresHelper2_jnew_0()
end function

