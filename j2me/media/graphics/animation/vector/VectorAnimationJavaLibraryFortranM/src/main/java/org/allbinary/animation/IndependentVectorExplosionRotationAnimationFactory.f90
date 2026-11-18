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
module IndependentVectorExplosionRotationAnimationFactory_m
  use JR_m
  use BasicColor_m
  use NullUtil_m
  use VectorInfo_m
  use ProceduralAnimationInterfaceFactoryInterface_m
  use VectorAnimationFactoryInterface_m
  use VectorRotationGenerator_m
  use VectorExplosionGenerator_m
  use IndexedAnimation_m
  use Animation_m
  implicit none

  type, extends(ProceduralAnimationInterfaceFactoryInterface) :: IndependentVectorExplosionRotationAnimationFactory
    integer(4), allocatable :: f_framePoints(:,:,:)
    class(VectorInfo), pointer :: f_vectorInfo => null()
    class(BasicColor), pointer :: f_basicColor => null()
    class(VectorAnimationFactoryInterface), pointer :: f_vectorAnimationFactoryInterface => null()
    class(VectorExplosionGenerator), pointer :: f_vectorExplosionGenerator => null()
  contains
    procedure :: jm_init_0 => IndependentVectorExplosionRotationAnimationFactory_jm_init_0
    procedure :: jm_getInstanceAnimation_1 => IndependentVectorExplosionRotationAnimationFactory_jm_getInstanceAnimation_1
  end type


contains

  function IndependentVectorExplosionRotationAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndependentVectorExplosionRotationAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndependentVectorExplosionRotationAnimationFactory)
      jresult => object
    end select
  end function

  recursive function IndependentVectorExplosionRotationAnimationFactory_jnew_3(j_vectorInfo, j_basicColor, j_vectorAnimationFactoryInterface) result(this)
    class(VectorInfo), target, optional :: j_vectorInfo
    class(BasicColor), target, optional :: j_basicColor
    class(VectorAnimationFactoryInterface), target, optional :: j_vectorAnimationFactoryInterface
    class(IndependentVectorExplosionRotationAnimationFactory), pointer :: this
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'IndependentVectorExplosionRotationAnimationFactory'
    jtemp1 => NullUtil_jm_getInstance_0()
    this%f_framePoints = jtemp1%f_NULL_INT_ARRAY_ARRAY_ARRAY
    
    
    
    this%f_vectorExplosionGenerator => VectorExplosionGenerator_jm_getInstance_0()
        this%f_vectorInfo => j_vectorInfo
        this%f_basicColor => j_basicColor
        this%f_vectorAnimationFactoryInterface => j_vectorAnimationFactoryInterface
        call this%jm_init_0()
  end function

  recursive subroutine IndependentVectorExplosionRotationAnimationFactory_jm_init_0(this)
    class(IndependentVectorExplosionRotationAnimationFactory), target :: this
    class(VectorRotationGenerator), pointer :: jtemp2
        jtemp2 => VectorRotationGenerator_jm_getInstance_0()
        this%f_framePoints = jtemp2%jm_getInstance_1(this%f_vectorInfo)
  end subroutine

  recursive function IndependentVectorExplosionRotationAnimationFactory_jm_getInstanceAnimation_1(this, j_animationInterface) result(jresult)
    class(IndependentVectorExplosionRotationAnimationFactory), target :: this
    class(Animation), target, optional :: j_animationInterface
    class(Animation), pointer :: jresult
    integer(4) :: j_frame
    class(IndexedAnimation), pointer :: j_rotationAnimationInterface
    integer(4), allocatable :: j_points(:,:,:)
        j_frame = 0
        if (present(j_animationInterface)) then
            j_rotationAnimationInterface => IndexedAnimation_jcast(j_animationInterface)
            j_frame = j_rotationAnimationInterface%jm_getFrame_0()
        end if
        j_points = this%f_vectorExplosionGenerator%jm_getInstance_3(this%f_framePoints((j_frame) + 1, :), 6, this%f_vectorExplosionGenerator%f_ROTATION)
        jresult => this%f_vectorAnimationFactoryInterface%jm_getInstance_2(j_points, this%f_basicColor)
        return
  end function
end module IndependentVectorExplosionRotationAnimationFactory_m

