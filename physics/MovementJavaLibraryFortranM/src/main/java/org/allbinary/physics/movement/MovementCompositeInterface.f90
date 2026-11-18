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
module MovementCompositeInterface_m
  use JR_m
  use Movement_m
  implicit none

  type, extends(JObject) :: MovementCompositeInterface
  contains
    procedure :: jm_getMovement_0 => MovementCompositeInterface_jm_getMovement_0
  end type


contains

  function MovementCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MovementCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MovementCompositeInterface)
      jresult => object
    end select
  end function

  function MovementCompositeInterface_jnew_0() result(this)
    class(MovementCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'MovementCompositeInterface'
  end function

  recursive function MovementCompositeInterface_jm_getMovement_0(this) result(jresult)
    class(MovementCompositeInterface), target :: this
    class(Movement), pointer :: jresult
    error stop 'AbstractMethodError: MovementCompositeInterface.getMovement'
  end function
end module MovementCompositeInterface_m

