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
module CollidableBaseBehaviorFactoryInterface_m
  use JR_m
  use CollidableBaseBehavior_m
  implicit none

  type, extends(JObject) :: CollidableBaseBehaviorFactoryInterface
  contains
    procedure :: jm_createBehavior_0 => CollidableBaseBehaviorFactoryInterface_jm_createBehavior_0
  end type


contains

  function CollidableBaseBehaviorFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableBaseBehaviorFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableBaseBehaviorFactoryInterface)
      jresult => object
    end select
  end function

  function CollidableBaseBehaviorFactoryInterface_jnew_0() result(this)
    class(CollidableBaseBehaviorFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'CollidableBaseBehaviorFactoryInterface'
  end function

  recursive function CollidableBaseBehaviorFactoryInterface_jm_createBehavior_0(this) result(jresult)
    class(CollidableBaseBehaviorFactoryInterface), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
    error stop 'AbstractMethodError: CollidableBaseBehaviorFactoryInterface.createBehavior'
  end function
end module CollidableBaseBehaviorFactoryInterface_m

