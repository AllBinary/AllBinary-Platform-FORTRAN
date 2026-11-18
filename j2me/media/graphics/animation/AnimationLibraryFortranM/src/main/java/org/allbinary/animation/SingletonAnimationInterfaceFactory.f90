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
module SingletonAnimationInterfaceFactory_m
  use JR_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: SingletonAnimationInterfaceFactory
    class(Animation), pointer :: f_animationInterface => null()
  contains
    procedure :: jm_getInstance_1 => SingletonAnimationInterfaceFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => SingletonAnimationInterfaceFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => SingletonAnimationInterfaceFactory_jm_setInitialScale_1
  end type

  ! SingletonAnimationInterfaceFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(SingletonAnimationInterfaceFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function SingletonAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SingletonAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SingletonAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  function SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(SingletonAnimationInterfaceFactory), target :: object
    class(SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'SingletonAnimationInterfaceFactory'
    jresult%jtarget => object
  end function

  recursive function SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(SingletonAnimationInterfaceFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  recursive function SingletonAnimationInterfaceFactory_jnew_1(j_animationInterface) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(SingletonAnimationInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'SingletonAnimationInterfaceFactory'
    
        this%f_animationInterface => j_animationInterface
  end function

  recursive function SingletonAnimationInterfaceFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(SingletonAnimationInterfaceFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive function SingletonAnimationInterfaceFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(SingletonAnimationInterfaceFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive subroutine SingletonAnimationInterfaceFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(SingletonAnimationInterfaceFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module SingletonAnimationInterfaceFactory_m

