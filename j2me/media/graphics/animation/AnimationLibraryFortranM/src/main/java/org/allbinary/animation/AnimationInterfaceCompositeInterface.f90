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
module AnimationInterfaceCompositeInterface_m
  use JR_m
  use Animation_m
  implicit none

  type, extends(JObject) :: AnimationInterfaceCompositeInterface
  contains
    procedure :: jm_getAnimationInterface_0 => AnimationInterfaceCompositeInterface_jm_getAnimationInterface_0
  end type


contains

  function AnimationInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function AnimationInterfaceCompositeInterface_jnew_0() result(this)
    class(AnimationInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'AnimationInterfaceCompositeInterface'
  end function

  recursive function AnimationInterfaceCompositeInterface_jm_getAnimationInterface_0(this) result(jresult)
    class(AnimationInterfaceCompositeInterface), target :: this
    class(Animation), pointer :: jresult
    error stop 'AbstractMethodError: AnimationInterfaceCompositeInterface.getAnimationInterface'
  end function
end module AnimationInterfaceCompositeInterface_m

