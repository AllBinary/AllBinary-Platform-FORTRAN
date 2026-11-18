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
module HighScoresFactoryInterface_m
  use JR_m
  use GameInfo_m
  use HighScoresResultsListener_m
  use HighScoresHelperBaseInterface_m
  implicit none

  type, extends(JObject) :: HighScoresFactoryInterface
  contains
    procedure :: jm_fetchHighScores_2 => HighScoresFactoryInterface_jm_fetchHighScores_2
    procedure :: jm_fetchHighScoresPreload_3 => HighScoresFactoryInterface_jm_fetchHighScoresPreload_3
    procedure :: jm_createHighScoresHelper_0 => HighScoresFactoryInterface_jm_createHighScoresHelper_0
  end type


contains

  function HighScoresFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresFactoryInterface)
      jresult => object
    end select
  end function

  function HighScoresFactoryInterface_jnew_0() result(this)
    class(HighScoresFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresFactoryInterface'
  end function

  recursive subroutine HighScoresFactoryInterface_jm_fetchHighScores_2(this, j_gameInfo, j_highScoresResultsListener)
    class(HighScoresFactoryInterface), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    error stop 'AbstractMethodError: HighScoresFactoryInterface.fetchHighScores'
  end subroutine

  recursive subroutine HighScoresFactoryInterface_jm_fetchHighScoresPreload_3(this, j_gameInfo, j_highScoresResultsListener, j_preload)
    class(HighScoresFactoryInterface), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    logical, value :: j_preload
    error stop 'AbstractMethodError: HighScoresFactoryInterface.fetchHighScoresPreload'
  end subroutine

  recursive function HighScoresFactoryInterface_jm_createHighScoresHelper_0(this) result(jresult)
    class(HighScoresFactoryInterface), target :: this
    class(HighScoresHelperBaseInterface), pointer :: jresult
    error stop 'AbstractMethodError: HighScoresFactoryInterface.createHighScoresHelper'
  end function
end module HighScoresFactoryInterface_m

