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
module AnimationInterfaceFactoryInterface_m
  use JR_m
  use ScaleProperties_m
  use BasicAnimationInterfaceFactoryInterface_m
  use Animation_m
  implicit none

  type, extends(BasicAnimationInterfaceFactoryInterface) :: AnimationInterfaceFactoryInterface
  contains
    procedure :: jm_getInstance_1 => AnimationInterfaceFactoryInterface_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => AnimationInterfaceFactoryInterface_jm_setInitialScale_1
  end type


contains

  function AnimationInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function AnimationInterfaceFactoryInterface_jnew_0() result(this)
    class(AnimationInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'AnimationInterfaceFactoryInterface'
  end function

  recursive function AnimationInterfaceFactoryInterface_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(AnimationInterfaceFactoryInterface), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    error stop 'AbstractMethodError: AnimationInterfaceFactoryInterface.getInstance'
  end function

  recursive subroutine AnimationInterfaceFactoryInterface_jm_setInitialScale_1(this, j_scaleProperties)
    class(AnimationInterfaceFactoryInterface), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    error stop 'AbstractMethodError: AnimationInterfaceFactoryInterface.setInitialScale'
  end subroutine
end module AnimationInterfaceFactoryInterface_m

