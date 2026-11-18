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
module VectorAnimationFactory_m
  use JR_m
  use BasicColor_m
  use VectorAnimationFactoryInterface_m
  use VectorAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(VectorAnimationFactoryInterface) :: VectorAnimationFactory
  contains
    procedure :: jm_getInstance_2 => VectorAnimationFactory_jm_getInstance_2
  end type


contains

  function VectorAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimationFactory)
      jresult => object
    end select
  end function

  function VectorAnimationFactory_jnew_0() result(this)
    class(VectorAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'VectorAnimationFactory'
  end function

  recursive function VectorAnimationFactory_jm_getInstance_2(this, j_points, j_basicColor) result(jresult)
    class(VectorAnimationFactory), target :: this
    integer(4) :: j_points(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(VectorAnimation), pointer :: jresult
        jresult => VectorAnimation_jnew_3(j_points, j_basicColor, AnimationBehavior_jm_getInstance_0())
        return
  end function
end module VectorAnimationFactory_m

