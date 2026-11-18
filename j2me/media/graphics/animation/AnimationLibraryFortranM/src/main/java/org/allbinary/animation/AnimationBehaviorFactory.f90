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
module AnimationBehaviorFactory_m
  use JR_m
  use AnimationBehavior_m
  implicit none

  type, extends(JObject) :: AnimationBehaviorFactory
  contains
    procedure :: jm_getOrCreateInstance_0 => AnimationBehaviorFactory_jm_getOrCreateInstance_0
  end type

  class(AnimationBehaviorFactory), pointer, save :: AnimationBehaviorFactory_jcell_instance => null()
  logical, save :: AnimationBehaviorFactory_jset_instance = .false.

contains

  function AnimationBehaviorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationBehaviorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationBehaviorFactory)
      jresult => object
    end select
  end function

  function AnimationBehaviorFactory_jstatic_instance() result(jresult)
    class(AnimationBehaviorFactory), pointer :: jresult
    if (.not. AnimationBehaviorFactory_jset_instance) then
      AnimationBehaviorFactory_jset_instance = .true.
      AnimationBehaviorFactory_jcell_instance => AnimationBehaviorFactory_jnew_0()
    end if
    jresult => AnimationBehaviorFactory_jcell_instance
  end function

  subroutine AnimationBehaviorFactory_jsetstatic_instance(jvalue)
    class(AnimationBehaviorFactory), target, optional :: jvalue
    AnimationBehaviorFactory_jset_instance = .true.
    if (present(jvalue)) then
      AnimationBehaviorFactory_jcell_instance => jvalue
    else
      AnimationBehaviorFactory_jcell_instance => null()
    end if
  end subroutine

  function AnimationBehaviorFactory_jnew_0() result(this)
    class(AnimationBehaviorFactory), pointer :: this
    allocate(this)
    this%jclass = 'AnimationBehaviorFactory'
  end function

  recursive function AnimationBehaviorFactory_jm_getInstance_0() result(jresult)
    class(AnimationBehaviorFactory), pointer :: jresult
        jresult => AnimationBehaviorFactory_jstatic_instance()
        return
  end function

  recursive function AnimationBehaviorFactory_jm_getOrCreateInstance_0(this) result(jresult)
    class(AnimationBehaviorFactory), target :: this
    class(AnimationBehavior), pointer :: jresult
        jresult => AnimationBehavior_jm_getInstance_0()
        return
  end function
end module AnimationBehaviorFactory_m

