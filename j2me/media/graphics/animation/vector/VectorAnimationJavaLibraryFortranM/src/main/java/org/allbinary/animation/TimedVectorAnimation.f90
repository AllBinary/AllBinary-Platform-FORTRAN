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
module TimedVectorAnimation_m
  use JR_m
  use BasicColor_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use VectorAnimation_m
  use AnimationBehavior_m
  implicit none

  type, extends(VectorAnimation) :: TimedVectorAnimation
    class(TimeDelayHelper), pointer :: f_timeElapsedHelper => null()
  contains
    procedure :: jm_nextFrame_0 => TimedVectorAnimation_jm_nextFrame_0
  end type


contains

  function TimedVectorAnimation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TimedVectorAnimation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TimedVectorAnimation)
      jresult => object
    end select
  end function

  recursive function TimedVectorAnimation_jnew_3(j_currentPoints, j_basicColor, j_animationBehavior) result(this)
    integer(4) :: j_currentPoints(:,:,:)
    class(BasicColor), target, optional :: j_basicColor
    class(AnimationBehavior), target, optional :: j_animationBehavior
    class(TimedVectorAnimation), pointer :: this
    allocate(this)
    this%jclass = 'TimedVectorAnimation'
    this%f_timeElapsedHelper => TimeDelayHelper_jnew_1(200)
        continue ! super()
  end function

  recursive subroutine TimedVectorAnimation_jm_nextFrame_0(this)
    class(TimedVectorAnimation), target :: this
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        if (this%f_timeElapsedHelper%jm_isTime_1(jtemp1%f_startTime)) then
            call this%VectorAnimation%jm_nextFrame_0()
        end if
  end subroutine
end module TimedVectorAnimation_m

