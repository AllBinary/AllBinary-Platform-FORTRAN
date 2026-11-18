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
module VectorAnimationFactoryInterface_m
  use JR_m
  use BasicColor_m
  use VectorAnimation_m
  implicit none

  type, extends(JObject) :: VectorAnimationFactoryInterface
  contains
    procedure :: jm_getInstance_2 => VectorAnimationFactoryInterface_jm_getInstance_2
  end type


contains

  function VectorAnimationFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimationFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimationFactoryInterface)
      jresult => object
    end select
  end function

  function VectorAnimationFactoryInterface_jnew_0() result(this)
    class(VectorAnimationFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'VectorAnimationFactoryInterface'
  end function

  recursive function VectorAnimationFactoryInterface_jm_getInstance_2(this, j_points, j_basicColor) result(jresult)
    class(VectorAnimationFactoryInterface), target :: this
    integer(4) :: j_points(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(VectorAnimation), pointer :: jresult
    error stop 'AbstractMethodError: VectorAnimationFactoryInterface.getInstance'
  end function
end module VectorAnimationFactoryInterface_m

