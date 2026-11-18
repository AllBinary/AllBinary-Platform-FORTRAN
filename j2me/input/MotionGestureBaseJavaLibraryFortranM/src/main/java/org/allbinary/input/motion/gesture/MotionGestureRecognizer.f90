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
module MotionGestureRecognizer_m
  use JR_m
  use GPoint_m
  use Line_m
  use PointFactory_m
  use MotionGestureConfiguration_m
  use MotionGestureConfigurationFactory_m
  use BasicMotionGesturesHandler_m
  use MotionEventCircularPool_m
  use MotionGestureEvent_m
  use MovedMotionGesturesHandler_m
  use ScrolledMotionGesturesHandler_m
  use LogUtil_m
  use J2SEMath_m
  use BasicEventHandler_m
  use CommonStrings_m
  use TouchMotionGestureFactory_m
  use MotionGestureInput_m
  implicit none

  type, extends(JObject) :: MotionGestureRecognizer
    class(LogUtil), pointer :: f_logUtil => null()
    class(J2SEMath), pointer :: f_j2seMath => null()
    class(GPoint), pointer :: f_origin => null()
    class(GPoint), pointer :: f_previous => null()
    class(GPoint), pointer :: f_intermediate => null()
    class(Line), pointer :: f_line => null()
    class(BasicMotionGesturesHandler), pointer :: f_motionGesturesHandler => null()
    class(BasicEventHandler), pointer :: f_movedMotionGesturesHandler => null()
    class(BasicEventHandler), pointer :: f_scrolledMotionGesturesHandler => null()
    class(MotionEventCircularPool), pointer :: f_motionEventCircularPool => null()
  contains
    procedure :: jm_processPressedMotionEvent_3 => MotionGestureRecognizer_jm_processPressedMotionEvent_3
    procedure :: jm_processReleasedMotionEvent_3 => MotionGestureRecognizer_jm_processReleasedMotionEvent_3
    procedure :: jm_processDraggedMotionEvent_3 => MotionGestureRecognizer_jm_processDraggedMotionEvent_3
    procedure :: jm_processMovedMotionEvent_3 => MotionGestureRecognizer_jm_processMovedMotionEvent_3
    procedure :: jm_processScrolledMotionEvent_3 => MotionGestureRecognizer_jm_processScrolledMotionEvent_3
    procedure :: jm_getMotionGesturesHandler_0 => MotionGestureRecognizer_jm_getMotionGesturesHandler_0
  end type


contains

  function MotionGestureRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureRecognizer)
      jresult => object
    end select
  end function

  recursive function MotionGestureRecognizer_jnew_1(j_id) result(this)
    integer(4), value :: j_id
    class(MotionGestureRecognizer), pointer :: this
    class(BasicEventHandler), pointer :: j_motionGesturesHandler
    class(BasicEventHandler), pointer :: j_movedMotionGesturesHandler
    class(BasicEventHandler), pointer :: j_scrolledMotionGesturesHandler
    class(CommonStrings), pointer :: j_commonStrings
    class(PointFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MotionGestureRecognizer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_j2seMath => J2SEMath_jm_getInstance_0()
    jtemp1 => PointFactory_jm_getInstance_0()
    this%f_origin => jtemp1%f_ZERO_ZERO
    this%f_previous => this%f_origin
    this%f_intermediate => this%f_origin
    this%f_line => Line_jnew_2(this%f_origin, this%f_origin)
    
    
    
    
        this%f_motionEventCircularPool => MotionEventCircularPool_jm_createPool_1(j_id)
        j_motionGesturesHandler => BasicEventHandler_jnew_0()
        j_movedMotionGesturesHandler => j_motionGesturesHandler
        j_scrolledMotionGesturesHandler => j_motionGesturesHandler
        continue ! try
            j_motionGesturesHandler => BasicMotionGesturesHandler_jm_getInstance_0()
            j_movedMotionGesturesHandler => MovedMotionGesturesHandler_jm_getInstance_0()
            j_scrolledMotionGesturesHandler => ScrolledMotionGesturesHandler_jm_getInstance_0()
        this%f_motionGesturesHandler => BasicMotionGesturesHandler_jcast(j_motionGesturesHandler)
        this%f_movedMotionGesturesHandler => j_movedMotionGesturesHandler
        this%f_scrolledMotionGesturesHandler => j_scrolledMotionGesturesHandler
  end function

  recursive function MotionGestureRecognizer_jm_processPressedMotionEvent_3(this, j_current, j_deviceId, j_button) result(jresult)
    class(MotionGestureRecognizer), target :: this
    class(GPoint), target, optional :: j_current
    integer(4), value :: j_deviceId
    integer(4), value :: j_button
    logical :: jresult
    class(MotionGestureEvent), pointer :: j_event
    class(TouchMotionGestureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_intermediate => this%f_origin
        this%f_previous => this%f_origin
        jtemp2 => TouchMotionGestureFactory_jm_getInstance_0()
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(jtemp2%f_PRESSED)
        call j_event%jm_setPreviousPoint_1(this%f_previous)
        call j_event%jm_setCurrentPoint_1(j_current)
        call this%f_motionGesturesHandler%jm_fireEvent_1(j_event)
        jresult = .true.
        return
  end function

  recursive function MotionGestureRecognizer_jm_processReleasedMotionEvent_3(this, j_current, j_deviceId, j_button) result(jresult)
    class(MotionGestureRecognizer), target :: this
    class(GPoint), target, optional :: j_current
    integer(4), value :: j_deviceId
    integer(4), value :: j_button
    logical :: jresult
    class(MotionGestureEvent), pointer :: j_event
    class(TouchMotionGestureFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => TouchMotionGestureFactory_jm_getInstance_0()
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(jtemp3%f_RELEASED)
        call j_event%jm_setPreviousPoint_1(this%f_previous)
        call j_event%jm_setCurrentPoint_1(j_current)
        call this%f_motionGesturesHandler%jm_fireEvent_1(j_event)
        jresult = .true.
        return
  end function

  recursive subroutine MotionGestureRecognizer_jm_processDraggedMotionEvent_3(this, j_current, j_deviceId, j_buttonMask)
    class(MotionGestureRecognizer), target :: this
    class(GPoint), target, optional :: j_current
    integer(4), value :: j_deviceId
    integer(4), value :: j_buttonMask
    integer(4) :: j_minimumMotionGesture
    real(8) :: j_gradient
    real(8) :: j_absGradient
    class(MotionGestureConfiguration), pointer :: j_conf
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(MotionGestureInput), pointer :: j_newMotionGesture
    real(8) :: j_diagonalToleranceHigher
    real(8) :: j_diagonalToleranceLower
    class(MotionGestureEvent), pointer :: j_event
    class(MotionGestureConfigurationFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((JR_same(this%f_previous, this%f_origin) .or. JR_same(this%f_intermediate, this%f_origin))) then
            this%f_previous => j_current
            this%f_intermediate => j_current
            return
        end if
        call this%f_line%jm_setP1_1(this%f_previous)
        call this%f_line%jm_setP2_1(j_current)
        jtemp4 => MotionGestureConfigurationFactory_jm_getInstance_0()
        j_minimumMotionGesture = jtemp4%jm_getMinimumMotionGesture_0()
        if (((this%f_j2seMath%jm_abs_1(real(this%f_line%jm_getDeltaX_0(), 4)) < real(j_minimumMotionGesture, 4)) .and. (this%f_j2seMath%jm_abs_1(real(this%f_line%jm_getDeltaY_0(), 4)) < real(j_minimumMotionGesture, 4)))) then
            this%f_intermediate => j_current
            return
        end if
        j_gradient = this%f_line%jm_getGradient_0()
        j_absGradient = real(this%f_j2seMath%jm_abs_1(real(j_gradient, 4)), 8)
        j_conf => MotionGestureConfigurationFactory_jm_getInstance_0()
        j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
        j_newMotionGesture => j_touchMotionGestureFactory%f_NO_MOTION
        j_diagonalToleranceHigher = 12.0d0
        j_diagonalToleranceLower = 12.0d0
        if (j_conf%jm_isDiagonalMotionGestureAllowed_0()) then
            j_diagonalToleranceHigher = real(((90 - j_conf%jm_getDiagonalTolerance_0())), 8)
            j_diagonalToleranceLower = real(j_conf%jm_getDiagonalTolerance_0(), 8)
        end if
        if ((j_absGradient > tan(toRadians(j_diagonalToleranceHigher)))) then
            if ((this%f_line%jm_getDeltaY_0() > 0.0d0)) then
                j_newMotionGesture => j_touchMotionGestureFactory%f_UP
            else
                j_newMotionGesture => j_touchMotionGestureFactory%f_DOWN
            end if
        else
            if ((j_absGradient < tan(toRadians(j_diagonalToleranceLower)))) then
                if ((this%f_line%jm_getDeltaX_0() > 0.0d0)) then
                    j_newMotionGesture => j_touchMotionGestureFactory%f_LEFT
                else
                    j_newMotionGesture => j_touchMotionGestureFactory%f_RIGHT
                end if
            else
                if ((j_gradient > 0.0d0)) then
                    if ((this%f_line%jm_getDeltaX_0() > 0.0d0)) then
                        j_newMotionGesture => j_touchMotionGestureFactory%f_DIAGONAL_UP_LEFT
                    else
                        j_newMotionGesture => j_touchMotionGestureFactory%f_DIAGONAL_DOWN_RIGHT
                    end if
                else
                    if ((this%f_line%jm_getDeltaX_0() > 0.0d0)) then
                        j_newMotionGesture => j_touchMotionGestureFactory%f_DIAGONAL_DOWN_LEFT
                    else
                        j_newMotionGesture => j_touchMotionGestureFactory%f_DIAGONAL_UP_RIGHT
                    end if
                end if
            end if
        end if
        this%f_previous => j_current
        this%f_intermediate => j_current
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(j_newMotionGesture)
        call j_event%jm_setPreviousPoint_1(this%f_previous)
        call j_event%jm_setCurrentPoint_1(j_current)
        call this%f_motionGesturesHandler%jm_fireEvent_1(j_event)
        return
  end subroutine

  recursive function MotionGestureRecognizer_jm_processMovedMotionEvent_3(this, j_current, j_deviceId, j_button) result(jresult)
    class(MotionGestureRecognizer), target :: this
    class(GPoint), target, optional :: j_current
    integer(4), value :: j_deviceId
    integer(4), value :: j_button
    logical :: jresult
    class(MotionGestureEvent), pointer :: j_event
    class(TouchMotionGestureFactory), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp5 => TouchMotionGestureFactory_jm_getInstance_0()
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(jtemp5%f_NO_MOTION)
        call j_event%jm_setPreviousPoint_1(this%f_previous)
        call j_event%jm_setCurrentPoint_1(j_current)
        call this%f_movedMotionGesturesHandler%jm_fireEvent_1(j_event)
        jresult = .true.
        return
  end function

  recursive function MotionGestureRecognizer_jm_processScrolledMotionEvent_3(this, j_current, j_deviceId, j_button) result(jresult)
    class(MotionGestureRecognizer), target :: this
    class(GPoint), target, optional :: j_current
    integer(4), value :: j_deviceId
    integer(4), value :: j_button
    logical :: jresult
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(MotionGestureInput), pointer :: j_newMotionGesture
    class(MotionGestureEvent), pointer :: j_event
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
        j_newMotionGesture => j_touchMotionGestureFactory%f_NO_MOTION
        if ((j_button > 0)) then
            j_newMotionGesture => j_touchMotionGestureFactory%f_SCROLL_UP
        else if ((j_button < 0)) then
            j_newMotionGesture => j_touchMotionGestureFactory%f_SCROLL_DOWN
        end if
        j_event => this%f_motionEventCircularPool%jm_getInstance_1(j_newMotionGesture)
        call j_event%jm_setPreviousPoint_1(this%f_previous)
        call j_event%jm_setCurrentPoint_1(j_current)
        call this%f_scrolledMotionGesturesHandler%jm_fireEvent_1(j_event)
        jresult = .true.
        return
  end function

  recursive function MotionGestureRecognizer_jm_getMotionGesturesHandler_0(this) result(jresult)
    class(MotionGestureRecognizer), target :: this
    class(BasicMotionGesturesHandler), pointer :: jresult
        jresult => this%f_motionGesturesHandler
        return
  end function
end module MotionGestureRecognizer_m

