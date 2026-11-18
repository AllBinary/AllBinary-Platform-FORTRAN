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
! package org.allbinary.input.motion.gesture.observer
module MotionGestureEvent_m
  use JR_m
  use GPoint_m
  use PointFactory_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use TsUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use CommonLabels_m
  implicit none

  type, extends(AllBinaryEventObject) :: MotionGestureEvent
    class(MotionGestureInput), pointer :: f_motionGesture => null()
    integer(4) :: f_id = 0
    class(GPoint), pointer :: f_previousPoint => null()
    class(GPoint), pointer :: f_currentPoint => null()
    class(CommonLabels), pointer :: f_commonLabels => null()
  contains
    procedure :: jm_getMotionGesture_0 => MotionGestureEvent_jm_getMotionGesture_0
    procedure :: jm_setMotionGesture_1 => MotionGestureEvent_jm_setMotionGesture_1
    procedure :: jm_getPreviousPoint_0 => MotionGestureEvent_jm_getPreviousPoint_0
    procedure :: jm_setPreviousPoint_1 => MotionGestureEvent_jm_setPreviousPoint_1
    procedure :: jm_getCurrentPoint_0 => MotionGestureEvent_jm_getCurrentPoint_0
    procedure :: jm_setCurrentPoint_1 => MotionGestureEvent_jm_setCurrentPoint_1
    procedure :: jm_toString_0 => MotionGestureEvent_jm_toString_0
    procedure :: jm_getId_0 => MotionGestureEvent_jm_getId_0
  end type

  character(len=:), allocatable, save :: MotionGestureEvent_jcell_PREVIOUS
  logical, save :: MotionGestureEvent_jset_PREVIOUS = .false.
  character(len=:), allocatable, save :: MotionGestureEvent_jcell_HASHCODE
  logical, save :: MotionGestureEvent_jset_HASHCODE = .false.

contains

  function MotionGestureEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureEvent)
      jresult => object
    end select
  end function

  function MotionGestureEvent_jstatic_PREVIOUS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. MotionGestureEvent_jset_PREVIOUS) then
      MotionGestureEvent_jset_PREVIOUS = .true.
      MotionGestureEvent_jcell_PREVIOUS = ' Previous: '
    end if
    jresult = MotionGestureEvent_jcell_PREVIOUS
  end function

  subroutine MotionGestureEvent_jsetstatic_PREVIOUS(jvalue)
    character(len=*), intent(in) :: jvalue
    MotionGestureEvent_jset_PREVIOUS = .true.
    MotionGestureEvent_jcell_PREVIOUS = jvalue
  end subroutine

  function MotionGestureEvent_jstatic_HASHCODE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. MotionGestureEvent_jset_HASHCODE) then
      MotionGestureEvent_jset_HASHCODE = .true.
      MotionGestureEvent_jcell_HASHCODE = ' hashcode: '
    end if
    jresult = MotionGestureEvent_jcell_HASHCODE
  end function

  subroutine MotionGestureEvent_jsetstatic_HASHCODE(jvalue)
    character(len=*), intent(in) :: jvalue
    MotionGestureEvent_jset_HASHCODE = .true.
    MotionGestureEvent_jcell_HASHCODE = jvalue
  end subroutine

  recursive function MotionGestureEvent_jnew_3(j_source, j_id, j_motionGesture) result(this)
    class(JObject), target, optional :: j_source
    integer(4), value :: j_id
    class(MotionGestureInput), target, optional :: j_motionGesture
    class(MotionGestureEvent), pointer :: this
    class(TouchMotionGestureFactory), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    class(PointFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MotionGestureEvent'
    jtemp1 => TouchMotionGestureFactory_jm_getInstance_0()
    this%f_motionGesture => jtemp1%f_NO_MOTION
    
    jtemp2 => PointFactory_jm_getInstance_0()
    this%f_previousPoint => jtemp2%f_ZERO_ZERO
    jtemp3 => PointFactory_jm_getInstance_0()
    this%f_currentPoint => jtemp3%f_ZERO_ZERO
    this%f_commonLabels => CommonLabels_jm_getInstance_0()
        continue ! super()
        this%f_id = j_id
        call this%jm_setMotionGesture_1(j_motionGesture)
  end function

  recursive function MotionGestureEvent_jm_getMotionGesture_0(this) result(jresult)
    class(MotionGestureEvent), target :: this
    class(MotionGestureInput), pointer :: jresult
        jresult => this%f_motionGesture
        return
  end function

  recursive subroutine MotionGestureEvent_jm_setMotionGesture_1(this, j_motionGesture)
    class(MotionGestureEvent), target :: this
    class(MotionGestureInput), target, optional :: j_motionGesture
        this%f_motionGesture => j_motionGesture
  end subroutine

  recursive function MotionGestureEvent_jm_getPreviousPoint_0(this) result(jresult)
    class(MotionGestureEvent), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_previousPoint
        return
  end function

  recursive subroutine MotionGestureEvent_jm_setPreviousPoint_1(this, j_previousPoint)
    class(MotionGestureEvent), target :: this
    class(GPoint), target, optional :: j_previousPoint
        this%f_previousPoint => j_previousPoint
  end subroutine

  recursive function MotionGestureEvent_jm_getCurrentPoint_0(this) result(jresult)
    class(MotionGestureEvent), target :: this
    class(GPoint), pointer :: jresult
        jresult => this%f_currentPoint
        return
  end function

  recursive subroutine MotionGestureEvent_jm_setCurrentPoint_1(this, j_currentPoint)
    class(MotionGestureEvent), target :: this
    class(GPoint), target, optional :: j_currentPoint
        this%f_currentPoint => j_currentPoint
  end subroutine

  recursive function MotionGestureEvent_jm_toString_0(this) result(jresult)
    class(MotionGestureEvent), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: j_stringUtil
    class(TsUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_stringUtil => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_motionGesture))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonLabels%f_CURRENT)
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_currentPoint))
        jdiscardRef => j_stringBuffer%jm_append_1(MotionGestureEvent_jstatic_PREVIOUS())
        jdiscardRef => j_stringBuffer%jm_append_1(j_stringUtil%jm_toString_1(this%f_previousPoint))
        jdiscardRef => j_stringBuffer%jm_append_1(MotionGestureEvent_jstatic_HASHCODE())
        jtemp4 => TsUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_appendint_1(jtemp4%jm_hashCode_1(this))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function MotionGestureEvent_jm_getId_0(this) result(jresult)
    class(MotionGestureEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function
end module MotionGestureEvent_m

