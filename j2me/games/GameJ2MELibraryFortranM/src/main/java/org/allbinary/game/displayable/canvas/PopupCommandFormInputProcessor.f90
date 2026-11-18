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
! package org.allbinary.game.displayable.canvas
module PopupCommandFormInputProcessor_m
  use JR_m
  use MyCanvas_m
  use ScrollSelectionForm_m
  use MotionGestureEvent_m
  use BasicArrayList_m
  use CommandFormInputProcessor_m
  use PopupMenuInputProcessor_m
  implicit none

  type, extends(CommandFormInputProcessor) :: PopupCommandFormInputProcessor
  contains
    procedure :: jm_processInput_1 => PopupCommandFormInputProcessor_jm_processInput_1
    procedure :: jm_processMotionInput_1 => PopupCommandFormInputProcessor_jm_processMotionInput_1
  end type


contains

  function PopupCommandFormInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PopupCommandFormInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PopupCommandFormInputProcessor)
      jresult => object
    end select
  end function

  recursive function PopupCommandFormInputProcessor_jnew_5(j_gameKeyEventList, j_playerInputId, j_gameCanvas, j_form, j_popupMenuInputProcessor) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    integer(4), value :: j_playerInputId
    class(MyCanvas), target, optional :: j_gameCanvas
    class(ScrollSelectionForm), target, optional :: j_form
    class(PopupMenuInputProcessor), target, optional :: j_popupMenuInputProcessor
    class(PopupCommandFormInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'PopupCommandFormInputProcessor'
        continue ! super()
  end function

  recursive function PopupCommandFormInputProcessor_jm_processInput_1(this, j_key) result(jresult)
    class(PopupCommandFormInputProcessor), target :: this
    integer(4), value :: j_key
    integer(4) :: jresult
        jresult = this%CommandFormInputProcessor%jm_processInput_1(j_key)
        return
  end function

  recursive subroutine PopupCommandFormInputProcessor_jm_processMotionInput_1(this, j_motionGestureEvent)
    class(PopupCommandFormInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%CommandFormInputProcessor%jm_processMotionInput_1(j_motionGestureEvent)
  end subroutine
end module PopupCommandFormInputProcessor_m

