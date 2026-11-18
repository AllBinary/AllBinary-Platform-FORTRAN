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
module RotationAnimationFactory_m
  use JR_m
  use GameConfigurationCentral_m
  use AngleFactory_m
  use AngleInfo_m
  use ScaleProperties_m
  use AnimationInterfaceFactoryInterface_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use NullRotationAnimation_m
  use AnimationBehavior_m
  use Animation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: RotationAnimationFactory
    integer(4) :: f_totalAngle = 0
    integer(4) :: f_angleIncrement = 0
  contains
    procedure :: jm_getInstance_1 => RotationAnimationFactory_jm_getInstance_1
    procedure :: jm_getInstanceAnimation_1 => RotationAnimationFactory_jm_getInstanceAnimation_1
    procedure :: jm_setInitialScale_1 => RotationAnimationFactory_jm_setInitialScale_1
  end type

  ! RotationAnimationFactory used as a ProceduralAnimationInterfaceFactoryInterface
  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface
    class(RotationAnimationFactory), pointer :: jtarget => null()
  contains
    procedure :: jm_getInstanceAnimation_1 => RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1
  end type


contains

  function RotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RotationAnimationFactory)
      jresult => object
    end select
  end function

  function RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jnew(object) result(jresult)
    class(RotationAnimationFactory), target :: object
    class(RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'RotationAnimationFactory'
    jresult%jtarget => object
  end function

  recursive function RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(RotationAnimationFactory_jas_ProceduralAnimationInterfaceFactoryInterface), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    jresult => this%jtarget%jm_getInstanceAnimation_1(j_animationInterface)
  end function

  recursive function RotationAnimationFactory_jnew_2(j_totalAngle, j_angleIncrement) result(this)
    integer(4), value :: j_totalAngle
    integer(4), value :: j_angleIncrement
    class(RotationAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'RotationAnimationFactory'
    
    
        this%f_totalAngle = j_totalAngle
        this%f_angleIncrement = j_angleIncrement
  end function

  recursive function RotationAnimationFactory_jm_createFactory_0() result(jresult)
    class(RotationAnimationFactory), pointer :: jresult
    integer(4) :: j_totalAngle
    class(AngleFactory), pointer :: jtemp1
    class(GameConfigurationCentral), pointer :: jtemp2
        jtemp1 => AngleFactory_jm_getInstance_0()
        j_totalAngle = jtemp1%f_TOTAL_ANGLE
        jtemp2 => GameConfigurationCentral_jm_getInstance_0()
        jresult => RotationAnimationFactory_jnew_2(j_totalAngle, JR_i16(((j_totalAngle / jtemp2%jm_getGameControlFidelity_0()))))
        return
  end function

  recursive function RotationAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(RotationAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
        jresult => NullRotationAnimation_jm_createTotalAngle_3(AngleInfo_jm_getInstance_1(this%f_angleIncrement), this%f_totalAngle, AnimationBehavior_jm_getInstance_0())
        return
  end function

  recursive function RotationAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(RotationAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
        jresult => NullRotationAnimation_jm_createTotalAngle_3(AngleInfo_jm_getInstance_1(this%f_angleIncrement), this%f_totalAngle, AnimationBehavior_jm_getInstance_0())
        return
  end function

  recursive subroutine RotationAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(RotationAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine
end module RotationAnimationFactory_m

