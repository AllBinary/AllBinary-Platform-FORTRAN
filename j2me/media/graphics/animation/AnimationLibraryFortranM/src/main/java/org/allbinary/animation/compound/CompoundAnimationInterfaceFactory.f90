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
module CompoundAnimationInterfaceFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use NullAnimationFactory_m
  use ScaleProperties_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: CompoundAnimationInterfaceFactory
    type(JRef), allocatable :: f_basicAnimationInterfaceFactoryInterfaceArrayP(:)
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => CompoundAnimationInterfaceFactory_jm_getInstance_1
    procedure :: jm_createArray_1 => CompoundAnimationInterfaceFactory_jm_createArray_1
    procedure :: jm_createAnimation_1 => CompoundAnimationInterfaceFactory_jm_createAnimation_1
    procedure :: jm_getBasicAnimationInterfaceFactoryInterfaceArray_0 => CompoundAnimationInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0
    procedure :: jm_setInitialScale_1 => CompoundAnimationInterfaceFactory_jm_setInitialScale_1
  end type


contains

  function CompoundAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompoundAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompoundAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function CompoundAnimationInterfaceFactory_jnew_2(j_basicAnimationInterfaceFactoryInterfaceArray, j_animationBehaviorFactory) result(this)
    type(JRef) :: j_basicAnimationInterfaceFactoryInterfaceArray(:)
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(CompoundAnimationInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'CompoundAnimationInterfaceFactory'
    
    
        this%f_basicAnimationInterfaceFactoryInterfaceArrayP = j_basicAnimationInterfaceFactoryInterfaceArray
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
  end function

  recursive function CompoundAnimationInterfaceFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(CompoundAnimationInterfaceFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    integer(4) :: j_size
    type(JRef), allocatable :: j_animationInterfaceArray(:)
    integer(4) :: j_index
        j_size = size(this%f_basicAnimationInterfaceFactoryInterfaceArrayP, 1)
        j_animationInterfaceArray = this%jm_createArray_1(j_size)
        j_index = 0
        do while ((j_index < j_size))
            j_animationInterfaceArray((j_index) + 1)%v => AnimationInterfaceFactoryInterface_jcast(this%f_basicAnimationInterfaceFactoryInterfaceArrayP((j_index) + 1)%v)%jm_getInstance_1(j_instanceId)
            j_index = j_index + 1
        end do
        jresult => this%jm_createAnimation_1(j_animationInterfaceArray)
        return
  end function

  recursive function CompoundAnimationInterfaceFactory_jm_createArray_1(this, j_size) result(jresult)
    class(CompoundAnimationInterfaceFactory), target :: this
    integer(4), value :: j_size
    type(JRef), allocatable :: jresult(:)
    class(NullAnimationFactory), pointer :: jtemp1
        jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
        jresult = jtemp1%f_EMPTY_ARRAY
        return
  end function

  recursive function CompoundAnimationInterfaceFactory_jm_createAnimation_1(this, j_animationInterfaceArray) result(jresult)
    class(CompoundAnimationInterfaceFactory), target :: this
    type(JRef) :: j_animationInterfaceArray(:)
    class(Animation), pointer :: jresult
    class(NullAnimationFactory), pointer :: jtemp2
        jtemp2 => NullAnimationFactory_jm_getFactoryInstance_0()
        jresult => jtemp2%jm_getInstance_1(0)
        return
  end function

  recursive function CompoundAnimationInterfaceFactory_jm_getBasicAnimationInterfaceFactoryInterfaceArray_0(this) result(jresult)
    class(CompoundAnimationInterfaceFactory), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_basicAnimationInterfaceFactoryInterfaceArrayP
        return
  end function

  recursive subroutine CompoundAnimationInterfaceFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(CompoundAnimationInterfaceFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = size(this%f_basicAnimationInterfaceFactoryInterfaceArrayP, 1)
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref1 => AnimationInterfaceFactoryInterface_jcast(this%f_basicAnimationInterfaceFactoryInterfaceArrayP((j_index) + 1)%v))
            call jstaticref1%jm_setInitialScale_1(j_scaleProperties)
            end associate
            j_index = j_index + 1
        end do
  end subroutine
end module CompoundAnimationInterfaceFactory_m

