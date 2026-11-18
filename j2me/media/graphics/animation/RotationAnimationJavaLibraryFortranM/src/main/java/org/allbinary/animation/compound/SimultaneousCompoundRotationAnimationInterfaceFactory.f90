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
module SimultaneousCompoundRotationAnimationInterfaceFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use RotationAnimation_m
  use ForcedLogUtil_m
  use CompoundAnimationInterfaceFactory_m
  use SimultaneousCompoundRotationAnimation_m
  implicit none

  type, extends(CompoundAnimationInterfaceFactory) :: SimultaneousCompoundRotationAnimationInterfaceFactory
  contains
    procedure :: jm_createArray_1 => SimultaneousCompoundRotationAnimationInterfaceFactory_jm_createArray_1
    procedure :: jm_createAnimation_1 => SimultaneousCompoundRotationAnimationInterfaceFactory_jm_createAnimation_1
  end type


contains

  function SimultaneousCompoundRotationAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SimultaneousCompoundRotationAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SimultaneousCompoundRotationAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function SimultaneousCompoundRotationAnimationInterfaceFactory_jnew_2(j_basicAnimationInterfaceFactoryInterfaceArray, j_animationBehaviorFactory) result(this)
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(SimultaneousCompoundRotationAnimationInterfaceFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'SimultaneousCompoundRotationAnimationInterfaceFactory'
        continue ! super()
        if (JR_same(j_animationBehaviorFactory, AnimationBehaviorFactory_jm_getInstance_0())) then
            call ForcedLogUtil_jm_log_2('Using default AnimationBehaviorFactory with IndexedAnimationFactory', this)
        end if
  end function

  recursive function SimultaneousCompoundRotationAnimationInterfaceFactory_jm_createArray_1(this, j_size) result(jresult)
    class(SimultaneousCompoundRotationAnimationInterfaceFactory), target :: this
    integer(4), value :: j_size
    type(JRef), allocatable :: jresult(:)
        jresult = JR_newRefArray(j_size)
        return
  end function

  recursive function SimultaneousCompoundRotationAnimationInterfaceFactory_jm_createAnimation_1(this, j_animationInterfaceArray) result(jresult)
    class(SimultaneousCompoundRotationAnimationInterfaceFactory), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
    class(Animation), pointer :: jresult
        jresult => SimultaneousCompoundRotationAnimation_jnew_2(j_animationInterfaceArray, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function
end module SimultaneousCompoundRotationAnimationInterfaceFactory_m

