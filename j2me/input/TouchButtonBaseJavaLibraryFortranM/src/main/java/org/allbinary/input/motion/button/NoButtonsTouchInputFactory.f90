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
! package org.allbinary.input.motion.button
module NoButtonsTouchInputFactory_m
  use JR_m
  use BaseTouchInput_m
  implicit none

  type, extends(JObject) :: NoButtonsTouchInputFactory
  end type

  class(BaseTouchInput), pointer, save :: NoButtonsTouchInputFactory_jcell_instance => null()
  logical, save :: NoButtonsTouchInputFactory_jset_instance = .false.

contains

  function NoButtonsTouchInputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoButtonsTouchInputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoButtonsTouchInputFactory)
      jresult => object
    end select
  end function

  function NoButtonsTouchInputFactory_jstatic_instance() result(jresult)
    class(BaseTouchInput), pointer :: jresult
    if (.not. NoButtonsTouchInputFactory_jset_instance) then
      NoButtonsTouchInputFactory_jset_instance = .true.
      NoButtonsTouchInputFactory_jcell_instance => BaseTouchInput_jnew_0()
    end if
    jresult => NoButtonsTouchInputFactory_jcell_instance
  end function

  subroutine NoButtonsTouchInputFactory_jsetstatic_instance(jvalue)
    class(BaseTouchInput), target, optional :: jvalue
    NoButtonsTouchInputFactory_jset_instance = .true.
    if (present(jvalue)) then
      NoButtonsTouchInputFactory_jcell_instance => jvalue
    else
      NoButtonsTouchInputFactory_jcell_instance => null()
    end if
  end subroutine

  function NoButtonsTouchInputFactory_jnew_0() result(this)
    class(NoButtonsTouchInputFactory), pointer :: this
    allocate(this)
    this%jclass = 'NoButtonsTouchInputFactory'
  end function

  recursive function NoButtonsTouchInputFactory_jm_getInstance_0() result(jresult)
    class(BaseTouchInput), pointer :: jresult
        jresult => NoButtonsTouchInputFactory_jstatic_instance()
        return
  end function
end module NoButtonsTouchInputFactory_m

