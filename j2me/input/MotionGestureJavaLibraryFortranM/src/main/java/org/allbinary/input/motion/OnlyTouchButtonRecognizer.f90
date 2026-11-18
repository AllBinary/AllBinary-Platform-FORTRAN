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
module OnlyTouchButtonRecognizer_m
  use JR_m
  use TouchButtonRecognizer_m
  use MotionRecognizer_m
  implicit none

  type, extends(MotionRecognizer) :: OnlyTouchButtonRecognizer
    class(TouchButtonRecognizer), pointer :: f_touchButtonRecognizer => null()
    logical :: f_touchButtonProcessing = .false.
  contains
    procedure :: jm_processStartMotionEvent_4 => OnlyTouchButtonRecognizer_jm_processStartMotionEvent_4
    procedure :: jm_processEndMotionEvent_4 => OnlyTouchButtonRecognizer_jm_processEndMotionEvent_4
    procedure :: jm_processDraggedMotionEvent_4 => OnlyTouchButtonRecognizer_jm_processDraggedMotionEvent_4
  end type


contains

  function OnlyTouchButtonRecognizer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(OnlyTouchButtonRecognizer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (OnlyTouchButtonRecognizer)
      jresult => object
    end select
  end function

  recursive function OnlyTouchButtonRecognizer_jnew_0() result(this)
    class(OnlyTouchButtonRecognizer), pointer :: this
    allocate(this)
    this%jclass = 'OnlyTouchButtonRecognizer'
    
    this%f_touchButtonProcessing = .false.
        this%f_touchButtonRecognizer => TouchButtonRecognizer_jnew_0()
  end function

  recursive subroutine OnlyTouchButtonRecognizer_jm_processStartMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(OnlyTouchButtonRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
        if (this%f_touchButtonRecognizer%jm_pressTouchButtonInput_3(j_x, j_y, j_deviceId)) then
            this%f_touchButtonProcessing = .true.
        end if
  end subroutine

  recursive subroutine OnlyTouchButtonRecognizer_jm_processEndMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(OnlyTouchButtonRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
        if (this%f_touchButtonProcessing) then
            this%f_touchButtonProcessing = .false.
        end if
        if (this%f_touchButtonRecognizer%jm_releaseTouchButtonInput_3(j_x, j_y, j_deviceId)) then
            return
        end if
  end subroutine

  recursive subroutine OnlyTouchButtonRecognizer_jm_processDraggedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(OnlyTouchButtonRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
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
  end subroutine
end module OnlyTouchButtonRecognizer_m

function OnlyTouchButtonRecognizer_jnew_0_jext() result(this)
  use OnlyTouchButtonRecognizer_m, only: JObject, OnlyTouchButtonRecognizer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => OnlyTouchButtonRecognizer_jnew_0()
end function

