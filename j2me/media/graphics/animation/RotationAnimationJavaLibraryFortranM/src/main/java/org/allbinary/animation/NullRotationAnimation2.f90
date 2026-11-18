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
module NullRotationAnimation2_m
  use JR_m
  use AngleFactory_m
  use AngleInfo_m
  use CircularIndexUtil_m
  use NullRotationAnimation_m
  use IndexedAnimationBehavior_m
  implicit none

  type, extends(NullRotationAnimation) :: NullRotationAnimation2
  contains
    procedure :: jm_paintXY_3 => NullRotationAnimation2_jm_paintXY_3
  end type


contains

  function NullRotationAnimation2_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRotationAnimation2), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRotationAnimation2)
      jresult => object
    end select
  end function

  recursive function NullRotationAnimation2_jnew_0() result(this)
    class(NullRotationAnimation2), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'NullRotationAnimation2'
        jtemp1 => AngleFactory_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine NullRotationAnimation2_jm_paintXY_3(this, j_graphics, j_x, j_y)
    class(NullRotationAnimation2), target :: this
    class(Graphics), target, optional :: j_graphics
    integer(4), value :: j_x
    integer(4), value :: j_y
    continue
  end subroutine
end module NullRotationAnimation2_m

function NullRotationAnimation2_jnew_0_jext() result(this)
  use NullRotationAnimation2_m, only: JObject, NullRotationAnimation2_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullRotationAnimation2_jnew_0()
end function

