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
! package org.allbinary.game.combat.destroy
module DestroyableInterface_m
  use JR_m
  use NamedInterface_m
  implicit none

  type, extends(NamedInterface) :: DestroyableInterface
  contains
    procedure :: jm_isDestroyed_0 => DestroyableInterface_jm_isDestroyed_0
  end type


contains

  function DestroyableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DestroyableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DestroyableInterface)
      jresult => object
    end select
  end function

  function DestroyableInterface_jnew_0() result(this)
    class(DestroyableInterface), pointer :: this
    allocate(this)
    this%jclass = 'DestroyableInterface'
  end function

  recursive function DestroyableInterface_jm_isDestroyed_0(this) result(jresult)
    class(DestroyableInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: DestroyableInterface.isDestroyed'
  end function
end module DestroyableInterface_m

