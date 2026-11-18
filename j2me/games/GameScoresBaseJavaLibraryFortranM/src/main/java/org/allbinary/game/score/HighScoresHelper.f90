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
module HighScoresHelper_m
  use JR_m
  use CircularIndexUtil_m
  use HighScoresHelperBase_m
  use HighScores_m
  implicit none

  type, extends(HighScoresHelperBase) :: HighScoresHelper
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    integer(4) :: f_lastIndex = 0
  contains
    procedure :: jm_setHighScoresArray_1 => HighScoresHelper_jm_setHighScoresArray_1
    procedure :: jm_getNextHighScores_0 => HighScoresHelper_jm_getNextHighScores_0
    procedure :: jm_isAnyHighScores_0 => HighScoresHelper_jm_isAnyHighScores_0
  end type


contains

  function HighScoresHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresHelper)
      jresult => object
    end select
  end function

  function HighScoresHelper_jnew_0() result(this)
    class(HighScoresHelper), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresHelper'
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstanceAt_2(0, 0)
    this%f_lastIndex = (-1)
  end function

  recursive subroutine HighScoresHelper_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoresHelper), target :: this
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
  end subroutine

  recursive function HighScoresHelper_jm_getNextHighScores_0(this) result(jresult)
    class(HighScoresHelper), target :: this
    class(HighScores), pointer :: jresult
    class(HighScores), pointer :: j_highScores
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_highScores => HighScores_jcast(this%f_highScoresArrayP((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
        j_index = 0
        do while (((((j_highScores%jm_getTotal_0() < 1) .or. (this%f_lastIndex == this%f_circularIndexUtil%jm_getIndex_0()))) .and. (j_index < size(this%f_highScoresArrayP, 1))))
            jdiscardInt = this%f_circularIndexUtil%jm_next_0()
            j_highScores => HighScores_jcast(this%f_highScoresArrayP((this%f_circularIndexUtil%jm_getIndex_0()) + 1)%v)
            j_index = j_index + 1
        end do
        this%f_lastIndex = this%f_circularIndexUtil%jm_getIndex_0()
        jresult => j_highScores
        return
  end function

  recursive function HighScoresHelper_jm_isAnyHighScores_0(this) result(jresult)
    class(HighScoresHelper), target :: this
    logical :: jresult
    logical :: j_anyScores
    class(HighScores), pointer :: j_highScores
    integer(4) :: j_index
        if ((size(this%f_highScoresArrayP, 1) < 1)) then
            jresult = .false.
            return
        end if
        j_anyScores = .false.
        continue
        j_index = (size(this%f_highScoresArrayP, 1) - 1)
        do while ((j_index >= 0))
            j_highScores => HighScores_jcast(this%f_highScoresArrayP((j_index) + 1)%v)
            if ((j_highScores%jm_getTotal_0() > 0)) then
                j_anyScores = .true.
            end if
            j_index = j_index - 1
        end do
        jresult = j_anyScores
        return
  end function
end module HighScoresHelper_m

function HighScoresHelper_jnew_0_jext() result(this)
  use HighScoresHelper_m, only: JObject, HighScoresHelper_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => HighScoresHelper_jnew_0()
end function

