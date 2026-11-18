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
module VectorAnimationInterface_m
  use JR_m
  use ColorCompositeInterface_m
  use BasicColor_m
  use IndexedAnimationInterface_m
  implicit none

  type, extends(IndexedAnimationInterface) :: VectorAnimationInterface
  contains
    procedure :: jm_getPoints_1 => VectorAnimationInterface_jm_getPoints_1
  end type


contains

  function VectorAnimationInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorAnimationInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorAnimationInterface)
      jresult => object
    end select
  end function

  function VectorAnimationInterface_jnew_0() result(this)
    class(VectorAnimationInterface), pointer :: this
    allocate(this)
    this%jclass = 'VectorAnimationInterface'
  end function

  recursive function VectorAnimationInterface_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorAnimationInterface), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
    error stop 'AbstractMethodError: VectorAnimationInterface.getPoints'
  end function
end module VectorAnimationInterface_m

