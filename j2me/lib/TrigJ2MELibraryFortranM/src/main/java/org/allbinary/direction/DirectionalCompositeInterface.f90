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
! package org.allbinary.direction
module DirectionalCompositeInterface_m
  use JR_m
  use DirectionalInterface_m
  implicit none

  type, extends(JObject) :: DirectionalCompositeInterface
  contains
    procedure :: jm_getDirectionalInterface_0 => DirectionalCompositeInterface_jm_getDirectionalInterface_0
  end type


contains

  function DirectionalCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionalCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionalCompositeInterface)
      jresult => object
    end select
  end function

  function DirectionalCompositeInterface_jnew_0() result(this)
    class(DirectionalCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'DirectionalCompositeInterface'
  end function

  recursive function DirectionalCompositeInterface_jm_getDirectionalInterface_0(this) result(jresult)
    class(DirectionalCompositeInterface), target :: this
    class(DirectionalInterface), pointer :: jresult
    error stop 'AbstractMethodError: DirectionalCompositeInterface.getDirectionalInterface'
  end function
end module DirectionalCompositeInterface_m

