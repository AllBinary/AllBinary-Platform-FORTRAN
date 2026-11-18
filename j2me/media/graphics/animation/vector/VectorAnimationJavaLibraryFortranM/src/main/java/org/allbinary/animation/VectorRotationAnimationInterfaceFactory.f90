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
module VectorRotationAnimationInterfaceFactory_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use NullUtil_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use AnimationBehaviorFactory_m
  use VectorRotationAnimation_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: VectorRotationAnimationInterfaceFactory
    integer(4), allocatable :: f_currentPoints(:,:,:)
    class(BasicColor), pointer :: f_basicColor => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => VectorRotationAnimationInterfaceFactory_jm_getInstance_1
    procedure :: jm_setBasicColorP_1 => VectorRotationAnimationInterfaceFactory_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => VectorRotationAnimationInterfaceFactory_jm_getBasicColorP_0
    procedure :: jm_setInitialScale_1 => VectorRotationAnimationInterfaceFactory_jm_setInitialScale_1
  end type


contains

  function VectorRotationAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorRotationAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorRotationAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function VectorRotationAnimationInterfaceFactory_jnew_3(j_currentPoints, j_basicColor, j_animationBehaviorFactory) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(VectorRotationAnimationInterfaceFactory), pointer :: this
    class(NullUtil), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorRotationAnimationInterfaceFactory'
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_currentPoints = jtemp1%f_NULL_INT_ARRAY_ARRAY_ARRAY
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp2%f_WHITE
    
        this%f_currentPoints = j_currentPoints
        call this%jm_setBasicColorP_1(j_basicColor)
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
  end function

  recursive function VectorRotationAnimationInterfaceFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(VectorRotationAnimationInterfaceFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => VectorRotationAnimation_jnew_3(this%f_currentPoints, this%jm_getBasicColorP_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive subroutine VectorRotationAnimationInterfaceFactory_jm_setBasicColorP_1(this, j_basicColor)
    class(VectorRotationAnimationInterfaceFactory), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function VectorRotationAnimationInterfaceFactory_jm_getBasicColorP_0(this) result(jresult)
    class(VectorRotationAnimationInterfaceFactory), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine VectorRotationAnimationInterfaceFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(VectorRotationAnimationInterfaceFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module VectorRotationAnimationInterfaceFactory_m

