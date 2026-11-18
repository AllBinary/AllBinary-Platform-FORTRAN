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
module NoBasicConstantVelocityMovement_m
  use JR_m
  use AllBinaryGameLayer_m
  use BasicVelocityProperties_m
  use BasicDecimal_m
  use BasicConstantVelocityMovement_m
  implicit none

  type, extends(BasicConstantVelocityMovement) :: NoBasicConstantVelocityMovement
  contains
    procedure :: jm_process_1 => NoBasicConstantVelocityMovement_jm_process_1
  end type


contains

  function NoBasicConstantVelocityMovement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoBasicConstantVelocityMovement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoBasicConstantVelocityMovement)
      jresult => object
    end select
  end function

  recursive function NoBasicConstantVelocityMovement_jnew_0() result(this)
    class(NoBasicConstantVelocityMovement), pointer :: this
    allocate(this)
    this%jclass = 'NoBasicConstantVelocityMovement'
        continue ! super()
  end function

  recursive subroutine NoBasicConstantVelocityMovement_jm_process_1(this, j_layer)
    class(NoBasicConstantVelocityMovement), target :: this
    class(AllBinaryGameLayer), target, optional :: j_layer
    continue
  end subroutine
end module NoBasicConstantVelocityMovement_m

function NoBasicConstantVelocityMovement_jnew_0_jext() result(this)
  use NoBasicConstantVelocityMovement_m, only: JObject, NoBasicConstantVelocityMovement_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoBasicConstantVelocityMovement_jnew_0()
end function

