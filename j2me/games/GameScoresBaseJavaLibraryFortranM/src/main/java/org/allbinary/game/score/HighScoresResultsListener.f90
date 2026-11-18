! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module HighScoresResultsListener_m
  use JR_m
  use HighScores_m
  implicit none

  type, extends(JObject) :: HighScoresResultsListener
  contains
    procedure :: jm_setHighScoresArray_1 => HighScoresResultsListener_jm_setHighScoresArray_1
  end type


contains

  function HighScoresResultsListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresResultsListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresResultsListener)
      jresult => object
    end select
  end function

  function HighScoresResultsListener_jnew_0() result(this)
    class(HighScoresResultsListener), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresResultsListener'
  end function

  recursive subroutine HighScoresResultsListener_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoresResultsListener), target :: this
    type(JRef) :: j_highScoresArrayP(:)
    error stop 'AbstractMethodError: HighScoresResultsListener.setHighScoresArray'
  end subroutine
end module HighScoresResultsListener_m

