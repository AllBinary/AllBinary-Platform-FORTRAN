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
! package org.allbinary.input.motion.gesture.configuration
module MotionGestureConfiguration_m
  use JR_m
  use CompleteMotionGestureInputEvent_m
  use BasicColor_m
  use BasicColorFactory_m
  use MotionGestureToMotionGestureActionAssociation_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: MotionGestureConfiguration
    logical :: f_diagonalMotionGestureAllowed = .false.
    integer(4) :: f_diagonalTolerance = 0
    integer(4) :: f_minimumMotionGesture = 0
    character(len=:), allocatable :: f_button
    class(BasicColor), pointer :: f_color => null()
    logical :: f_executingActions = .false.
    integer(4) :: f_mouseButtonMask = 0
    class(BasicArrayList), pointer :: f_activeCommands => null()
  contains
    procedure :: jm_addMotionGestureAction_2 => MotionGestureConfiguration_jm_addMotionGestureAction_2
    procedure :: jm_clearMotionGestureAction_0 => MotionGestureConfiguration_jm_clearMotionGestureAction_0
    procedure :: jm_getAssociateCommandActionsList_0 => MotionGestureConfiguration_jm_getAssociateCommandActionsList_0
    procedure :: jm_isDiagonalMotionGestureAllowed_0 => MotionGestureConfiguration_jm_isDiagonalMotionGestureAllowed_0
    procedure :: jm_isExecutingActionsAllowed_0 => MotionGestureConfiguration_jm_isExecutingActionsAllowed_0
    procedure :: jm_setExecutingActionsAllowed_1 => MotionGestureConfiguration_jm_setExecutingActionsAllowed_1
    procedure :: jm_setDiagonalMotionGestureAllowed_1 => MotionGestureConfiguration_jm_setDiagonalMotionGestureAllowed_1
    procedure :: jm_getDiagonalTolerance_0 => MotionGestureConfiguration_jm_getDiagonalTolerance_0
    procedure :: jm_setDiagonalTolerance_1 => MotionGestureConfiguration_jm_setDiagonalTolerance_1
    procedure :: jm_getMinimumMotionGesture_0 => MotionGestureConfiguration_jm_getMinimumMotionGesture_0
    procedure :: jm_setMinimumMotionGesture_1 => MotionGestureConfiguration_jm_setMinimumMotionGesture_1
    procedure :: jm_getButton_0 => MotionGestureConfiguration_jm_getButton_0
    procedure :: jm_setButton_1 => MotionGestureConfiguration_jm_setButton_1
    procedure :: jm_getColor_0 => MotionGestureConfiguration_jm_getColor_0
    procedure :: jm_setColor_1 => MotionGestureConfiguration_jm_setColor_1
    procedure :: jm_getMouseButtonMask_0 => MotionGestureConfiguration_jm_getMouseButtonMask_0
    procedure :: jm_setMouseButtonMask_1 => MotionGestureConfiguration_jm_setMouseButtonMask_1
  end type


contains

  function MotionGestureConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MotionGestureConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MotionGestureConfiguration)
      jresult => object
    end select
  end function

  recursive function MotionGestureConfiguration_jnew_0() result(this)
    class(MotionGestureConfiguration), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(BasicColorFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'MotionGestureConfiguration'
    this%f_button = ''
    this%f_diagonalMotionGestureAllowed = .true.
    this%f_diagonalTolerance = 7
    this%f_minimumMotionGesture = 9
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_button = jtemp1%f_EMPTY_STRING
    jtemp2 => BasicColorFactory_jm_getInstance_0()
    this%f_color => jtemp2%f_BLUE
    this%f_executingActions = .true.
    this%f_mouseButtonMask = 0
    this%f_activeCommands => BasicArrayListD_jnew_0()
        continue
  end function

  recursive subroutine MotionGestureConfiguration_jm_addMotionGestureAction_2(this, j_list, j_commandAction)
    class(MotionGestureConfiguration), target :: this
    class(BasicArrayList), target, optional :: j_list
    class(CompleteMotionGestureInputEvent), target, optional :: j_commandAction
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_activeCommands%jm_add_1(MotionGestureToMotionGestureActionAssociation_jnew_2(j_list, j_commandAction))
  end subroutine

  recursive subroutine MotionGestureConfiguration_jm_clearMotionGestureAction_0(this)
    class(MotionGestureConfiguration), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_activeCommands%jm_clear_0()
  end subroutine

  recursive function MotionGestureConfiguration_jm_getAssociateCommandActionsList_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_activeCommands
        return
  end function

  recursive function MotionGestureConfiguration_jm_isDiagonalMotionGestureAllowed_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    logical :: jresult
        jresult = this%f_diagonalMotionGestureAllowed
        return
  end function

  recursive function MotionGestureConfiguration_jm_isExecutingActionsAllowed_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    logical :: jresult
        jresult = this%f_executingActions
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setExecutingActionsAllowed_1(this, j_executingActionAllowed)
    class(MotionGestureConfiguration), target :: this
    logical, value :: j_executingActionAllowed
        this%f_executingActions = j_executingActionAllowed
  end subroutine

  recursive subroutine MotionGestureConfiguration_jm_setDiagonalMotionGestureAllowed_1(this, j_diagonalMotionGestureAllowed)
    class(MotionGestureConfiguration), target :: this
    logical, value :: j_diagonalMotionGestureAllowed
        this%f_diagonalMotionGestureAllowed = j_diagonalMotionGestureAllowed
  end subroutine

  recursive function MotionGestureConfiguration_jm_getDiagonalTolerance_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_diagonalTolerance
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setDiagonalTolerance_1(this, j_diagonalTolerance)
    class(MotionGestureConfiguration), target :: this
    integer(4), value :: j_diagonalTolerance
        this%f_diagonalTolerance = j_diagonalTolerance
  end subroutine

  recursive function MotionGestureConfiguration_jm_getMinimumMotionGesture_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_minimumMotionGesture
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setMinimumMotionGesture_1(this, j_minimumMotionGesture)
    class(MotionGestureConfiguration), target :: this
    integer(4), value :: j_minimumMotionGesture
        this%f_minimumMotionGesture = j_minimumMotionGesture
  end subroutine

  recursive function MotionGestureConfiguration_jm_getButton_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_button
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setButton_1(this, j_button)
    class(MotionGestureConfiguration), target :: this
    character(len=*), intent(in) :: j_button
        this%f_button = j_button
  end subroutine

  recursive function MotionGestureConfiguration_jm_getColor_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_color
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setColor_1(this, j_color)
    class(MotionGestureConfiguration), target :: this
    class(BasicColor), target, optional :: j_color
        this%f_color => j_color
  end subroutine

  recursive function MotionGestureConfiguration_jm_getMouseButtonMask_0(this) result(jresult)
    class(MotionGestureConfiguration), target :: this
    integer(4) :: jresult
        jresult = this%f_mouseButtonMask
        return
  end function

  recursive subroutine MotionGestureConfiguration_jm_setMouseButtonMask_1(this, j_mouseButtonMask)
    class(MotionGestureConfiguration), target :: this
    integer(4), value :: j_mouseButtonMask
        this%f_mouseButtonMask = j_mouseButtonMask
  end subroutine
end module MotionGestureConfiguration_m

