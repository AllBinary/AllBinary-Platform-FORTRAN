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
module NullAnimationFactory_m
  use JR_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: NullAnimationFactory
    class(Animation), pointer :: f_NULL_ANIMATION => null()
    type(JRef), allocatable :: f_EMPTY_ARRAY(:)
  contains
    procedure :: jm_getInstance_1 => NullAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => NullAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => NullAnimationFactory_jm_setInitialScale_1
  end type

  ! NullAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(NullAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type

  class(NullAnimationFactory), pointer, save :: NullAnimationFactory_jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY => null()
  logical, save :: NullAnimationFactory_jset_NULL_NOT_FOR_USE_ANIMATION_FACTORY = .false.
  class(NullAnimationFactory), pointer, save :: NullAnimationFactory_jcell_NULL_ANIMATION_FACTORY => null()
  logical, save :: NullAnimationFactory_jset_NULL_ANIMATION_FACTORY = .false.

contains

  function NullAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullAnimationFactory)
      jresult => object
    end select
  end function

  function NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(NullAnimationFactory), target :: object
    class(NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NullAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  function NullAnimationFactory_jstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY() result(jresult)
    class(NullAnimationFactory), pointer :: jresult
    if (.not. NullAnimationFactory_jset_NULL_NOT_FOR_USE_ANIMATION_FACTORY) then
      NullAnimationFactory_jset_NULL_NOT_FOR_USE_ANIMATION_FACTORY = .true.
      NullAnimationFactory_jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY => NullAnimationFactory_jnew_0()
    end if
    jresult => NullAnimationFactory_jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY
  end function

  subroutine NullAnimationFactory_jsetstatic_NULL_NOT_FOR_USE_ANIMATION_FACTORY(jvalue)
    class(NullAnimationFactory), target, optional :: jvalue
    NullAnimationFactory_jset_NULL_NOT_FOR_USE_ANIMATION_FACTORY = .true.
    if (present(jvalue)) then
      NullAnimationFactory_jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY => jvalue
    else
      NullAnimationFactory_jcell_NULL_NOT_FOR_USE_ANIMATION_FACTORY => null()
    end if
  end subroutine

  function NullAnimationFactory_jstatic_NULL_ANIMATION_FACTORY() result(jresult)
    class(NullAnimationFactory), pointer :: jresult
    if (.not. NullAnimationFactory_jset_NULL_ANIMATION_FACTORY) then
      NullAnimationFactory_jset_NULL_ANIMATION_FACTORY = .true.
      NullAnimationFactory_jcell_NULL_ANIMATION_FACTORY => NullAnimationFactory_jnew_0()
    end if
    jresult => NullAnimationFactory_jcell_NULL_ANIMATION_FACTORY
  end function

  subroutine NullAnimationFactory_jsetstatic_NULL_ANIMATION_FACTORY(jvalue)
    class(NullAnimationFactory), target, optional :: jvalue
    NullAnimationFactory_jset_NULL_ANIMATION_FACTORY = .true.
    if (present(jvalue)) then
      NullAnimationFactory_jcell_NULL_ANIMATION_FACTORY => jvalue
    else
      NullAnimationFactory_jcell_NULL_ANIMATION_FACTORY => null()
    end if
  end subroutine

  recursive function NullAnimationFactory_jnew_0() result(this)
    class(NullAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullAnimationFactory'
    this%f_NULL_ANIMATION => Animation_jnew_0()
    this%f_EMPTY_ARRAY = JR_newRefArray(0)
        continue
  end function

  recursive function NullAnimationFactory_jm_getFactoryInstance_0() result(jresult)
    class(NullAnimationFactory), pointer :: jresult
        jresult => NullAnimationFactory_jstatic_NULL_ANIMATION_FACTORY()
        return
  end function

  recursive function NullAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(NullAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive function NullAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive subroutine NullAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(NullAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module NullAnimationFactory_m

