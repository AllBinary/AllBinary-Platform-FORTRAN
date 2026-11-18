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
module CollidableNeverCollideBehaviorFactory_m
  use JR_m
  use CollidableBaseBehaviorFactory_m
  use CollidableNeverCollideBehavior_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(CollidableBaseBehaviorFactory) :: CollidableNeverCollideBehaviorFactory
    class(CollidableNeverCollideBehavior), pointer :: f_instance => null()
  contains
    procedure :: jm_createBehavior_0 => CollidableNeverCollideBehaviorFactory_jm_createBehavior_0
  end type

  class(CollidableNeverCollideBehaviorFactory), pointer, save :: CollidableNeverCollideBehaviorFactory_jcell_instanceC => null()
  logical, save :: CollidableNeverCollideBehaviorFactory_jset_instanceC = .false.

contains

  function CollidableNeverCollideBehaviorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableNeverCollideBehaviorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableNeverCollideBehaviorFactory)
      jresult => object
    end select
  end function

  function CollidableNeverCollideBehaviorFactory_jstatic_instanceC() result(jresult)
    class(CollidableNeverCollideBehaviorFactory), pointer :: jresult
    if (.not. CollidableNeverCollideBehaviorFactory_jset_instanceC) then
      CollidableNeverCollideBehaviorFactory_jset_instanceC = .true.
      CollidableNeverCollideBehaviorFactory_jcell_instanceC => CollidableNeverCollideBehaviorFactory_jnew_0()
    end if
    jresult => CollidableNeverCollideBehaviorFactory_jcell_instanceC
  end function

  subroutine CollidableNeverCollideBehaviorFactory_jsetstatic_instanceC(jvalue)
    class(CollidableNeverCollideBehaviorFactory), target, optional :: jvalue
    CollidableNeverCollideBehaviorFactory_jset_instanceC = .true.
    if (present(jvalue)) then
      CollidableNeverCollideBehaviorFactory_jcell_instanceC => jvalue
    else
      CollidableNeverCollideBehaviorFactory_jcell_instanceC => null()
    end if
  end subroutine

  function CollidableNeverCollideBehaviorFactory_jnew_0() result(this)
    class(CollidableNeverCollideBehaviorFactory), pointer :: this
    allocate(this)
    this%jclass = 'CollidableNeverCollideBehaviorFactory'
    this%f_instance => CollidableNeverCollideBehavior_jnew_1(.false.)
  end function

  recursive function CollidableNeverCollideBehaviorFactory_jm_getInstance_0() result(jresult)
    class(CollidableNeverCollideBehaviorFactory), pointer :: jresult
        jresult => CollidableNeverCollideBehaviorFactory_jstatic_instanceC()
        return
  end function

  recursive function CollidableNeverCollideBehaviorFactory_jm_createBehavior_0(this) result(jresult)
    class(CollidableNeverCollideBehaviorFactory), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
        jresult => this%f_instance
        return
  end function
end module CollidableNeverCollideBehaviorFactory_m

function CollidableNeverCollideBehaviorFactory_jnew_0_jext() result(this)
  use CollidableNeverCollideBehaviorFactory_m, only: JObject, CollidableNeverCollideBehaviorFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => CollidableNeverCollideBehaviorFactory_jnew_0()
end function

