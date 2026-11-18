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
! package org.allbinary.game.physics.acceleration
module AccelerateableInterface_m
  use JR_m
  use BasicDecimal_m
  implicit none

  type, extends(JObject) :: AccelerateableInterface
  contains
    procedure :: jm_accelerate_1 => AccelerateableInterface_jm_accelerate_1
  end type


contains

  function AccelerateableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AccelerateableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AccelerateableInterface)
      jresult => object
    end select
  end function

  function AccelerateableInterface_jnew_0() result(this)
    class(AccelerateableInterface), pointer :: this
    allocate(this)
    this%jclass = 'AccelerateableInterface'
  end function

  recursive subroutine AccelerateableInterface_jm_accelerate_1(this, j_accelerate)
    class(AccelerateableInterface), target :: this
    class(BasicDecimal), target, optional :: j_accelerate
    error stop 'AbstractMethodError: AccelerateableInterface.accelerate'
  end subroutine
end module AccelerateableInterface_m

