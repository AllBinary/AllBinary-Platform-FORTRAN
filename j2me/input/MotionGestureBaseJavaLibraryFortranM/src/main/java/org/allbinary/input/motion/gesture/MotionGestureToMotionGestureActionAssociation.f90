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
module MotionGestureToMotionGestureActionAssociation_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: MotionGestureToMotionGestureActionAssociation
    class(BasicArrayList), pointer :: f_list => null()
    class(CompleteMotionGestureInputEvent), pointer :: f_motionGestureAction => null()
  contains
    procedure :: jm_getMotionGesture_0 => MotionGestureToMotionGestureActionAssociation_jm_getMotionGesture_0
    procedure :: jm_setMotionGestures_1 => MotionGestureToMotionGestureActionAssociation_jm_setMotionGestures_1
    procedure :: jm_getCommandAction_0 => MotionGestureToMotionGestureActionAssociation_jm_getCommandAction_0
    procedure :: jm_setMotionGestureAction_1 => MotionGestureToMotionGestureActionAssociation_jm_setMotionGestureAction_1
    procedure :: jm_isMotionGestureArrayEquals_1 => MotionGestureToMotionGestureActionAssociation_jm_isMotionGestureArrayEquals_1
  end type


contains

  function MotionGestureToMotionGestureActionAssociation_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureToMotionGestureActionAssociation), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureToMotionGestureActionAssociation)
      jresult => object
    end select
  end function

  recursive function MotionGestureToMotionGestureActionAssociation_jnew_2(j_list, j_commandAction) result(this)
    class(BasicArrayList), target, optional :: j_list
    class(CompleteMotionGestureInputEvent), target, optional :: j_commandAction
    class(MotionGestureToMotionGestureActionAssociation), pointer :: this
    allocate(this)
    this%jclass = 'MotionGestureToMotionGestureActionAssociation'
    
    
        this%f_list => j_list
        this%f_motionGestureAction => j_commandAction
  end function

  recursive function MotionGestureToMotionGestureActionAssociation_jm_getMotionGesture_0(this) result(jresult)
    class(MotionGestureToMotionGestureActionAssociation), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function

  recursive subroutine MotionGestureToMotionGestureActionAssociation_jm_setMotionGestures_1(this, j_list)
    class(MotionGestureToMotionGestureActionAssociation), target :: this
    class(BasicArrayList), target, optional :: j_list
        this%f_list => j_list
  end subroutine

  recursive function MotionGestureToMotionGestureActionAssociation_jm_getCommandAction_0(this) result(jresult)
    class(MotionGestureToMotionGestureActionAssociation), target :: this
    class(CompleteMotionGestureInputEvent), pointer :: jresult
        jresult => this%f_motionGestureAction
        return
  end function

  recursive subroutine MotionGestureToMotionGestureActionAssociation_jm_setMotionGestureAction_1(this, j_commandAction)
    class(MotionGestureToMotionGestureActionAssociation), target :: this
    class(CompleteMotionGestureInputEvent), target, optional :: j_commandAction
        this%f_motionGestureAction => j_commandAction
  end subroutine

  recursive function MotionGestureToMotionGestureActionAssociation_jm_isMotionGestureArrayEquals_1(this, j_aList) result(jresult)
    class(MotionGestureToMotionGestureActionAssociation), target :: this
    class(BasicArrayList), target, optional :: j_aList
    logical :: jresult
    integer(4) :: j_size
    integer(4) :: j_i
        j_size = j_aList%jm_size_0()
        if ((this%f_list%jm_size_0() /= j_size)) then
            jresult = .false.
            return
        end if
        j_i = (j_size - 1)
        do while ((j_i >= 0))
            if ((j_aList%f_objectArray((j_i) + 1)%v /= this%f_list%f_objectArray((j_i) + 1)%v)) then
                jresult = .false.
                return
            end if
            j_i = j_i - 1
        end do
        jresult = .true.
        return
  end function
end module MotionGestureToMotionGestureActionAssociation_m

