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
module ScoreableInterfaceCompositeInterface_m
  use JR_m
  use Scoreable_m
  implicit none

  type, extends(JObject) :: ScoreableInterfaceCompositeInterface
  contains
    procedure :: jm_getScoreableInterface_0 => ScoreableInterfaceCompositeInterface_jm_getScoreableInterface_0
  end type


contains

  function ScoreableInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScoreableInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScoreableInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function ScoreableInterfaceCompositeInterface_jnew_0() result(this)
    class(ScoreableInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'ScoreableInterfaceCompositeInterface'
  end function

  recursive function ScoreableInterfaceCompositeInterface_jm_getScoreableInterface_0(this) result(jresult)
    class(ScoreableInterfaceCompositeInterface), target :: this
    class(Scoreable), pointer :: jresult
    error stop 'AbstractMethodError: ScoreableInterfaceCompositeInterface.getScoreableInterface'
  end function
end module ScoreableInterfaceCompositeInterface_m

