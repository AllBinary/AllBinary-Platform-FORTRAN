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
! package org.allbinary.animation
module RotationAnimationInterface_m
  use JR_m
  use DirectionalInterface_m
  use AngleInfo_m
  use Angle_m
  use Direction_m
  use IndexedAnimationInterface_m
  implicit none

  type, extends(IndexedAnimationInterface) :: RotationAnimationInterface
  contains
    procedure :: jm_getAngleInfoP_0 => RotationAnimationInterface_jm_getAngleInfoP_0
    procedure :: jm_nextRotation_0 => RotationAnimationInterface_jm_nextRotation_0
    procedure :: jm_previousRotation_0 => RotationAnimationInterface_jm_previousRotation_0
  end type


contains

  function RotationAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RotationAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RotationAnimationInterface)
      jresult => object
    end select
  end function

  function RotationAnimationInterface_jnew_0() result(this)
    class(RotationAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'RotationAnimationInterface'
  end function

  recursive function RotationAnimationInterface_jm_getAngleInfoP_0(this) result(jresult)
    class(RotationAnimationInterface), target :: this
    class(AngleInfo), pointer :: jresult
    error stop 'AbstractMethodError: RotationAnimationInterface.getAngleInfoP'
  end function

  recursive subroutine RotationAnimationInterface_jm_nextRotation_0(this)
    class(RotationAnimationInterface), target :: this
    error stop 'AbstractMethodError: RotationAnimationInterface.nextRotation'
  end subroutine

  recursive subroutine RotationAnimationInterface_jm_previousRotation_0(this)
    class(RotationAnimationInterface), target :: this
    error stop 'AbstractMethodError: RotationAnimationInterface.previousRotation'
  end subroutine
end module RotationAnimationInterface_m

