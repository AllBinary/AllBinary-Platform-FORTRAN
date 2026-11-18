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
! package org.allbinary.animation.compound
module SimultaneousCompoundIndexAnimationInterfaceFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use IndexedAnimation_m
  use ScaleProperties_m
  use SimultaneousCompoundIndexAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: SimultaneousCompoundIndexAnimationInterfaceFactory
    type(JRef), allocatable :: f_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getInstance_1
    procedure :: jm_getOrCreate_1 => SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getOrCreate_1
    procedure :: jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 => SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0
    procedure :: jm_setInitialScale_1 => SimultaneousCompoundIndexAnimationInterfaceFactory_jm_setInitialScale_1
  end type


contains

  function SimultaneousCompoundIndexAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimultaneousCompoundIndexAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function SimultaneousCompoundIndexAnimationInterfaceFactory_jnew_2(j_basicAnimationInterfaceFactoryInterfaceArray, j_animationBehaviorFactory) result(this)
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'SimultaneousCompoundIndexAnimationInterfaceFactory'
    
    
        this%f_basicAnimationInterfaceFactoryInterfaceArray = j_basicAnimationInterfaceFactoryInterfaceArray
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
  end function

  recursive function SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    integer(4) :: j_size
    type(JRef), allocatable :: j_animationInterfaceArray(:)
    integer(4) :: j_index
        j_size = size(this%f_basicAnimationInterfaceFactoryInterfaceArray, 1)
        j_animationInterfaceArray = JR_newRefArray(j_size)
        j_index = 0
        do while ((j_index < j_size))
            j_animationInterfaceArray((j_index) + 1)%v => IndexedAnimation_jcast(AnimationInterfaceFactoryInterface_jcast(this%f_basicAnimationInterfaceFactoryInterfaceArray((j_index) + 1)%v)%jm_getInstance_1(j_instanceId))
            j_index = j_index + 1
        end do
        jresult => this%jm_getOrCreate_1(j_animationInterfaceArray)
        return
  end function

  recursive function SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getOrCreate_1(this, j_animationInterfaceArray) result(jresult)
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
    class(Animation), pointer :: jresult
        jresult => SimultaneousCompoundIndexAnimation_jnew_2(j_animationInterfaceArray, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive function SimultaneousCompoundIndexAnimationInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0(this) result(jresult)
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_basicAnimationInterfaceFactoryInterfaceArray
        return
  end function

  recursive subroutine SimultaneousCompoundIndexAnimationInterfaceFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(SimultaneousCompoundIndexAnimationInterfaceFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module SimultaneousCompoundIndexAnimationInterfaceFactory_m

