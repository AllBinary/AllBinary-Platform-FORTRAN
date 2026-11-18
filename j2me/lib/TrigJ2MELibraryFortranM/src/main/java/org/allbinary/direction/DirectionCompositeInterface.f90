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
module DirectionCompositeInterface_m
  use JR_m
  use Direction_m
  implicit none

  type, extends(JObject) :: DirectionCompositeInterface
  contains
    procedure :: jm_getDirection_0 => DirectionCompositeInterface_jm_getDirection_0
  end type


contains

  function DirectionCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionCompositeInterface)
      jresult => object
    end select
  end function

  function DirectionCompositeInterface_jnew_0() result(this)
    class(DirectionCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'DirectionCompositeInterface'
  end function

  recursive function DirectionCompositeInterface_jm_getDirection_0(this) result(jresult)
    class(DirectionCompositeInterface), target :: this
    class(Direction), pointer :: jresult
    error stop 'AbstractMethodError: DirectionCompositeInterface.getDirection'
  end function
end module DirectionCompositeInterface_m

