! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module CollidableBaseBehaviorFactory_m
  use JR_m
  use CollidableBaseBehaviorFactoryInterface_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(CollidableBaseBehaviorFactoryInterface) :: CollidableBaseBehaviorFactory
  contains
    procedure :: jm_createBehavior_0 => CollidableBaseBehaviorFactory_jm_createBehavior_0
  end type


contains

  function CollidableBaseBehaviorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableBaseBehaviorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableBaseBehaviorFactory)
      jresult => object
    end select
  end function

  function CollidableBaseBehaviorFactory_jnew_0() result(this)
    class(CollidableBaseBehaviorFactory), pointer :: this
    allocate(this)
    this%jclass = 'CollidableBaseBehaviorFactory'
  end function

  recursive function CollidableBaseBehaviorFactory_jm_createBehavior_0(this) result(jresult)
    class(CollidableBaseBehaviorFactory), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function
end module CollidableBaseBehaviorFactory_m

