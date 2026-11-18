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
module MotionRecognizer_m
  use JR_m
  implicit none

  type, extends(JObject) :: MotionRecognizer
  contains
    procedure :: jm_processStartMotionEvent_4 => MotionRecognizer_jm_processStartMotionEvent_4
    procedure :: jm_processEndMotionEvent_4 => MotionRecognizer_jm_processEndMotionEvent_4
    procedure :: jm_processDraggedMotionEvent_4 => MotionRecognizer_jm_processDraggedMotionEvent_4
  end type


contains

  function MotionRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionRecognizer)
      jresult => object
    end select
  end function

  function MotionRecognizer_jnew_0() result(this)
    class(MotionRecognizer), pointer :: this
    allocate(this)
    this%jclass = 'MotionRecognizer'
  end function

  recursive subroutine MotionRecognizer_jm_processStartMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(MotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine MotionRecognizer_jm_processEndMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(MotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine MotionRecognizer_jm_processDraggedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(MotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine
end module MotionRecognizer_m

