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
module ScoreableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ScoreableInterface
  contains
    procedure :: jm_getPoints_0 => ScoreableInterface_jm_getPoints_0
    procedure :: jm_addPoints_1 => ScoreableInterface_jm_addPoints_1
    procedure :: jm_removePoints_1 => ScoreableInterface_jm_removePoints_1
  end type


contains

  function ScoreableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScoreableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScoreableInterface)
      jresult => object
    end select
  end function

  function ScoreableInterface_jnew_0() result(this)
    class(ScoreableInterface), pointer :: this
    allocate(this)
    this%jclass = 'ScoreableInterface'
  end function

  recursive function ScoreableInterface_jm_getPoints_0(this) result(jresult)
    class(ScoreableInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: ScoreableInterface.getPoints'
  end function

  recursive subroutine ScoreableInterface_jm_addPoints_1(this, j_points)
    class(ScoreableInterface), target :: this
    integer(4), value :: j_points
    error stop 'AbstractMethodError: ScoreableInterface.addPoints'
  end subroutine

  recursive subroutine ScoreableInterface_jm_removePoints_1(this, j_points)
    class(ScoreableInterface), target :: this
    integer(4), value :: j_points
    error stop 'AbstractMethodError: ScoreableInterface.removePoints'
  end subroutine
end module ScoreableInterface_m

