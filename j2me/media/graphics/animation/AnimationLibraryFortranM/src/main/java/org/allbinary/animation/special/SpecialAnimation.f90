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
! package org.allbinary.animation.special
module SpecialAnimation_m
  use JR_m
  use AnimationBehavior_m
  use IndexedAnimation_m
  use IndexedAnimationBehavior_m
  use SpecialAnimationInterface_m
  implicit none

  type, extends(IndexedAnimation) :: SpecialAnimation
  contains
    procedure :: jm_nextFrame_0 => SpecialAnimation_jm_nextFrame_0
    procedure :: jm_setLastFrame_0 => SpecialAnimation_jm_setLastFrame_0
    procedure :: jm_isComplete_0 => SpecialAnimation_jm_isComplete_0
    procedure :: jm_open_0 => SpecialAnimation_jm_open_0
    procedure :: jm_close_0 => SpecialAnimation_jm_close_0
    procedure :: jm_process_0 => SpecialAnimation_jm_process_0
  end type

  ! SpecialAnimation used as a SpecialAnimationInterface
  type, extends(SpecialAnimationInterface) :: SpecialAnimation_jas_SpecialAnimationInterface
    class(SpecialAnimation), pointer :: jtarget => null()
  contains
    procedure :: jm_setLastFrame_0 => SpecialAnimation_jas_SpecialAnimationInterface_jm_setLastFrame_0
    procedure :: jm_isComplete_0 => SpecialAnimation_jas_SpecialAnimationInterface_jm_isComplete_0
  end type

  class(SpecialAnimation), pointer, save :: SpecialAnimation_jcell_NULL_SPECIAL_ANIMATION => null()
  logical, save :: SpecialAnimation_jset_NULL_SPECIAL_ANIMATION = .false.

contains

  function SpecialAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialAnimation)
      jresult => object
    end select
  end function

  function SpecialAnimation_jas_SpecialAnimationInterface_jnew(object) result(jresult)
    class(SpecialAnimation), target :: object
    class(SpecialAnimation_jas_SpecialAnimationInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'SpecialAnimation'
    jresult%jtarget => object
  end function

  recursive subroutine SpecialAnimation_jas_SpecialAnimationInterface_jm_setLastFrame_0(this)
    class(SpecialAnimation_jas_SpecialAnimationInterface), target :: this
    call this%jtarget%jm_setLastFrame_0()
  end subroutine

  recursive function SpecialAnimation_jas_SpecialAnimationInterface_jm_isComplete_0(this) result(jresult)
    class(SpecialAnimation_jas_SpecialAnimationInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isComplete_0()
  end function

  function SpecialAnimation_jstatic_NULL_SPECIAL_ANIMATION() result(jresult)
    class(SpecialAnimation), pointer :: jresult
    if (.not. SpecialAnimation_jset_NULL_SPECIAL_ANIMATION) then
      SpecialAnimation_jset_NULL_SPECIAL_ANIMATION = .true.
      SpecialAnimation_jcell_NULL_SPECIAL_ANIMATION => SpecialAnimation_jnew_1(IndexedAnimationBehavior_jnew_2(1, int(250, 8)))
    end if
    jresult => SpecialAnimation_jcell_NULL_SPECIAL_ANIMATION
  end function

  subroutine SpecialAnimation_jsetstatic_NULL_SPECIAL_ANIMATION(jvalue)
    class(SpecialAnimation), target, optional :: jvalue
    SpecialAnimation_jset_NULL_SPECIAL_ANIMATION = .true.
    if (present(jvalue)) then
      SpecialAnimation_jcell_NULL_SPECIAL_ANIMATION => jvalue
    else
      SpecialAnimation_jcell_NULL_SPECIAL_ANIMATION => null()
    end if
  end subroutine

  recursive function SpecialAnimation_jnew_1(j_animationBehavior) result(this)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(SpecialAnimation), pointer :: this
    allocate(this)
    this%jclass = 'SpecialAnimation'
        continue ! super()
  end function

  recursive function SpecialAnimation_jm_getInstance_0() result(jresult)
    class(SpecialAnimation), pointer :: jresult
        jresult => SpecialAnimation_jstatic_NULL_SPECIAL_ANIMATION()
        return
  end function

  recursive subroutine SpecialAnimation_jm_nextFrame_0(this)
    class(SpecialAnimation), target :: this
    class(IndexedAnimationBehavior), pointer :: j_indexedAnimationBehavior
        j_indexedAnimationBehavior => IndexedAnimationBehavior_jcast(this%f_animationBehaviorP)
        j_indexedAnimationBehavior%f_loopIndex = j_indexedAnimationBehavior%f_loopIndex + 1
  end subroutine

  recursive subroutine SpecialAnimation_jm_setLastFrame_0(this)
    class(SpecialAnimation), target :: this
    continue
  end subroutine

  recursive function SpecialAnimation_jm_isComplete_0(this) result(jresult)
    class(SpecialAnimation), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine SpecialAnimation_jm_open_0(this)
    class(SpecialAnimation), target :: this
    continue
  end subroutine

  recursive subroutine SpecialAnimation_jm_close_0(this)
    class(SpecialAnimation), target :: this
    continue
  end subroutine

  recursive subroutine SpecialAnimation_jm_process_0(this)
    class(SpecialAnimation), target :: this
    continue
  end subroutine
end module SpecialAnimation_m

