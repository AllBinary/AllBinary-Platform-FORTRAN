! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.game.physics.velocity
module VelocityBehaviorBase_m
  use JR_m
  use BasicVelocityProperties_m
  implicit none

  type, extends(JObject) :: VelocityBehaviorBase
  contains
    procedure :: jm_reduce_3 => VelocityBehaviorBase_jm_reduce_3
    procedure :: jm_reduceX_3 => VelocityBehaviorBase_jm_reduceX_3
    procedure :: jm_reduceY_3 => VelocityBehaviorBase_jm_reduceY_3
  end type


contains

  function VelocityBehaviorBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VelocityBehaviorBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VelocityBehaviorBase)
      jresult => object
    end select
  end function

  function VelocityBehaviorBase_jnew_0() result(this)
    class(VelocityBehaviorBase), pointer :: this
    allocate(this)
    this%jclass = 'VelocityBehaviorBase'
  end function

  recursive subroutine VelocityBehaviorBase_jm_reduce_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(VelocityBehaviorBase), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    continue
  end subroutine

  recursive subroutine VelocityBehaviorBase_jm_reduceX_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(VelocityBehaviorBase), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    continue
  end subroutine

  recursive subroutine VelocityBehaviorBase_jm_reduceY_3(this, j_velocityProperties, j_nominator, j_denominator)
    class(VelocityBehaviorBase), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_nominator
    integer(4), value :: j_denominator
    continue
  end subroutine
end module VelocityBehaviorBase_m

