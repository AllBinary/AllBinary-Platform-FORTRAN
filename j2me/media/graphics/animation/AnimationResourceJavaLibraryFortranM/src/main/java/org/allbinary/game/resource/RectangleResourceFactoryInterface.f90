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
! package org.allbinary.game.resource
module RectangleResourceFactoryInterface_m
  use JR_m
  use Rectangle_m
  implicit none

  type, extends(JObject) :: RectangleResourceFactoryInterface
  contains
    procedure :: jm_getRectangle_1 => RectangleResourceFactoryInterface_jm_getRectangle_1
    procedure :: jm_getRectangleArrayOfArrays_1 => RectangleResourceFactoryInterface_jm_getRectangleArrayOfArrays_1
  end type


contains

  function RectangleResourceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleResourceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleResourceFactoryInterface)
      jresult => object
    end select
  end function

  function RectangleResourceFactoryInterface_jnew_0() result(this)
    class(RectangleResourceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'RectangleResourceFactoryInterface'
  end function

  recursive function RectangleResourceFactoryInterface_jm_getRectangle_1(this, j_resource) result(jresult)
    class(RectangleResourceFactoryInterface), target :: this
    character(len=*), intent(in) :: j_resource
    class(Rectangle), pointer :: jresult
    error stop 'AbstractMethodError: RectangleResourceFactoryInterface.getRectangle'
  end function

  recursive function RectangleResourceFactoryInterface_jm_getRectangleArrayOfArrays_1(this, j_resource) result(jresult)
    class(RectangleResourceFactoryInterface), target :: this
    character(len=*), intent(in) :: j_resource
    type(JRef), allocatable :: jresult(:,:)
    error stop 'AbstractMethodError: RectangleResourceFactoryInterface.getRectangleArrayOfArrays'
  end function
end module RectangleResourceFactoryInterface_m

