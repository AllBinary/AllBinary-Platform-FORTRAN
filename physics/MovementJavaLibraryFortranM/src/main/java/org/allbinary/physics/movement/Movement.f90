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
module Movement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicDecimal_m
  use MovementInterface_m
  implicit none

  type, extends(MovementInterface) :: Movement
  contains
    procedure :: jm_init_3 => Movement_jm_init_3
    procedure :: jm_process_1 => Movement_jm_process_1
    procedure :: jm_stop_0 => Movement_jm_stop_0
  end type


contains

  function Movement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Movement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Movement)
      jresult => object
    end select
  end function

  recursive function Movement_jnew_0() result(this)
    class(Movement), pointer :: this
    allocate(this)
    this%jclass = 'Movement'
        continue
  end function

  recursive subroutine Movement_jm_init_3(this, j_speedBasicDecimal, j_angle, j_otherAngle)
    class(Movement), target :: this
    class(BasicDecimal), target, optional :: j_speedBasicDecimal
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    continue
  end subroutine

  recursive subroutine Movement_jm_process_1(this, j_layer)
    class(Movement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    continue
  end subroutine

  recursive subroutine Movement_jm_stop_0(this)
    class(Movement), target :: this
    continue
  end subroutine
end module Movement_m

