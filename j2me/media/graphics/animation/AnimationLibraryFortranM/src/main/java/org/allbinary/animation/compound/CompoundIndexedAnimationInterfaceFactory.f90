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
module CompoundIndexedAnimationInterfaceFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use CompoundAnimationInterfaceFactory_m
  use CompoundIndexedAnimation_m
  implicit none

  type, extends(CompoundAnimationInterfaceFactory) :: CompoundIndexedAnimationInterfaceFactory
  contains
    procedure :: jm_createArray_1 => CompoundIndexedAnimationInterfaceFactory_jm_createArray_1
    procedure :: jm_createAnimation_1 => CompoundIndexedAnimationInterfaceFactory_jm_createAnimation_1
  end type


contains

  function CompoundIndexedAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompoundIndexedAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompoundIndexedAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function CompoundIndexedAnimationInterfaceFactory_jnew_2(j_basicAnimationInterfaceFactoryInterfaceArray, j_animationBehaviorFactory) result(this)
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(CompoundIndexedAnimationInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'CompoundIndexedAnimationInterfaceFactory'
        continue ! super()
  end function

  recursive function CompoundIndexedAnimationInterfaceFactory_jm_createArray_1(this, j_size) result(jresult)
    class(CompoundIndexedAnimationInterfaceFactory), target :: this
    integer(4), value :: j_size
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(j_size)
        return
  end function

  recursive function CompoundIndexedAnimationInterfaceFactory_jm_createAnimation_1(this, j_animationInterfaceArray) result(jresult)
    class(CompoundIndexedAnimationInterfaceFactory), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
    class(Animation), pointer :: jresult
        jresult => CompoundIndexedAnimation_jnew_2(j_animationInterfaceArray, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function
end module CompoundIndexedAnimationInterfaceFactory_m

