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
module HighScoresBase_m
  use JR_m
  use GameInfo_m
  use CommonStrings_m
  use HighScoresFactoryInterface_m
  use HighScoresResultsListener_m
  use HighScoresHelperBaseInterface_m
  implicit none

  type, extends(HighScoresFactoryInterface) :: HighScoresBase
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_fetchHighScores_2 => HighScoresBase_jm_fetchHighScores_2
    procedure :: jm_fetchHighScoresPreload_3 => HighScoresBase_jm_fetchHighScoresPreload_3
    procedure :: jm_createHighScoresHelper_0 => HighScoresBase_jm_createHighScoresHelper_0
  end type


contains

  function HighScoresBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresBase)
      jresult => object
    end select
  end function

  recursive function HighScoresBase_jnew_0() result(this)
    class(HighScoresBase), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresBase'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
        continue
  end function

  recursive subroutine HighScoresBase_jm_fetchHighScores_2(this, j_gameInfo, j_highScoresResultsListener)
    class(HighScoresBase), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive subroutine HighScoresBase_jm_fetchHighScoresPreload_3(this, j_gameInfo, j_highScoresResultsListener, j_preload)
    class(HighScoresBase), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    logical, value :: j_preload
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive function HighScoresBase_jm_createHighScoresHelper_0(this) result(jresult)
    class(HighScoresBase), target :: this
    class(HighScoresHelperBaseInterface), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module HighScoresBase_m

