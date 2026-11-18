! Generated Code Do Not Modify
! package org.allbinary.animation
module NullRotationAnimation_m
  use JR_m
  use AngleFactory_m
  use AngleInfo_m
  use CircularIndexUtil_m
  use RotationAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(RotationAnimation) :: NullRotationAnimation
  contains
    procedure :: jm_getAnimationSize_0 => NullRotationAnimation_jm_getAnimationSize_0
  end type


contains

  function NullRotationAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullRotationAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullRotationAnimation)
      jresult => object
    end select
  end function

  recursive function NullRotationAnimation_jnew_3(j_angleInfo, j_circularIndexUtil, j_animationBehavior) result(this)
    class(AngleInfo), target, optional :: j_angleInfo
    class(CircularIndexUtil), target, optional :: j_circularIndexUtil
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(NullRotationAnimation), pointer :: this
    allocate(this)
    this%jclass = 'NullRotationAnimation'
        continue ! super()
  end function

  recursive function NullRotationAnimation_jm_createTotalAngle_3(j_angleInfo, j_totalAngle, j_animationBehavior) result(jresult)
    class(AngleInfo), target, optional :: j_angleInfo
    integer(4), value :: j_totalAngle
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(NullRotationAnimation), pointer :: jresult
    class(AngleIncrementInfo), pointer :: jtemp1
        jtemp1 => j_angleInfo%jm_getAngleIncrementInfo_0()
        jresult => NullRotationAnimation_jnew_3(j_angleInfo, CircularIndexUtil_jm_createInstance_1((j_totalAngle / jtemp1%jm_getAngleIncrement_0())), j_animationBehavior)
        return
  end function

  recursive function NullRotationAnimation_jm_createQuarter_1(j_animationBehavior) result(jresult)
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(NullRotationAnimation), pointer :: jresult
    class(AngleFactory), pointer :: jtemp2
        jtemp2 => AngleFactory_jm_getInstance_0()
        jresult => NullRotationAnimation_jnew_3(AngleInfo_jm_getInstance_1(jtemp2%f_QUARTER_TOTAL_ANGLE), CircularIndexUtil_jm_createInstance_1(4), j_animationBehavior)
        return
  end function

  recursive function NullRotationAnimation_jm_getAnimationSize_0(this) result(jresult)
    class(NullRotationAnimation), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module NullRotationAnimation_m

