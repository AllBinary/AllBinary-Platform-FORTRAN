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
  implicit none

  type, extends(JObject) :: AllMotionRecognizer
    integer(4) :: f_id = 0
  contains
    procedure :: jm_processStartMotionEvent_4 => AllMotionRecognizer_jm_processStartMotionEvent_4
    procedure :: jm_processEndMotionEvent_4 => AllMotionRecognizer_jm_processEndMotionEvent_4
    procedure :: jm_processDraggedMotionEvent_4 => AllMotionRecognizer_jm_processDraggedMotionEvent_4
    procedure :: jm_processMovedMotionEvent_4 => AllMotionRecognizer_jm_processMovedMotionEvent_4
    procedure :: jm_processScrolledMotionEvent_4 => AllMotionRecognizer_jm_processScrolledMotionEvent_4
    procedure :: jm_getId_0 => AllMotionRecognizer_jm_getId_0
  end type

  integer(4), save :: AllMotionRecognizer_jcell_index
  logical, save :: AllMotionRecognizer_jset_index = .false.

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

  recursive function AllMotionRecognizer_jnew_0() result(this)
    class(AllMotionRecognizer), pointer :: this
    integer(4) :: jtemp1
    allocate(this)
    this%jclass = 'AllMotionRecognizer'
    
        jtemp1 = AllMotionRecognizer_jstatic_index()
        call AllMotionRecognizer_jsetstatic_index(AllMotionRecognizer_jstatic_index() + 1)
        this%f_id = jtemp1
  end function

  recursive subroutine AllMotionRecognizer_jm_processStartMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processEndMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processDraggedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processMovedMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive subroutine AllMotionRecognizer_jm_processScrolledMotionEvent_4(this, j_x, j_y, j_deviceId, j_modifiers)
    class(AllMotionRecognizer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_deviceId
    integer(4), value :: j_modifiers
    continue
  end subroutine

  recursive function AllMotionRecognizer_jm_getId_0(this) result(jresult)
    class(AllMotionRecognizer), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function
end module AllMotionRecognizer_m

