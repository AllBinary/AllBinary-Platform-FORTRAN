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
module AnimationBehavior_m
  use JR_m
  implicit none

  type, extends(JObject) :: AnimationBehavior
  contains
    procedure :: jm_reset_0 => AnimationBehavior_jm_reset_0
  end type

  class(AnimationBehavior), pointer, save :: AnimationBehavior_jcell_instance => null()
  logical, save :: AnimationBehavior_jset_instance = .false.

contains

  function AnimationBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnimationBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnimationBehavior)
      jresult => object
    end select
  end function

  function AnimationBehavior_jstatic_instance() result(jresult)
    class(AnimationBehavior), pointer :: jresult
    if (.not. AnimationBehavior_jset_instance) then
      AnimationBehavior_jset_instance = .true.
      AnimationBehavior_jcell_instance => AnimationBehavior_jnew_0()
    end if
    jresult => AnimationBehavior_jcell_instance
  end function

  subroutine AnimationBehavior_jsetstatic_instance(jvalue)
    class(AnimationBehavior), target, optional :: jvalue
    AnimationBehavior_jset_instance = .true.
    if (present(jvalue)) then
      AnimationBehavior_jcell_instance => jvalue
    else
      AnimationBehavior_jcell_instance => null()
    end if
  end subroutine

  function AnimationBehavior_jnew_0() result(this)
    class(AnimationBehavior), pointer :: this
    allocate(this)
    this%jclass = 'AnimationBehavior'
  end function

  recursive function AnimationBehavior_jm_getInstance_0() result(jresult)
    class(AnimationBehavior), pointer :: jresult
        jresult => AnimationBehavior_jstatic_instance()
        return
  end function

  recursive subroutine AnimationBehavior_jm_reset_0(this)
    class(AnimationBehavior), target :: this
    continue
  end subroutine
end module AnimationBehavior_m

