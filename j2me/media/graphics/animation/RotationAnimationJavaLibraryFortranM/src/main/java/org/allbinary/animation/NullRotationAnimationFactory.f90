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
module NullRotationAnimationFactory_m
  use JR_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use RotationAnimation_m
  use NullRotationAnimation2_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: NullRotationAnimationFactory
    type(JRef), allocatable :: f_NULL_ROTATION_ANIMATION_ARRAY(:)
    class(Animation), pointer :: f_NULL_ANIMATION => null()
  contains
    procedure :: jm_getInstance_1 => NullRotationAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => NullRotationAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => NullRotationAnimationFactory_jm_setInitialScale_1
  end type

  ! NullRotationAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(NullRotationAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type

  class(NullRotationAnimationFactory), pointer, save :: NullRotationAnimationFactory_jcell_NULL_ROTATION_ANIMATION_FACTORY => null()
  logical, save :: NullRotationAnimationFactory_jset_NULL_ROTATION_ANIMATION_FACTORY = .false.

contains

  function NullRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRotationAnimationFactory)
      jresult => object
    end select
  end function

  function NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(NullRotationAnimationFactory), target :: object
    class(NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NullRotationAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullRotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  function NullRotationAnimationFactory_jstatic_NULL_ROTATION_ANIMATION_FACTORY() result(jresult)
    class(NullRotationAnimationFactory), pointer :: jresult
    if (.not. NullRotationAnimationFactory_jset_NULL_ROTATION_ANIMATION_FACTORY) then
      NullRotationAnimationFactory_jset_NULL_ROTATION_ANIMATION_FACTORY = .true.
      NullRotationAnimationFactory_jcell_NULL_ROTATION_ANIMATION_FACTORY => NullRotationAnimationFactory_jnew_0()
    end if
    jresult => NullRotationAnimationFactory_jcell_NULL_ROTATION_ANIMATION_FACTORY
  end function

  subroutine NullRotationAnimationFactory_jsetstatic_NULL_ROTATION_ANIMATION_FACTORY(jvalue)
    class(NullRotationAnimationFactory), target, optional :: jvalue
    NullRotationAnimationFactory_jset_NULL_ROTATION_ANIMATION_FACTORY = .true.
    if (present(jvalue)) then
      NullRotationAnimationFactory_jcell_NULL_ROTATION_ANIMATION_FACTORY => jvalue
    else
      NullRotationAnimationFactory_jcell_NULL_ROTATION_ANIMATION_FACTORY => null()
    end if
  end subroutine

  recursive function NullRotationAnimationFactory_jnew_0() result(this)
    class(NullRotationAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullRotationAnimationFactory'
    this%f_NULL_ROTATION_ANIMATION_ARRAY = JR_newRefArray(0)
    this%f_NULL_ANIMATION => NullRotationAnimation2_jnew_0()
        continue
  end function

  recursive function NullRotationAnimationFactory_jm_getFactoryInstance_0() result(jresult)
    class(NullRotationAnimationFactory), pointer :: jresult
        jresult => NullRotationAnimationFactory_jstatic_NULL_ROTATION_ANIMATION_FACTORY()
        return
  end function

  recursive function NullRotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(NullRotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive function NullRotationAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullRotationAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive subroutine NullRotationAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(NullRotationAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module NullRotationAnimationFactory_m

