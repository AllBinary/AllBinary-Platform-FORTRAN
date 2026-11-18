! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.animation
module IndexedAnimationBehaviorFactory_m
  use JR_m
  use AnimationBehaviorFactory_m
  use IndexedAnimationBehavior_m
  use AnimationBehavior_m
  implicit none

  type, extends(AnimationBehaviorFactory) :: IndexedAnimationBehaviorFactory
    integer(8) :: f_frameDelayTime = 0_8
    integer(4) :: f_loopTotal = 0
  contains
    procedure :: jm_getOrCreateInstance_0 => IndexedAnimationBehaviorFactory_jm_getOrCreateInstance_0
  end type


contains

  function IndexedAnimationBehaviorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedAnimationBehaviorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedAnimationBehaviorFactory)
      jresult => object
    end select
  end function

  recursive function IndexedAnimationBehaviorFactory_jnew_2(j_loopTotal, j_frameDelayTime) result(this)
    integer(4), value :: j_loopTotal
    integer(8), value :: j_frameDelayTime
    class(IndexedAnimationBehaviorFactory), pointer :: this
    allocate(this)
    this%jclass = 'IndexedAnimationBehaviorFactory'
    
    
        this%f_loopTotal = j_loopTotal
        this%f_frameDelayTime = j_frameDelayTime
  end function

  recursive function IndexedAnimationBehaviorFactory_jm_getOrCreateInstance_0(this) result(jresult)
    class(IndexedAnimationBehaviorFactory), target :: this
    class(AnimationBehavior), pointer :: jresult
        jresult => IndexedAnimationBehavior_jnew_2(this%f_loopTotal, this%f_frameDelayTime)
        return
  end function
end module IndexedAnimationBehaviorFactory_m

function IndexedAnimationBehaviorFactory_jnew_2_jext(p1, p2) result(this)
  use IndexedAnimationBehaviorFactory_m, only: JObject, IndexedAnimationBehaviorFactory_jnew_2
  implicit none
      integer(4), value :: p1
      integer(8), value :: p2
  class(JObject), pointer :: this
  this => IndexedAnimationBehaviorFactory_jnew_2(p1, p2)
end function

