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
! package org.allbinary.animation
module NullIndexedAnimationInner_m
  use JR_m
  use NullIndexedAnimation_m
  use IndexedAnimationBehavior_m
  implicit none

  type, extends(NullIndexedAnimation) :: NullIndexedAnimationInner
  contains
    procedure :: jm_paintXY_3 => NullIndexedAnimationInner_jm_paintXY_3
  end type


contains

  function NullIndexedAnimationInner_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullIndexedAnimationInner), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullIndexedAnimationInner)
      jresult => object
    end select
  end function

  recursive function NullIndexedAnimationInner_jnew_0() result(this)
    class(NullIndexedAnimationInner), pointer :: this
    allocate(this)
    this%jclass = 'NullIndexedAnimationInner'
        continue ! super()
  end function

  recursive subroutine NullIndexedAnimationInner_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(NullIndexedAnimationInner), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module NullIndexedAnimationInner_m

function NullIndexedAnimationInner_jnew_0_jext() result(this)
  use NullIndexedAnimationInner_m, only: JObject, NullIndexedAnimationInner_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullIndexedAnimationInner_jnew_0()
end function

