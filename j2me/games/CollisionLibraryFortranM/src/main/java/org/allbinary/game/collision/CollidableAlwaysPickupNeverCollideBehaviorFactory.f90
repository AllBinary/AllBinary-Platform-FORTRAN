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
module CollidableAlwaysPickupNeverCollideBehaviorFactory_m
  use JR_m
  use CollidableBaseBehaviorFactory_m
  use CollidableAlwaysPickupNeverCollideBehavior_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(CollidableBaseBehaviorFactory) :: CollidableAlwaysPickupNeverCollideBehaviorFactory
    class(CollidableAlwaysPickupNeverCollideBehavior), pointer :: f_instance => null()
  contains
    procedure :: jm_createBehavior_0 => CollidableAlwaysPickupNeverCollideBehaviorFactory_jm_createBehavior_0
  end type

  class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer, save :: CollidableAlwaysPickupNeverCollideBehaviorFactory_jcell_instanceC => null()
  logical, save :: CollidableAlwaysPickupNeverCollideBehaviorFactory_jset_instanceC = .false.

contains

  function CollidableAlwaysPickupNeverCollideBehaviorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableAlwaysPickupNeverCollideBehaviorFactory)
      jresult => object
    end select
  end function

  function CollidableAlwaysPickupNeverCollideBehaviorFactory_jstatic_instanceC() result(jresult)
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer :: jresult
    if (.not. CollidableAlwaysPickupNeverCollideBehaviorFactory_jset_instanceC) then
      CollidableAlwaysPickupNeverCollideBehaviorFactory_jset_instanceC = .true.
      CollidableAlwaysPickupNeverCollideBehaviorFactory_jcell_instanceC => CollidableAlwaysPickupNeverCollideBehaviorFactory_jnew_0()
    end if
    jresult => CollidableAlwaysPickupNeverCollideBehaviorFactory_jcell_instanceC
  end function

  subroutine CollidableAlwaysPickupNeverCollideBehaviorFactory_jsetstatic_instanceC(jvalue)
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), target, optional :: jvalue
    CollidableAlwaysPickupNeverCollideBehaviorFactory_jset_instanceC = .true.
    if (present(jvalue)) then
      CollidableAlwaysPickupNeverCollideBehaviorFactory_jcell_instanceC => jvalue
    else
      CollidableAlwaysPickupNeverCollideBehaviorFactory_jcell_instanceC => null()
    end if
  end subroutine

  function CollidableAlwaysPickupNeverCollideBehaviorFactory_jnew_0() result(this)
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer :: this
    allocate(this)
    this%jclass = 'CollidableAlwaysPickupNeverCollideBehaviorFactory'
    this%f_instance => CollidableAlwaysPickupNeverCollideBehavior_jnew_0()
  end function

  recursive function CollidableAlwaysPickupNeverCollideBehaviorFactory_jm_getInstance_0() result(jresult)
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), pointer :: jresult
        jresult => CollidableAlwaysPickupNeverCollideBehaviorFactory_jstatic_instanceC()
        return
  end function

  recursive function CollidableAlwaysPickupNeverCollideBehaviorFactory_jm_createBehavior_0(this) result(jresult)
    class(CollidableAlwaysPickupNeverCollideBehaviorFactory), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
        jresult => this%f_instance
        return
  end function
end module CollidableAlwaysPickupNeverCollideBehaviorFactory_m

function CollidableAlwaysPickupNeverCollideBehaviorFactory_jnew_0_jext() result(this)
  use CollidableAlwaysPickupNeverCollideBehaviorFactory_m, only: JObject, CollidableAlwaysPickupNeverCollideBehaviorFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollidableAlwaysPickupNeverCollideBehaviorFactory_jnew_0()
end function

