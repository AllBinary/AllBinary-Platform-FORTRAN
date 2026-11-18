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
! package org.allbinary.input.motion.gesture
module MirrorMotionGestureEventUtil_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  use MotionEventCircularPool_m
  use MotionGestureEvent_m
  use Integer_m
  implicit none

  type, extends(JObject) :: MirrorMotionGestureEventUtil
    class(MotionEventCircularPool), pointer :: f_motionEventCircularPool => null()
  contains
    procedure :: jm_mirrorVerticle_2 => MirrorMotionGestureEventUtil_jm_mirrorVerticle_2
    procedure :: jm_getNewX_2 => MirrorMotionGestureEventUtil_jm_getNewX_2
  end type

  class(MirrorMotionGestureEventUtil), pointer, save :: MirrorMotionGestureEventUtil_jcell_instance => null()
  logical, save :: MirrorMotionGestureEventUtil_jset_instance = .false.

contains

  function MirrorMotionGestureEventUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MirrorMotionGestureEventUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MirrorMotionGestureEventUtil)
      jresult => object
    end select
  end function

  function MirrorMotionGestureEventUtil_jstatic_instance() result(jresult)
    class(MirrorMotionGestureEventUtil), pointer :: jresult
    if (.not. MirrorMotionGestureEventUtil_jset_instance) then
      MirrorMotionGestureEventUtil_jset_instance = .true.
      MirrorMotionGestureEventUtil_jcell_instance => MirrorMotionGestureEventUtil_jnew_0()
    end if
    jresult => MirrorMotionGestureEventUtil_jcell_instance
  end function

  subroutine MirrorMotionGestureEventUtil_jsetstatic_instance(jvalue)
    class(MirrorMotionGestureEventUtil), target, optional :: jvalue
    MirrorMotionGestureEventUtil_jset_instance = .true.
    if (present(jvalue)) then
      MirrorMotionGestureEventUtil_jcell_instance => jvalue
    else
      MirrorMotionGestureEventUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function MirrorMotionGestureEventUtil_jnew_0() result(this)
    class(MirrorMotionGestureEventUtil), pointer :: this
    allocate(this)
    this%jclass = 'MirrorMotionGestureEventUtil'
    
        this%f_motionEventCircularPool => MotionEventCircularPool_jm_createPool_1(Integer_jstatic_MAX_VALUE())
  end function

  recursive function MirrorMotionGestureEventUtil_jm_mirrorVerticle_2(this, j_motionGestureEvent, j_halfWidth) result(jresult)
    class(MirrorMotionGestureEventUtil), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    integer(4), value :: j_halfWidth
    class(MotionGestureEvent), pointer :: jresult
    class(MotionGestureEvent), pointer :: j_event
    integer(4) :: j_previousNewX
    integer(4) :: j_currentNewX
    class(PointFactory), pointer :: j_pointFactory
    class(GPoint), pointer :: j_mirroredPreviousPoint
    class(GPoint), pointer :: j_mirroredCurrentPoint
    class(GPoint), pointer :: jtemp1
    class(GPoint), pointer :: jtemp2
    class(GPoint), pointer :: jtemp3
    class(GPoint), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(j_motionGestureEvent%jm_getMotionGesture_0())
        jtemp1 => j_motionGestureEvent%jm_getPreviousPoint_0()
        j_previousNewX = this%jm_getNewX_2(jtemp1%jm_getX_0(), j_halfWidth)
        jtemp2 => j_motionGestureEvent%jm_getCurrentPoint_0()
        j_currentNewX = this%jm_getNewX_2(jtemp2%jm_getX_0(), j_halfWidth)
        j_pointFactory => PointFactory_jm_getInstance_0()
        jtemp3 => j_motionGestureEvent%jm_getPreviousPoint_0()
        j_mirroredPreviousPoint => j_pointFactory%jm_createXY_2(j_previousNewX, jtemp3%jm_getY_0())
        jtemp4 => j_motionGestureEvent%jm_getCurrentPoint_0()
        j_mirroredCurrentPoint => j_pointFactory%jm_createXY_2(j_currentNewX, jtemp4%jm_getY_0())
        call j_event%jm_setPreviousPoint_1(j_mirroredPreviousPoint)
        call j_event%jm_setCurrentPoint_1(j_mirroredCurrentPoint)
        jresult => j_event
        return
  end function

  recursive function MirrorMotionGestureEventUtil_jm_getNewX_2(this, j_x, j_halfWidth) result(jresult)
    class(MirrorMotionGestureEventUtil), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_halfWidth
    integer(4) :: jresult
    integer(4) :: j_newX
        continue
        if ((j_x > j_halfWidth)) then
            j_newX = (j_halfWidth - ((j_x - j_halfWidth)))
        else
            j_newX = (j_halfWidth + ((j_halfWidth - j_x)))
        end if
        jresult = j_newX
        return
  end function

  recursive function MirrorMotionGestureEventUtil_jm_getInstance_0() result(jresult)
    class(MirrorMotionGestureEventUtil), pointer :: jresult
        jresult => MirrorMotionGestureEventUtil_jstatic_instance()
        return
  end function
end module MirrorMotionGestureEventUtil_m

