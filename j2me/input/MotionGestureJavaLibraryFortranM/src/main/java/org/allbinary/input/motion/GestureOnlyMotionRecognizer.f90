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
module GestureOnlyMotionRecognizer_m
  use JR_m
  use CustomGPoint_m
  use GPointCircularPool_m
  use MotionGestureRecognizer_m
  use MotionRecognizer_m
  implicit none

  type, extends(MotionRecognizer) :: GestureOnlyMotionRecognizer
    class(MotionGestureRecognizer), pointer :: f_motionGestureRecognizer => null()
    integer(4) :: f_id = 0
  contains
    procedure :: jm_processStartMotionEvent_4 => GestureOnlyMotionRecognizer_jm_processStartMotionEvent_4
    procedure :: jm_processEndMotionEvent_4 => GestureOnlyMotionRecognizer_jm_processEndMotionEvent_4
    procedure :: jm_processDraggedMotionEvent_4 => GestureOnlyMotionRecognizer_jm_processDraggedMotionEvent_4
  end type

  integer(4), save :: GestureOnlyMotionRecognizer_jcell_index
  logical, save :: GestureOnlyMotionRecognizer_jset_index = .false.
  class(GPointCircularPool), pointer, save :: GestureOnlyMotionRecognizer_jcell_pointCircularPool => null()
  logical, save :: GestureOnlyMotionRecognizer_jset_pointCircularPool = .false.

contains

  function GestureOnlyMotionRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GestureOnlyMotionRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GestureOnlyMotionRecognizer)
      jresult => object
    end select
  end function

  function GestureOnlyMotionRecognizer_jstatic_index() result(jresult)
    integer(4) :: jresult
    if (.not. GestureOnlyMotionRecognizer_jset_index) then
      GestureOnlyMotionRecognizer_jset_index = .true.
      GestureOnlyMotionRecognizer_jcell_index = 0
    end if
    jresult = GestureOnlyMotionRecognizer_jcell_index
  end function

  subroutine GestureOnlyMotionRecognizer_jsetstatic_index(jvalue)
    integer(4), value :: jvalue
    GestureOnlyMotionRecognizer_jset_index = .true.
    GestureOnlyMotionRecognizer_jcell_index = jvalue
  end subroutine

  function GestureOnlyMotionRecognizer_jstatic_pointCircularPool() result(jresult)
    class(GPointCircularPool), pointer :: jresult
    if (.not. GestureOnlyMotionRecognizer_jset_pointCircularPool) then
      GestureOnlyMotionRecognizer_jset_pointCircularPool = .true.
      GestureOnlyMotionRecognizer_jcell_pointCircularPool => GPointCircularPool_jnew_1(40)
    end if
    jresult => GestureOnlyMotionRecognizer_jcell_pointCircularPool
  end function

  subroutine GestureOnlyMotionRecognizer_jsetstatic_pointCircularPool(jvalue)
    class(GPointCircularPool), target, optional :: jvalue
    GestureOnlyMotionRecognizer_jset_pointCircularPool = .true.
    if (present(jvalue)) then
      GestureOnlyMotionRecognizer_jcell_pointCircularPool => jvalue
    else
      GestureOnlyMotionRecognizer_jcell_pointCircularPool => null()
    end if
  end subroutine

  recursive function GestureOnlyMotionRecognizer_jnew_0() result(this)
    class(GestureOnlyMotionRecognizer), pointer :: this
    integer(4) :: jtemp1
    allocate(this)
    this%jclass = 'GestureOnlyMotionRecognizer'
    
    
        jtemp1 = GestureOnlyMotionRecognizer_jstatic_index()
        call GestureOnlyMotionRecognizer_jsetstatic_index(GestureOnlyMotionRecognizer_jstatic_index() + 1)
        this%f_id = jtemp1
        this%f_motionGestureRecognizer => MotionGestureRecognizer_jnew_1(this%f_id)
  end function

  recursive subroutine GestureOnlyMotionRecognizer_jm_processStartMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(GestureOnlyMotionRecognizer), target :: this
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
        associate (jstaticref1 => GestureOnlyMotionRecognizer_jstatic_pointCircularPool())
        j_point => CustomGPoint_jcast(jstaticref1%jm_getNextInstance_0())
        end associate
        call j_point%jm_setX_1(j_x)
        call j_point%jm_setY_1(j_y)
        jdiscardBoolean = this%f_motionGestureRecognizer%jm_processPressedMotionEvent_3(j_point, j_deviceId, j_modifiers)
  end subroutine

  recursive subroutine GestureOnlyMotionRecognizer_jm_processEndMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(GestureOnlyMotionRecognizer), target :: this
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
        associate (jstaticref2 => GestureOnlyMotionRecognizer_jstatic_pointCircularPool())
        j_point => CustomGPoint_jcast(jstaticref2%jm_getNextInstance_0())
        end associate
        call j_point%jm_setX_1(j_x)
        call j_point%jm_setY_1(j_y)
        jdiscardBoolean = this%f_motionGestureRecognizer%jm_processReleasedMotionEvent_3(j_point, j_deviceId, j_modifiers)
  end subroutine

  recursive subroutine GestureOnlyMotionRecognizer_jm_processDraggedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(GestureOnlyMotionRecognizer), target :: this
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
        associate (jstaticref3 => GestureOnlyMotionRecognizer_jstatic_pointCircularPool())
        j_point => CustomGPoint_jcast(jstaticref3%jm_getNextInstance_0())
        end associate
        call j_point%jm_setX_1(j_x)
        call j_point%jm_setY_1(j_y)
        call this%f_motionGestureRecognizer%jm_processDraggedMotionEvent_3(j_point, j_deviceId, j_modifiers)
  end subroutine
end module GestureOnlyMotionRecognizer_m

function GestureOnlyMotionRecognizer_jnew_0_jext() result(this)
  use GestureOnlyMotionRecognizer_m, only: JObject, GestureOnlyMotionRecognizer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => GestureOnlyMotionRecognizer_jnew_0()
end function

