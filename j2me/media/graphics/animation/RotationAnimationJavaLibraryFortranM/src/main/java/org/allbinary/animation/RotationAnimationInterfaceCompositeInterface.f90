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
module RotationAnimationInterfaceCompositeInterface_m
  use JR_m
  use IndexedAnimationInterfaceCompositeInterface_m
  use RotationAnimation_m
  implicit none

  type, extends(IndexedAnimationInterfaceCompositeInterface) :: RotationAnimationInterfaceCompositeInterface
  contains
    procedure :: jm_getRotationAnimationInterface_0 => RotationAnimationInterfaceCompositeInterface_jm_getRotationAnimationInterface_0
    procedure :: jm_setFrame_1 => RotationAnimationInterfaceCompositeInterface_jm_setFrame_1
  end type


contains

  function RotationAnimationInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RotationAnimationInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RotationAnimationInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function RotationAnimationInterfaceCompositeInterface_jnew_0() result(this)
    class(RotationAnimationInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'RotationAnimationInterfaceCompositeInterface'
  end function

  recursive function RotationAnimationInterfaceCompositeInterface_jm_getRotationAnimationInterface_0(this) result(jresult)
    class(RotationAnimationInterfaceCompositeInterface), target :: this
    class(RotationAnimation), pointer :: jresult
    error stop 'AbstractMethodError: RotationAnimationInterfaceCompositeInterface.getRotationAnimationInterface'
  end function

  recursive subroutine RotationAnimationInterfaceCompositeInterface_jm_setFrame_1(this, j_index)
    class(RotationAnimationInterfaceCompositeInterface), target :: this
    integer(4), value :: j_index
    error stop 'AbstractMethodError: RotationAnimationInterfaceCompositeInterface.setFrame'
  end subroutine
end module RotationAnimationInterfaceCompositeInterface_m

