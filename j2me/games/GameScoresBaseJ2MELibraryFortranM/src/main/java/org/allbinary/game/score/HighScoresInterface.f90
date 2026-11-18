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
module HighScoresInterface_m
  use JR_m
  use BasicArrayList_m
  use HighScore_m
  implicit none

  type, extends(JObject) :: HighScoresInterface
  contains
    procedure :: jm_getList_0 => HighScoresInterface_jm_getList_0
    procedure :: jm_addHighScore_1 => HighScoresInterface_jm_addHighScore_1
    procedure :: jm_getTotal_0 => HighScoresInterface_jm_getTotal_0
    procedure :: jm_isBestScore_1 => HighScoresInterface_jm_isBestScore_1
  end type


contains

  function HighScoresInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresInterface)
      jresult => object
    end select
  end function

  function HighScoresInterface_jnew_0() result(this)
    class(HighScoresInterface), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresInterface'
  end function

  recursive function HighScoresInterface_jm_getList_0(this) result(jresult)
    class(HighScoresInterface), target :: this
    class(BasicArrayList), pointer :: jresult
    error stop 'AbstractMethodError: HighScoresInterface.getList'
  end function

  recursive subroutine HighScoresInterface_jm_addHighScore_1(this, j_newHighScore)
    class(HighScoresInterface), target :: this
    class(HighScore), target, optional :: j_newHighScore
    error stop 'AbstractMethodError: HighScoresInterface.addHighScore'
  end subroutine

  recursive function HighScoresInterface_jm_getTotal_0(this) result(jresult)
    class(HighScoresInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: HighScoresInterface.getTotal'
  end function

  recursive function HighScoresInterface_jm_isBestScore_1(this, j_newHighScore) result(jresult)
    class(HighScoresInterface), target :: this
    class(HighScore), target, optional :: j_newHighScore
    logical :: jresult
    error stop 'AbstractMethodError: HighScoresInterface.isBestScore'
  end function
end module HighScoresInterface_m

