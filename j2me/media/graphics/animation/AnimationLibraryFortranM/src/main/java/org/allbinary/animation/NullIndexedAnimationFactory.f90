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
module NullIndexedAnimationFactory_m
  use JR_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use IndexedAnimation_m
  use NullIndexedAnimationInner_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: NullIndexedAnimationFactory
    class(Animation), pointer :: f_NULL_ANIMATION => null()
  contains
    procedure :: jm_getInstance_1 => NullIndexedAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => NullIndexedAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => NullIndexedAnimationFactory_jm_setInitialScale_1
  end type

  ! NullIndexedAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(NullIndexedAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type

  type(JRef), allocatable, save :: NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_ARRAY(:)
  logical, save :: NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_ARRAY = .false.
  class(NullIndexedAnimationFactory), pointer, save :: NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_FACTORY => null()
  logical, save :: NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_FACTORY = .false.

contains

  function NullIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullIndexedAnimationFactory)
      jresult => object
    end select
  end function

  function NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(NullIndexedAnimationFactory), target :: object
    class(NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'NullIndexedAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullIndexedAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  function NullIndexedAnimationFactory_jstatic_NULL_INDEXED_ANIMATION_ARRAY() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_ARRAY) then
      NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_ARRAY = .true.
      NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_ARRAY = JR_newRefArray(0)
    end if
    jresult = NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_ARRAY
  end function

  subroutine NullIndexedAnimationFactory_jsetstatic_NULL_INDEXED_ANIMATION_ARRAY(jvalue)
    type(JRef) :: jvalue(:)
    NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_ARRAY = .true.
    NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_ARRAY = jvalue
  end subroutine

  function NullIndexedAnimationFactory_jstatic_NULL_INDEXED_ANIMATION_FACTORY() result(jresult)
    class(NullIndexedAnimationFactory), pointer :: jresult
    if (.not. NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_FACTORY) then
      NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_FACTORY = .true.
      NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_FACTORY => NullIndexedAnimationFactory_jnew_0()
    end if
    jresult => NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_FACTORY
  end function

  subroutine NullIndexedAnimationFactory_jsetstatic_NULL_INDEXED_ANIMATION_FACTORY(jvalue)
    class(NullIndexedAnimationFactory), target, optional :: jvalue
    NullIndexedAnimationFactory_jset_NULL_INDEXED_ANIMATION_FACTORY = .true.
    if (present(jvalue)) then
      NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_FACTORY => jvalue
    else
      NullIndexedAnimationFactory_jcell_NULL_INDEXED_ANIMATION_FACTORY => null()
    end if
  end subroutine

  recursive function NullIndexedAnimationFactory_jnew_0() result(this)
    class(NullIndexedAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'NullIndexedAnimationFactory'
    this%f_NULL_ANIMATION => NullIndexedAnimationInner_jnew_0()
        continue
  end function

  recursive function NullIndexedAnimationFactory_jm_getFactoryInstance_0() result(jresult)
    class(NullIndexedAnimationFactory), pointer :: jresult
        jresult => NullIndexedAnimationFactory_jstatic_NULL_INDEXED_ANIMATION_FACTORY()
        return
  end function

  recursive function NullIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(NullIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive function NullIndexedAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(NullIndexedAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => this%f_NULL_ANIMATION
        return
  end function

  recursive subroutine NullIndexedAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(NullIndexedAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module NullIndexedAnimationFactory_m

