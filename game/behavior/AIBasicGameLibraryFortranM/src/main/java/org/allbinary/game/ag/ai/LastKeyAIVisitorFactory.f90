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
module LastKeyAIVisitorFactory_m
  use JR_m
  use LastKeyAIVisitor_m
  implicit none

  type, extends(JObject) :: LastKeyAIVisitorFactory
  end type

  class(LastKeyAIVisitor), pointer, save :: LastKeyAIVisitorFactory_jcell_instance => null()
  logical, save :: LastKeyAIVisitorFactory_jset_instance = .false.

contains

  function LastKeyAIVisitorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LastKeyAIVisitorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LastKeyAIVisitorFactory)
      jresult => object
    end select
  end function

  function LastKeyAIVisitorFactory_jstatic_instance() result(jresult)
    class(LastKeyAIVisitor), pointer :: jresult
    if (.not. LastKeyAIVisitorFactory_jset_instance) then
      LastKeyAIVisitorFactory_jset_instance = .true.
      LastKeyAIVisitorFactory_jcell_instance => LastKeyAIVisitor_jnew_0()
    end if
    jresult => LastKeyAIVisitorFactory_jcell_instance
  end function

  subroutine LastKeyAIVisitorFactory_jsetstatic_instance(jvalue)
    class(LastKeyAIVisitor), target, optional :: jvalue
    LastKeyAIVisitorFactory_jset_instance = .true.
    if (present(jvalue)) then
      LastKeyAIVisitorFactory_jcell_instance => jvalue
    else
      LastKeyAIVisitorFactory_jcell_instance => null()
    end if
  end subroutine

  function LastKeyAIVisitorFactory_jnew_0() result(this)
    class(LastKeyAIVisitorFactory), pointer :: this
    allocate(this)
    this%jclass = 'LastKeyAIVisitorFactory'
  end function

  recursive function LastKeyAIVisitorFactory_jm_getInstance_0() result(jresult)
    class(LastKeyAIVisitor), pointer :: jresult
        jresult => LastKeyAIVisitorFactory_jstatic_instance()
        return
  end function
end module LastKeyAIVisitorFactory_m

