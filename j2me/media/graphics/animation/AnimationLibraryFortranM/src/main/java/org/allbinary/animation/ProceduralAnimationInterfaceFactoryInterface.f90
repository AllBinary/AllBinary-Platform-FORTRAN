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
module ProceduralAnimationInterfaceFactoryInterface_m
  use JR_m
  use BasicAnimationInterfaceFactoryInterface_m
  use Animation_m
  implicit none

  type, extends(BasicAnimationInterfaceFactoryInterface) :: ProceduralAnimationInterfaceFactoryInterface
  contains
    procedure :: jm_getInstanceAnimation_1 => ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function ProceduralAnimationInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProceduralAnimationInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function ProceduralAnimationInterfaceFactoryInterface_jnew_0() result(this)
    class(ProceduralAnimationInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'ProceduralAnimationInterfaceFactoryInterface'
  end function

  recursive function ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    error stop 'AbstractMethodError: ProceduralAnimationInterfaceFactoryInterface.getInstanceAnimation'
  end function
end module ProceduralAnimationInterfaceFactoryInterface_m

