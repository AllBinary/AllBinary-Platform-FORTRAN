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
! package org.allbinary.game.collision
module CollidableInterfaceCompositeInterface_m
  use JR_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(JObject) :: CollidableInterfaceCompositeInterface
  contains
    procedure :: jm_getCollidableInferface_0 => CollidableInterfaceCompositeInterface_jm_getCollidableInferface_0
  end type


contains

  function CollidableInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function CollidableInterfaceCompositeInterface_jnew_0() result(this)
    class(CollidableInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'CollidableInterfaceCompositeInterface'
  end function

  recursive function CollidableInterfaceCompositeInterface_jm_getCollidableInferface_0(this) result(jresult)
    class(CollidableInterfaceCompositeInterface), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
    error stop 'AbstractMethodError: CollidableInterfaceCompositeInterface.getCollidableInferface'
  end function
end module CollidableInterfaceCompositeInterface_m

