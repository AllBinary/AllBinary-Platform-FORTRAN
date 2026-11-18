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
! package org.allbinary.game.ag.life
module LifeInterfaceCompositeInterface_m
  use JR_m
  use Life_m
  implicit none

  type, extends(JObject) :: LifeInterfaceCompositeInterface
  contains
    procedure :: jm_getLifeInterface_0 => LifeInterfaceCompositeInterface_jm_getLifeInterface_0
  end type


contains

  function LifeInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LifeInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LifeInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function LifeInterfaceCompositeInterface_jnew_0() result(this)
    class(LifeInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'LifeInterfaceCompositeInterface'
  end function

  recursive function LifeInterfaceCompositeInterface_jm_getLifeInterface_0(this) result(jresult)
    class(LifeInterfaceCompositeInterface), target :: this
    class(Life), pointer :: jresult
    error stop 'AbstractMethodError: LifeInterfaceCompositeInterface.getLifeInterface'
  end function
end module LifeInterfaceCompositeInterface_m

