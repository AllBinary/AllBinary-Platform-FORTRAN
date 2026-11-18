! 
! To change this license header, choose License Headers in Project Properties. 
! To change this template file, choose Tools | Templates 
! and open the template in the editor.  
! Generated Code Do Not Modify
! package org.allbinary.game
module ChallengerInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ChallengerInterface
  contains
    procedure :: jm_setWinner_1 => ChallengerInterface_jm_setWinner_1
  end type


contains

  function ChallengerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ChallengerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ChallengerInterface)
      jresult => object
    end select
  end function

  function ChallengerInterface_jnew_0() result(this)
    class(ChallengerInterface), pointer :: this
    allocate(this)
    this%jclass = 'ChallengerInterface'
  end function

  recursive subroutine ChallengerInterface_jm_setWinner_1(this, j_isWinner)
    class(ChallengerInterface), target :: this
    logical, value :: j_isWinner
    error stop 'AbstractMethodError: ChallengerInterface.setWinner'
  end subroutine
end module ChallengerInterface_m

