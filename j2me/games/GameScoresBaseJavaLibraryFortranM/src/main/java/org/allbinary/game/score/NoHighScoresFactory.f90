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
module NoHighScoresFactory_m
  use JR_m
  use GameInfo_m
  use LogUtil_m
  use HighScoresBase_m
  use HighScores_m
  use HighScoresResultsListener_m
  use HighScoresHelperBase_m
  use HighScoresHelperBaseInterface_m
  implicit none

  type, extends(HighScoresBase) :: NoHighScoresFactory
    class(LogUtil), pointer :: f_logUtil => null()
    type(JRef), allocatable :: f_NO_HIGH_SCORES(:)
  contains
    procedure :: jm_fetchHighScores_2 => NoHighScoresFactory_jm_fetchHighScores_2
    procedure :: jm_createHighScoresHelper_0 => NoHighScoresFactory_jm_createHighScoresHelper_0
  end type

  class(NoHighScoresFactory), pointer, save :: NoHighScoresFactory_jcell_instance => null()
  logical, save :: NoHighScoresFactory_jset_instance = .false.

contains

  function NoHighScoresFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoHighScoresFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoHighScoresFactory)
      jresult => object
    end select
  end function

  function NoHighScoresFactory_jstatic_instance() result(jresult)
    class(NoHighScoresFactory), pointer :: jresult
    if (.not. NoHighScoresFactory_jset_instance) then
      NoHighScoresFactory_jset_instance = .true.
      NoHighScoresFactory_jcell_instance => NoHighScoresFactory_jnew_0()
    end if
    jresult => NoHighScoresFactory_jcell_instance
  end function

  subroutine NoHighScoresFactory_jsetstatic_instance(jvalue)
    class(NoHighScoresFactory), target, optional :: jvalue
    NoHighScoresFactory_jset_instance = .true.
    if (present(jvalue)) then
      NoHighScoresFactory_jcell_instance => jvalue
    else
      NoHighScoresFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function NoHighScoresFactory_jnew_0() result(this)
    class(NoHighScoresFactory), pointer :: this
    allocate(this)
    this%jclass = 'NoHighScoresFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_NO_HIGH_SCORES = JR_newRefArray(0)
        continue
  end function

  recursive function NoHighScoresFactory_jm_getInstance_0() result(jresult)
    class(NoHighScoresFactory), pointer :: jresult
        jresult => NoHighScoresFactory_jstatic_instance()
        return
  end function

  recursive subroutine NoHighScoresFactory_jm_fetchHighScores_2(this, j_gameInfo, j_highScoresResultsListener)
    class(NoHighScoresFactory), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Getting No HighScores', this, 'fetchHighScores')
        call j_highScoresResultsListener%jm_setHighScoresArray_1(this%f_NO_HIGH_SCORES)
  end subroutine

  recursive function NoHighScoresFactory_jm_createHighScoresHelper_0(this) result(jresult)
    class(NoHighScoresFactory), target :: this
    class(HighScoresHelperBaseInterface), pointer :: jresult
        jresult => HighScoresHelperBase_jnew_0()
        return
  end function
end module NoHighScoresFactory_m

function NoHighScoresFactory_jnew_0_jext() result(this)
  use NoHighScoresFactory_m, only: JObject, NoHighScoresFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoHighScoresFactory_jnew_0()
end function

