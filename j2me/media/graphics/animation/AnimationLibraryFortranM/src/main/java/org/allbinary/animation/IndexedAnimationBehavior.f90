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
module IndexedAnimationBehavior_m
  use JR_m
  use AnimationBehavior_m
  implicit none

  type, extends(AnimationBehavior) :: IndexedAnimationBehavior
    integer(8) :: f_frameDelayTime = 0_8
    integer(4) :: f_loopTotal = 0
    integer(8) :: f_elapsedTime = 0_8
    integer(4) :: f_loopIndex = 0
  contains
    procedure :: jm_reset_0 => IndexedAnimationBehavior_jm_reset_0
  end type


contains

  function IndexedAnimationBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedAnimationBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedAnimationBehavior)
      jresult => object
    end select
  end function

  recursive function IndexedAnimationBehavior_jnew_2(j_loopTotal, j_frameDelayTime) result(this)
    integer(4), value :: j_loopTotal
    integer(8), value :: j_frameDelayTime
    class(IndexedAnimationBehavior), pointer :: this
    allocate(this)
    this%jclass = 'IndexedAnimationBehavior'
    
    
    
    
        this%f_loopTotal = j_loopTotal
        this%f_frameDelayTime = j_frameDelayTime
  end function

  recursive subroutine IndexedAnimationBehavior_jm_reset_0(this)
    class(IndexedAnimationBehavior), target :: this
        this%f_loopIndex = 0
  end subroutine
end module IndexedAnimationBehavior_m

function IndexedAnimationBehavior_jnew_2_jext(p1, p2) result(this)
  use IndexedAnimationBehavior_m, only: JObject, IndexedAnimationBehavior_jnew_2
  implicit none
      integer(4), value :: p1
      integer(8), value :: p2
  class(JObject), pointer :: this
  this => IndexedAnimationBehavior_jnew_2(p1, p2)
end function

