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
module VectorExplosionAnimationFactory_m
  use JR_m
  use BasicColor_m
  use BasicColorFactory_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use VectorExplosionGenerator_m
  use AnimationBehaviorFactory_m
  use VectorAnimationInterface_m
  use VectorRotationAnimation_m
  use Animation_m
  implicit none

  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: VectorExplosionAnimationFactory
    class(VectorExplosionGenerator), pointer :: f_vectorExplosionGenerator => null()
    class(BasicColor), pointer :: f_basicColor => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => VectorExplosionAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setBasicColorP_1 => VectorExplosionAnimationFactory_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => VectorExplosionAnimationFactory_jm_getBasicColorP_0
  end type


contains

  function VectorExplosionAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorExplosionAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorExplosionAnimationFactory)
      jresult => object
    end select
  end function

  recursive function VectorExplosionAnimationFactory_jnew_2(j_basicColor, j_animationBehaviorFactory) result(this)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(VectorExplosionAnimationFactory), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'VectorExplosionAnimationFactory'
    this%f_vectorExplosionGenerator => VectorExplosionGenerator_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
    
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
        call this%jm_setBasicColorP_1(j_basicColor)
  end function

  recursive function VectorExplosionAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(VectorExplosionAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    class(VectorAnimationInterface), pointer :: j_vectorRotationAnimationInterface
    integer(4) :: j_frame
    integer(4), allocatable :: j_framePoints(:,:)
    integer(4), allocatable :: j_points(:,:,:)
        j_vectorRotationAnimationInterface => VectorAnimationInterface_jcast(j_animationInterface)
        j_frame = j_vectorRotationAnimationInterface%jm_getFrame_0()
        j_framePoints = j_vectorRotationAnimationInterface%jm_getPoints_1(j_frame)
        j_points = this%f_vectorExplosionGenerator%jm_getInstance_3(j_framePoints, 6, this%f_vectorExplosionGenerator%f_ROTATION)
        jresult => VectorRotationAnimation_jnew_3(j_points, this%jm_getBasicColorP_0(), this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        return
  end function

  recursive subroutine VectorExplosionAnimationFactory_jm_setBasicColorP_1(this, j_basicColor)
    class(VectorExplosionAnimationFactory), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function VectorExplosionAnimationFactory_jm_getBasicColorP_0(this) result(jresult)
    class(VectorExplosionAnimationFactory), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function
end module VectorExplosionAnimationFactory_m

