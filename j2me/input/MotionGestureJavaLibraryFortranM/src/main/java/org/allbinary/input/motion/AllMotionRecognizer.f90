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
! package org.allbinary.input.motion
module AllMotionRecognizer_m
  use JR_m
  use CustomGPoint_m
  use GPointCircularPool_m
  use TouchButtonRecognizer_m
  use MotionGestureRecognizer_m
  use LogUtil_m
  use MotionRecognizer_m
  implicit none

  type, extends(MotionRecognizer) :: AllMotionRecognizer
    class(LogUtil), pointer :: f_logUtil => null()
    class(MotionGestureRecognizer), pointer :: f_motionGestureRecognizer => null()
    logical :: f_touchButtonProcessing = .false.
    class(TouchButtonRecognizer), pointer :: f_touchButtonRecognizer => null()
    integer(4) :: f_id = 0
    integer(4) :: f_lastX = 0
    integer(4) :: f_lastY = 0
  contains
    procedure :: jm_processStartMotionEvent_4 => AllMotionRecognizer_jm_processStartMotionEvent_4
    procedure :: jm_processEndMotionEvent_4 => AllMotionRecognizer_jm_processEndMotionEvent_4
    procedure :: jm_processDraggedMotionEvent_4 => AllMotionRecognizer_jm_processDraggedMotionEvent_4
    procedure :: jm_processMovedMotionEvent_4 => AllMotionRecognizer_jm_processMovedMotionEvent_4
    procedure :: jm_processScrolledMotionEvent_4 => AllMotionRecognizer_jm_processScrolledMotionEvent_4
    procedure :: jm_getMotionGestureRecognizer_0 => AllMotionRecognizer_jm_getMotionGestureRecognizer_0
  end type

  integer(4), save :: AllMotionRecognizer_jcell_index
  logical, save :: AllMotionRecognizer_jset_index = .false.
  class(GPointCircularPool), pointer, save :: AllMotionRecognizer_jcell_pointCircularPool => null()
  logical, save :: AllMotionRecognizer_jset_pointCircularPool = .false.

contains

  function AllMotionRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllMotionRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllMotionRecognizer)
      jresult => object
    end select
  end function

  function AllMotionRecognizer_jstatic_index() result(jresult)
    integer(4) :: jresult
    if (.not. AllMotionRecognizer_jset_index) then
      AllMotionRecognizer_jset_index = .true.
      AllMotionRecognizer_jcell_index = 0
    end if
    jresult = AllMotionRecognizer_jcell_index
  end function

  subroutine AllMotionRecognizer_jsetstatic_index(jvalue)
    integer(4), value :: jvalue
    AllMotionRecognizer_jset_index = .true.
    AllMotionRecognizer_jcell_index = jvalue
  end subroutine

  function AllMotionRecognizer_jstatic_pointCircularPool() result(jresult)
    class(GPointCircularPool), pointer :: jresult
    if (.not. AllMotionRecognizer_jset_pointCircularPool) then
      AllMotionRecognizer_jset_pointCircularPool = .true.
      AllMotionRecognizer_jcell_pointCircularPool => GPointCircularPool_jnew_1(40)
    end if
    jresult => AllMotionRecognizer_jcell_pointCircularPool
  end function

  subroutine AllMotionRecognizer_jsetstatic_pointCircularPool(jvalue)
    class(GPointCircularPool), target, optional :: jvalue
    AllMotionRecognizer_jset_pointCircularPool = .true.
    if (present(jvalue)) then
      AllMotionRecognizer_jcell_pointCircularPool => jvalue
    else
      AllMotionRecognizer_jcell_pointCircularPool => null()
    end if
  end subroutine

  recursive function AllMotionRecognizer_jnew_0() result(this)
    class(AllMotionRecognizer), pointer :: this
    integer(4) :: jtemp1
    allocate(this)
    this%jclass = 'AllMotionRecognizer'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_touchButtonProcessing = .false.
    
    
    
    
        jtemp1 = AllMotionRecognizer_jstatic_index()
        call AllMotionRecognizer_jsetstatic_index(AllMotionRecognizer_jstatic_index() + 1)
        this%f_id = jtemp1
        this%f_motionGestureRecognizer => MotionGestureRecognizer_jnew_1(this%f_id)
        this%f_touchButtonRecognizer => TouchButtonRecognizer_jnew_0()
  end function

  recursive subroutine AllMotionRecognizer_jm_processStartMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    class(CustomGPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_touchButtonRecognizer%jm_pressTouchButtonInput_3(j_x, j_y, j_deviceId)) then
            this%f_touchButtonProcessing = .true.
        end if
        if ((.not. this%f_touchButtonProcessing)) then
            associate (jstaticref1 => AllMotionRecognizer_jstatic_pointCircularPool())
            j_point => CustomGPoint_jcast(jstaticref1%jm_getNextInstance_0())
            end associate
            call j_point%jm_setX_1(j_x)
            call j_point%jm_setY_1(j_y)
            jdiscardBoolean = this%f_motionGestureRecognizer%jm_processPressedMotionEvent_3(j_point, j_deviceId, j_modifiers)
        end if
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processEndMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    class(CustomGPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_touchButtonRecognizer%jm_releaseTouchButtonInput_3(j_x, j_y, j_deviceId)) then
            continue
        end if
        if ((.not. this%f_touchButtonProcessing)) then
            associate (jstaticref2 => AllMotionRecognizer_jstatic_pointCircularPool())
            j_point => CustomGPoint_jcast(jstaticref2%jm_getNextInstance_0())
            end associate
            call j_point%jm_setX_1(j_x)
            call j_point%jm_setY_1(j_y)
            jdiscardBoolean = this%f_motionGestureRecognizer%jm_processReleasedMotionEvent_3(j_point, j_deviceId, j_modifiers)
        end if
        if (this%f_touchButtonProcessing) then
            this%f_touchButtonProcessing = .false.
        end if
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processDraggedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    class(CustomGPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_touchButtonProcessing) then
            jdiscardBoolean = this%f_touchButtonRecognizer%jm_pressTouchButtonInput_3(j_x, j_y, j_deviceId)
        end if
        if ((.not. this%f_touchButtonProcessing)) then
            associate (jstaticref3 => AllMotionRecognizer_jstatic_pointCircularPool())
            j_point => CustomGPoint_jcast(jstaticref3%jm_getNextInstance_0())
            end associate
            call j_point%jm_setX_1(j_x)
            call j_point%jm_setY_1(j_y)
            call this%f_motionGestureRecognizer%jm_processDraggedMotionEvent_3(j_point, j_deviceId, j_modifiers)
        end if
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processMovedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    class(CustomGPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((j_x /= this%f_lastX) .or. (j_y /= this%f_lastY))) then
            this%f_lastX = j_x
            this%f_lastY = j_y
            associate (jstaticref4 => AllMotionRecognizer_jstatic_pointCircularPool())
            j_point => CustomGPoint_jcast(jstaticref4%jm_getNextInstance_0())
            end associate
            call j_point%jm_setX_1(j_x)
            call j_point%jm_setY_1(j_y)
            jdiscardBoolean = this%f_motionGestureRecognizer%jm_processMovedMotionEvent_3(j_point, j_deviceId, j_modifiers)
        end if
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processScrolledMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    class(CustomGPoint), pointer :: j_point
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        associate (jstaticref5 => AllMotionRecognizer_jstatic_pointCircularPool())
        j_point => CustomGPoint_jcast(jstaticref5%jm_getNextInstance_0())
        end associate
        call j_point%jm_setX_1(j_x)
        call j_point%jm_setY_1(j_y)
        jdiscardBoolean = this%f_motionGestureRecognizer%jm_processScrolledMotionEvent_3(j_point, j_deviceId, j_modifiers)
  end subroutine

  recursive function AllMotionRecognizer_jm_getMotionGestureRecognizer_0(this) result(jresult)
    class(AllMotionRecognizer), target :: this
    class(MotionGestureRecognizer), pointer :: jresult
        jresult => this%f_motionGestureRecognizer
        return
  end function
end module AllMotionRecognizer_m

function AllMotionRecognizer_jnew_0_jext() result(this)
  use AllMotionRecognizer_m, only: JObject, AllMotionRecognizer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllMotionRecognizer_jnew_0()
end function

