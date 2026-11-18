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
! package org.allbinary.game.physics.velocity
module VelocityInterface_m
  use JR_m
  use BasicVelocityInterface_m
  implicit none

  type, extends(BasicVelocityInterface) :: VelocityInterface
  contains
    procedure :: jm_getMaxForwardVelocity_0 => VelocityInterface_jm_getMaxForwardVelocity_0
    procedure :: jm_getMaxReverseVelocity_0 => VelocityInterface_jm_getMaxReverseVelocity_0
    procedure :: jm_limitMaxXYForwardVelocity_0 => VelocityInterface_jm_limitMaxXYForwardVelocity_0
    procedure :: jm_limitMaxXYReverseVelocity_0 => VelocityInterface_jm_limitMaxXYReverseVelocity_0
    procedure :: jm_limitXYToForwardAndReverseMaxVelocity_0 => VelocityInterface_jm_limitXYToForwardAndReverseMaxVelocity_0
    procedure :: jm_limitMaxXYVelocity_1 => VelocityInterface_jm_limitMaxXYVelocity_1
    procedure :: jm_setMaxForwardVelocity_1 => VelocityInterface_jm_setMaxForwardVelocity_1
    procedure :: jm_setMaxReverseVelocity_1 => VelocityInterface_jm_setMaxReverseVelocity_1
  end type


contains

  function VelocityInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VelocityInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VelocityInterface)
      jresult => object
    end select
  end function

  function VelocityInterface_jnew_0() result(this)
    class(VelocityInterface), pointer :: this
    allocate(this)
    this%jclass = 'VelocityInterface'
  end function

  recursive function VelocityInterface_jm_getMaxForwardVelocity_0(this) result(jresult)
    class(VelocityInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: VelocityInterface.getMaxForwardVelocity'
  end function

  recursive function VelocityInterface_jm_getMaxReverseVelocity_0(this) result(jresult)
    class(VelocityInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: VelocityInterface.getMaxReverseVelocity'
  end function

  recursive subroutine VelocityInterface_jm_limitMaxXYForwardVelocity_0(this)
    class(VelocityInterface), target :: this
    error stop 'AbstractMethodError: VelocityInterface.limitMaxXYForwardVelocity'
  end subroutine

  recursive subroutine VelocityInterface_jm_limitMaxXYReverseVelocity_0(this)
    class(VelocityInterface), target :: this
    error stop 'AbstractMethodError: VelocityInterface.limitMaxXYReverseVelocity'
  end subroutine

  recursive subroutine VelocityInterface_jm_limitXYToForwardAndReverseMaxVelocity_0(this)
    class(VelocityInterface), target :: this
    error stop 'AbstractMethodError: VelocityInterface.limitXYToForwardAndReverseMaxVelocity'
  end subroutine

  recursive subroutine VelocityInterface_jm_limitMaxXYVelocity_1(this, j_maxVelocity)
    class(VelocityInterface), target :: this
    integer(4), value :: j_maxVelocity
    error stop 'AbstractMethodError: VelocityInterface.limitMaxXYVelocity'
  end subroutine

  recursive subroutine VelocityInterface_jm_setMaxForwardVelocity_1(this, j_maxForwardVelocity)
    class(VelocityInterface), target :: this
    integer(4), value :: j_maxForwardVelocity
    error stop 'AbstractMethodError: VelocityInterface.setMaxForwardVelocity'
  end subroutine

  recursive subroutine VelocityInterface_jm_setMaxReverseVelocity_1(this, j_maxReverseVelocity)
    class(VelocityInterface), target :: this
    integer(4), value :: j_maxReverseVelocity
    error stop 'AbstractMethodError: VelocityInterface.setMaxReverseVelocity'
  end subroutine
end module VelocityInterface_m

