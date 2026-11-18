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
module NullSpecialAnimationFactory_m
  use JR_m
  use SpecialAnimation_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: NullSpecialAnimationFactory
  contains
    procedure :: jm_getInstance_1 => NullSpecialAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => NullSpecialAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => NullSpecialAnimationFactory_jm_setInitialScale_1
  end type

  ! NullSpecialAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(NullSpecialAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type

  class(NullSpecialAnimationFactory), pointer, save :: NullSpecialAnimationFactory_jcell_NULL_SPECIAL_ANIMATION_FACTORY => null()
  logical, save :: NullSpecialAnimationFactory_jset_NULL_SPECIAL_ANIMATION_FACTORY = .false.

contains

  function NullSpecialAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullSpecialAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullSpecialAnimationFactory)
      jresult => object
    end select
  end function

  function NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(NullSpecialAnimationFactory), target :: object
    class(NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NullSpecialAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullSpecialAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  function NullSpecialAnimationFactory_jstatic_NULL_SPECIAL_ANIMATION_FACTORY() result(jresult)
    class(NullSpecialAnimationFactory), pointer :: jresult
    if (.not. NullSpecialAnimationFactory_jset_NULL_SPECIAL_ANIMATION_FACTORY) then
      NullSpecialAnimationFactory_jset_NULL_SPECIAL_ANIMATION_FACTORY = .true.
      NullSpecialAnimationFactory_jcell_NULL_SPECIAL_ANIMATION_FACTORY => NullSpecialAnimationFactory_jnew_0()
    end if
    jresult => NullSpecialAnimationFactory_jcell_NULL_SPECIAL_ANIMATION_FACTORY
  end function

  subroutine NullSpecialAnimationFactory_jsetstatic_NULL_SPECIAL_ANIMATION_FACTORY(jvalue)
    class(NullSpecialAnimationFactory), target, optional :: jvalue
    NullSpecialAnimationFactory_jset_NULL_SPECIAL_ANIMATION_FACTORY = .true.
    if (present(jvalue)) then
      NullSpecialAnimationFactory_jcell_NULL_SPECIAL_ANIMATION_FACTORY => jvalue
    else
      NullSpecialAnimationFactory_jcell_NULL_SPECIAL_ANIMATION_FACTORY => null()
    end if
  end subroutine

  recursive function NullSpecialAnimationFactory_jnew_0() result(this)
    class(NullSpecialAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullSpecialAnimationFactory'
        continue
  end function

  recursive function NullSpecialAnimationFactory_jm_getFactoryInstance_0() result(jresult)
    class(NullSpecialAnimationFactory), pointer :: jresult
        jresult => NullSpecialAnimationFactory_jstatic_NULL_SPECIAL_ANIMATION_FACTORY()
        return
  end function

  recursive function NullSpecialAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(NullSpecialAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => SpecialAnimation_jm_getInstance_0()
        return
  end function

  recursive function NullSpecialAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullSpecialAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => SpecialAnimation_jm_getInstance_0()
        return
  end function

  recursive subroutine NullSpecialAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(NullSpecialAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module NullSpecialAnimationFactory_m

