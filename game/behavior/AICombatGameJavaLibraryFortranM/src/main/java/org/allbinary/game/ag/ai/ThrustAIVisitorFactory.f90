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
! package org.allbinary.game.ag.ai
module ThrustAIVisitorFactory_m
  use JR_m
  use ThrustAIVisitor_m
  implicit none

  type, extends(JObject) :: ThrustAIVisitorFactory
  end type

  class(ThrustAIVisitor), pointer, save :: ThrustAIVisitorFactory_jcell_instance => null()
  logical, save :: ThrustAIVisitorFactory_jset_instance = .false.

contains

  function ThrustAIVisitorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ThrustAIVisitorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ThrustAIVisitorFactory)
      jresult => object
    end select
  end function

  function ThrustAIVisitorFactory_jstatic_instance() result(jresult)
    class(ThrustAIVisitor), pointer :: jresult
    if (.not. ThrustAIVisitorFactory_jset_instance) then
      ThrustAIVisitorFactory_jset_instance = .true.
      ThrustAIVisitorFactory_jcell_instance => ThrustAIVisitor_jnew_0()
    end if
    jresult => ThrustAIVisitorFactory_jcell_instance
  end function

  subroutine ThrustAIVisitorFactory_jsetstatic_instance(jvalue)
    class(ThrustAIVisitor), target, optional :: jvalue
    ThrustAIVisitorFactory_jset_instance = .true.
    if (present(jvalue)) then
      ThrustAIVisitorFactory_jcell_instance => jvalue
    else
      ThrustAIVisitorFactory_jcell_instance => null()
    end if
  end subroutine

  function ThrustAIVisitorFactory_jnew_0() result(this)
    class(ThrustAIVisitorFactory), pointer :: this
    allocate(this)
    this%jclass = 'ThrustAIVisitorFactory'
  end function

  recursive function ThrustAIVisitorFactory_jm_getInstance_0() result(jresult)
    class(ThrustAIVisitor), pointer :: jresult
        jresult => ThrustAIVisitorFactory_jstatic_instance()
        return
  end function
end module ThrustAIVisitorFactory_m

