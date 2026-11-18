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
! package org.allbinary.ai
module ArtificialIntelligenceTransitionInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: ArtificialIntelligenceTransitionInterface
  contains
    procedure :: jm_transition_0 => ArtificialIntelligenceTransitionInterface_jm_transition_0
  end type


contains

  function ArtificialIntelligenceTransitionInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArtificialIntelligenceTransitionInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArtificialIntelligenceTransitionInterface)
      jresult => object
    end select
  end function

  function ArtificialIntelligenceTransitionInterface_jnew_0() result(this)
    class(ArtificialIntelligenceTransitionInterface), pointer :: this
    allocate(this)
    this%jclass = 'ArtificialIntelligenceTransitionInterface'
  end function

  recursive subroutine ArtificialIntelligenceTransitionInterface_jm_transition_0(this)
    class(ArtificialIntelligenceTransitionInterface), target :: this
    error stop 'AbstractMethodError: ArtificialIntelligenceTransitionInterface.transition'
  end subroutine
end module ArtificialIntelligenceTransitionInterface_m

