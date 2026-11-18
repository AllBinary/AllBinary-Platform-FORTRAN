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
! package org.allbinary.vector
module VectorInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: VectorInterface
  contains
    procedure :: jm_getPoints_1 => VectorInterface_jm_getPoints_1
    procedure :: jm_setPoints_1 => VectorInterface_jm_setPoints_1
  end type


contains

  function VectorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VectorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VectorInterface)
      jresult => object
    end select
  end function

  function VectorInterface_jnew_0() result(this)
    class(VectorInterface), pointer :: this
    allocate(this)
    this%jclass = 'VectorInterface'
  end function

  recursive function VectorInterface_jm_getPoints_1(this, j_frame) result(jresult)
    class(VectorInterface), target :: this
    integer(4), value :: j_frame
    integer(4), allocatable :: jresult(:,:)
    error stop 'AbstractMethodError: VectorInterface.getPoints'
  end function

  recursive subroutine VectorInterface_jm_setPoints_1(this, j_currentPoints)
    class(VectorInterface), target :: this
    integer(4) :: j_currentPoints(:,:,:)
    error stop 'AbstractMethodError: VectorInterface.setPoints'
  end subroutine
end module VectorInterface_m

