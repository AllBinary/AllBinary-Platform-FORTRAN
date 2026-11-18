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
module VectorAnimationInterfaceFactory_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use AnimationBehaviorFactory_m
  use VectorAnimation_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: VectorAnimationInterfaceFactory
    integer(4), allocatable :: f_currentPoints(:,:,:)
    class(BasicColor), pointer :: f_basicColor => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstance_1 => VectorAnimationInterfaceFactory_jm_getInstance_1
    procedure :: jm_setBasicColorP_1 => VectorAnimationInterfaceFactory_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => VectorAnimationInterfaceFactory_jm_getBasicColorP_0
    procedure :: jm_setInitialScale_1 => VectorAnimationInterfaceFactory_jm_setInitialScale_1
  end type


contains

  function VectorAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function VectorAnimationInterfaceFactory_jnew_3(j_currentPoints, j_basicColor, j_animationBehaviorFactory) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(VectorAnimationInterfaceFactory), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorAnimationInterfaceFactory'
    
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    
        this%f_currentPoints = j_currentPoints
        call this%jm_setBasicColorP_1(j_basicColor)
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
  end function

  recursive function VectorAnimationInterfaceFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(VectorAnimationInterfaceFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => VectorAnimation_jnew_3(this%f_currentPoints, this%jm_getBasicColorP_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive subroutine VectorAnimationInterfaceFactory_jm_setBasicColorP_1(this, j_basicColor)
    class(VectorAnimationInterfaceFactory), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function VectorAnimationInterfaceFactory_jm_getBasicColorP_0(this) result(jresult)
    class(VectorAnimationInterfaceFactory), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function

  recursive subroutine VectorAnimationInterfaceFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(VectorAnimationInterfaceFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module VectorAnimationInterfaceFactory_m

