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
module HighScoresHelperBaseInterface_m
  use JR_m
  use HighScoresResultsListener_m
  use HighScores_m
  implicit none

  type, extends(HighScoresResultsListener) :: HighScoresHelperBaseInterface
  contains
    procedure :: jm_setSelectedHighScores_1 => HighScoresHelperBaseInterface_jm_setSelectedHighScores_1
    procedure :: jm_getHighScoresArray_0 => HighScoresHelperBaseInterface_jm_getHighScoresArray_0
    procedure :: jm_getSelectedHighScores_0 => HighScoresHelperBaseInterface_jm_getSelectedHighScores_0
  end type


contains

  function HighScoresHelperBaseInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresHelperBaseInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresHelperBaseInterface)
      jresult => object
    end select
  end function

  function HighScoresHelperBaseInterface_jnew_0() result(this)
    class(HighScoresHelperBaseInterface), pointer :: this
    allocate(this)
    this%jclass = 'HighScoresHelperBaseInterface'
  end function

  recursive subroutine HighScoresHelperBaseInterface_jm_setSelectedHighScores_1(this, j_selectedHighScores)
    class(HighScoresHelperBaseInterface), target :: this
    class(HighScores), target, optional :: j_selectedHighScores
    error stop 'AbstractMethodError: HighScoresHelperBaseInterface.setSelectedHighScores'
  end subroutine

  recursive function HighScoresHelperBaseInterface_jm_getHighScoresArray_0(this) result(jresult)
    class(HighScoresHelperBaseInterface), target :: this
    type(JRef), allocatable :: jresult(:)
    error stop 'AbstractMethodError: HighScoresHelperBaseInterface.getHighScoresArray'
  end function

  recursive function HighScoresHelperBaseInterface_jm_getSelectedHighScores_0(this) result(jresult)
    class(HighScoresHelperBaseInterface), target :: this
    class(HighScores), pointer :: jresult
    error stop 'AbstractMethodError: HighScoresHelperBaseInterface.getSelectedHighScores'
  end function
end module HighScoresHelperBaseInterface_m

