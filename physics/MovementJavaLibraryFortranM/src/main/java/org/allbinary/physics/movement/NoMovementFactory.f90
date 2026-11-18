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
! package org.allbinary.physics.movement
module NoMovementFactory_m
  use JR_m
  use Movement_m
  implicit none

  type, extends(JObject) :: NoMovementFactory
    class(Movement), pointer :: f_movement => null()
  contains
    procedure :: jm_getMovmentInstance_0 => NoMovementFactory_jm_getMovmentInstance_0
  end type

  class(NoMovementFactory), pointer, save :: NoMovementFactory_jcell_instance => null()
  logical, save :: NoMovementFactory_jset_instance = .false.

contains

  function NoMovementFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoMovementFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoMovementFactory)
      jresult => object
    end select
  end function

  function NoMovementFactory_jstatic_instance() result(jresult)
    class(NoMovementFactory), pointer :: jresult
    if (.not. NoMovementFactory_jset_instance) then
      NoMovementFactory_jset_instance = .true.
      NoMovementFactory_jcell_instance => NoMovementFactory_jnew_0()
    end if
    jresult => NoMovementFactory_jcell_instance
  end function

  subroutine NoMovementFactory_jsetstatic_instance(jvalue)
    class(NoMovementFactory), target, optional :: jvalue
    NoMovementFactory_jset_instance = .true.
    if (present(jvalue)) then
      NoMovementFactory_jcell_instance => jvalue
    else
      NoMovementFactory_jcell_instance => null()
    end if
  end subroutine

  function NoMovementFactory_jnew_0() result(this)
    class(NoMovementFactory), pointer :: this
    allocate(this)
    this%jclass = 'NoMovementFactory'
    this%f_movement => Movement_jnew_0()
  end function

  recursive function NoMovementFactory_jm_getInstance_0() result(jresult)
    class(NoMovementFactory), pointer :: jresult
        jresult => NoMovementFactory_jstatic_instance()
        return
  end function

  recursive function NoMovementFactory_jm_getMovmentInstance_0(this) result(jresult)
    class(NoMovementFactory), target :: this
    class(Movement), pointer :: jresult
        jresult => this%f_movement
        return
  end function
end module NoMovementFactory_m

