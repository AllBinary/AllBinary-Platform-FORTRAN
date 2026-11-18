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
module CollisionTypeFactory_m
  use JR_m
  use CollisionType_m
  implicit none

  type, extends(JObject) :: CollisionTypeFactory
    class(CollisionType), pointer :: f_NONE => null()
    class(CollisionType), pointer :: f_DAMAGE => null()
    class(CollisionType), pointer :: f_PICKUP => null()
    class(CollisionType), pointer :: f_COLLISION => null()
  end type

  class(CollisionTypeFactory), pointer, save :: CollisionTypeFactory_jcell_SINGLETON => null()
  logical, save :: CollisionTypeFactory_jset_SINGLETON = .false.

contains

  function CollisionTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollisionTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollisionTypeFactory)
      jresult => object
    end select
  end function

  function CollisionTypeFactory_jstatic_SINGLETON() result(jresult)
    class(CollisionTypeFactory), pointer :: jresult
    if (.not. CollisionTypeFactory_jset_SINGLETON) then
      CollisionTypeFactory_jset_SINGLETON = .true.
      CollisionTypeFactory_jcell_SINGLETON => CollisionTypeFactory_jnew_0()
    end if
    jresult => CollisionTypeFactory_jcell_SINGLETON
  end function

  subroutine CollisionTypeFactory_jsetstatic_SINGLETON(jvalue)
    class(CollisionTypeFactory), target, optional :: jvalue
    CollisionTypeFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      CollisionTypeFactory_jcell_SINGLETON => jvalue
    else
      CollisionTypeFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function CollisionTypeFactory_jnew_0() result(this)
    class(CollisionTypeFactory), pointer :: this
    allocate(this)
    this%jclass = 'CollisionTypeFactory'
    this%f_NONE => CollisionType_jnew_1('None')
    this%f_DAMAGE => CollisionType_jnew_1('Damage')
    this%f_PICKUP => CollisionType_jnew_1('Pickup')
    this%f_COLLISION => CollisionType_jnew_1('Collision')
  end function

  recursive function CollisionTypeFactory_jm_getInstance_0() result(jresult)
    class(CollisionTypeFactory), pointer :: jresult
        jresult => CollisionTypeFactory_jstatic_SINGLETON()
        return
  end function
end module CollisionTypeFactory_m

