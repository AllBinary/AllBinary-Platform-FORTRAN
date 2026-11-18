! Generated Code Do Not Modify
! package org.allbinary.animation
module NullIndexedAnimation_m
  use JR_m
  use IndexedAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(IndexedAnimation) :: NullIndexedAnimation
  contains
    procedure :: jm_getAnimationSize_0 => NullIndexedAnimation_jm_getAnimationSize_0
  end type


contains

  function NullIndexedAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullIndexedAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullIndexedAnimation)
      jresult => object
    end select
  end function

  recursive function NullIndexedAnimation_jnew_1(j_animationBehavior) result(this)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(NullIndexedAnimation), pointer :: this
    allocate(this)
    this%jclass = 'NullIndexedAnimation'
        continue ! super()
  end function

  recursive function NullIndexedAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(NullIndexedAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module NullIndexedAnimation_m

