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
module CommandFormInputProcessor_m
  use JR_m
  use GameCommandsFactory_m
  use Features_m
  use InputFeatureFactory_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use SWTUtil_m
  use GPoint_m
  use MyCanvas_m
  use CommandCurrentSelectionForm_m
  use ScrollSelectionForm_m
  use OpenGLFeatureFactory_m
  use MotionGestureInput_m
  use TouchMotionGestureFactory_m
  use MotionGestureEvent_m
  use StringMaker_m
  use PrimaryPlayerQueueFactory_m
  use SelectSound_m
  use PrimaryThreadPool_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use BasicMenuInputProcessor_m
  use CommandRunnable_m
  implicit none

  type, extends(BasicMenuInputProcessor) :: CommandFormInputProcessor
    integer(4) :: f_MOTION_GESTURE_SOURCE_ID = 0
    integer(4) :: f_CLICK_DELAY = 0
    class(TimeDelayHelper), pointer :: f_clickTimeHelper => null()
    integer(4) :: f_DOUBLE_CLICK_DELAY = 0
    class(TimeDelayHelper), pointer :: f_doubleClickTimeHelper => null()
    logical :: f_isSingleKeyProcessing = .false.
    class(ScrollSelectionForm), pointer :: f_form => null()
    logical :: f_hasPressed = .false.
    character(len=:), allocatable :: f_PROCESS_COMMAND
    character(len=:), allocatable :: f_NAME_LABEL
  contains
    procedure :: jm_processInput_1 => CommandFormInputProcessor_jm_processInput_1
    procedure :: jm_processCommand_0 => CommandFormInputProcessor_jm_processCommand_0
    procedure :: jm_processInputList_0 => CommandFormInputProcessor_jm_processInputList_0
    procedure :: jm_processMotionInputs_0 => CommandFormInputProcessor_jm_processMotionInputs_0
    procedure :: jm_processMotionInput_1 => CommandFormInputProcessor_jm_processMotionInput_1
    procedure :: jm_toString_0 => CommandFormInputProcessor_jm_toString_0
  end type


contains

  function CommandFormInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommandFormInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommandFormInputProcessor)
      jresult => object
    end select
  end function

  recursive function CommandFormInputProcessor_jnew_4(j_gameKeyEventList, j_playerInputId, j_gameCanvas, j_form) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    integer(4), value :: j_playerInputId
    class(MyCanvas), target, optional :: j_gameCanvas
    class(ScrollSelectionForm), target, optional :: j_form
    class(CommandFormInputProcessor), pointer :: this
    class(GameKeyEventFactory), pointer :: jtemp1
    class(InputFeatureFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'CommandFormInputProcessor'
    this%f_PROCESS_COMMAND = ''
    this%f_NAME_LABEL = ''
    jtemp1 => GameKeyEventFactory_jm_getInstance_0()
    this%f_MOTION_GESTURE_SOURCE_ID = jtemp1%f_MOTION_GESTURE_SOURCE_ID
    this%f_CLICK_DELAY = 150
    this%f_clickTimeHelper => TimeDelayHelper_jnew_1(this%f_CLICK_DELAY)
    this%f_DOUBLE_CLICK_DELAY = 1200
    this%f_doubleClickTimeHelper => TimeDelayHelper_jnew_1(this%f_DOUBLE_CLICK_DELAY)
    jtemp2 => InputFeatureFactory_jm_getInstance_0()
    this%f_isSingleKeyProcessing = jtemp2%jm_isSingleKeyProcessing_0()
    
    this%f_hasPressed = .false.
    this%f_PROCESS_COMMAND = 'processCommand'
    this%f_NAME_LABEL = ' ScrollSelectionForm: '
        continue ! super()
        this%f_form => j_form
  end function

  recursive function CommandFormInputProcessor_jm_processInput_1(this, j_key) result(jresult)
    class(CommandFormInputProcessor), target :: this
    integer(4), value :: j_key
    integer(4) :: jresult
    class(PrimaryPlayerQueueFactory), pointer :: jtemp3
    class(PrimaryPlayerQueueFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (((((j_key == Canvas_jstatic_LEFT()) .or. (j_key == Canvas_jstatic_RIGHT())) .or. (j_key == Canvas_jstatic_UP())) .or. (j_key == Canvas_jstatic_DOWN()))) then
            jtemp4 => PrimaryPlayerQueueFactory_jm_getInstance_0()
            jdiscardBoolean = jtemp4%jm_add_1(SelectSound_jm_getInstance_0())
            jdiscardInt = this%f_form%jm_processInputKey_1(j_key)
            jresult = 1
            return
        else if ((j_key == Canvas_jstatic_FIRE())) then
            jtemp3 => PrimaryPlayerQueueFactory_jm_getInstance_0()
            jdiscardBoolean = jtemp3%jm_add_1(SelectSound_jm_getInstance_0())
            jresult = this%jm_processCommand_0()
            return
        end if
        jresult = 0
        return
  end function

  recursive function CommandFormInputProcessor_jm_processCommand_0(this) result(jresult)
    class(CommandFormInputProcessor), target :: this
    integer(4) :: jresult
    class(CommandCurrentSelectionForm), pointer :: j_commandCurrentSelectionForm
    class(Command), pointer :: j_command
    class(Features), pointer :: j_features
    class(OpenGLFeatureFactory), pointer :: j_openGLFeatureFactory
    class(GameCommandsFactory), pointer :: jtemp5
    class(PrimaryThreadPool), pointer :: jtemp6
    class(CommandRunnable), pointer :: jtemp7
    class(GameCommandsFactory), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commandCurrentSelectionForm => CommandCurrentSelectionForm_jcast(this%f_form)
        j_command => j_commandCurrentSelectionForm%jm_getSelectedCommand_0()
        call this%f_logUtil%jm_putF_3(j_command%jm_toString_0(), this, this%f_PROCESS_COMMAND)
        j_features => Features_jm_getInstance_0()
        j_openGLFeatureFactory => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp5 => GameCommandsFactory_jm_getInstance_0()
        if (((SWTUtil_jstatic_isSWT() .and. j_features%jm_isFeature_1(j_openGLFeatureFactory%f_OPENGL)) .and. (.not. JR_same(j_command, jtemp5%f_EXIT_COMMAND)))) then
            jtemp7 => CommandRunnable_jnew_2(this, j_command)
            call jtemp7%jm_run_0()
        else
            jtemp6 => PrimaryThreadPool_jm_getInstance_0()
            call jtemp6%jm_runTask_1(CommandRunnable_jnew_2(this, j_command))
        end if
        jtemp8 => GameCommandsFactory_jm_getInstance_0()
        if (JR_same(j_command, jtemp8%f_QUIT_COMMAND)) then
            jresult = (-1)
            return
        else
            jresult = 1
            return
        end if
  end function

  recursive function CommandFormInputProcessor_jm_processInputList_0(this) result(jresult)
    class(CommandFormInputProcessor), target :: this
    integer(4) :: jresult
    integer(4) :: j_motionInputsIndex
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    integer(4) :: j_key
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_motionInputsIndex = this%jm_processMotionInputs_0()
            j_list => this%jm_getGameKeyEventList_0()
            j_size = j_list%jm_size_0()
            j_key = 0
            continue
            j_index = 0
            do while ((j_index < j_size))
                j_gameKeyEvent => GameKeyEvent_jcast(j_list%f_objectArray((j_index) + 1)%v)
                j_key = j_gameKeyEvent%jm_getKey_0()
                if ((j_gameKeyEvent%jm_getSourceId_0() /= this%f_MOTION_GESTURE_SOURCE_ID)) then
                    if ((this%jm_processInput_1(j_key) == 1)) then
                        exit
                    end if
                end if
                j_index = j_index + 1
            end do
            call this%jm_clear_0()
            if (((j_size > 0) .or. (j_motionInputsIndex >= 0))) then
                jresult = 1
                return
            else
                jresult = (-1)
                return
            end if
  end function

  recursive function CommandFormInputProcessor_jm_processMotionInputs_0(this) result(jresult)
    class(CommandFormInputProcessor), target :: this
    integer(4) :: jresult
    integer(4) :: j_lastIndex
    class(MotionGestureEvent), pointer :: j_motionGestureEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_lastIndex = (this%f_motionGestureEventList%jm_size_0() - 1)
        if ((j_lastIndex >= 0)) then
            j_motionGestureEvent => MotionGestureEvent_jcast(this%f_motionGestureEventList%f_objectArray((j_lastIndex) + 1)%v)
            call this%jm_processMotionInput_1(j_motionGestureEvent)
        end if
        call this%f_motionGestureEventList%jm_clear_0()
        jresult = j_lastIndex
        return
  end function

  recursive subroutine CommandFormInputProcessor_jm_processMotionInput_1(this, j_motionGestureEvent)
    class(CommandFormInputProcessor), target :: this
    class(MotionGestureEvent), target, optional :: j_motionGestureEvent
    class(TouchMotionGestureFactory), pointer :: j_touchMotionGestureFactory
    class(MotionGestureInput), pointer :: j_motionGestureInput
    class(GPoint), pointer :: j_point
    integer(4) :: j_index
    class(PrimaryPlayerQueueFactory), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_touchMotionGestureFactory => TouchMotionGestureFactory_jm_getInstance_0()
        j_motionGestureInput => j_motionGestureEvent%jm_getMotionGesture_0()
        if (JR_same(j_motionGestureInput, j_touchMotionGestureFactory%f_RELEASED)) then
            j_point => j_motionGestureEvent%jm_getCurrentPoint_0()
            if (this%f_form%jm_isInForm_1(j_point)) then
                j_index = this%f_form%jm_getSelectedIndexForPoint_1(j_point)
                if ((j_index /= (-1))) then
                    jtemp9 => PrimaryPlayerQueueFactory_jm_getInstance_0()
                    jdiscardBoolean = jtemp9%jm_add_1(SelectSound_jm_getInstance_0())
                    if ((j_index == this%f_form%jm_getSelectedIndex_0())) then
                        if (this%f_clickTimeHelper%jm_isTimeTNT_0()) then
                            jdiscardInt = this%jm_processCommand_0()
                        end if
                    else
                        call this%f_form%jm_setSelectedIndex_1(j_index)
                    end if
                else
                    continue
                end if
            end if
            if (this%f_hasPressed) then
                if ((.not. this%f_doubleClickTimeHelper%jm_isTimeTNT_0())) then
                    call this%f_logUtil%jm_putF_3('Double Press', this, this%f_gameInputStrings%f_PROCESS_MOTION_INPUT)
                    jdiscardInt = this%jm_processCommand_0()
                end if
                this%f_doubleClickTimeHelper%f_delay = this%f_DOUBLE_CLICK_DELAY
                call this%f_doubleClickTimeHelper%jm_setStartTimeTNT_0()
            end if
            this%f_hasPressed = .false.
        else if (JR_same(j_motionGestureInput, j_touchMotionGestureFactory%f_PRESSED)) then
            this%f_doubleClickTimeHelper%f_delay = 0
            this%f_hasPressed = .true.
        end if
  end subroutine

  recursive function CommandFormInputProcessor_jm_toString_0(this) result(jresult)
    class(CommandFormInputProcessor), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
        jtemp13 => StringMaker_jnew_0()
        jtemp12 => jtemp13%jm_append_1(this%BasicMenuInputProcessor%jm_toString_0())
        jtemp11 => jtemp12%jm_append_1(this%f_NAME_LABEL)
        jtemp10 => jtemp11%jm_append_1(this%f_form%jm_toString_0())
        jresult = jtemp10%jm_toString_0()
        return
  end function
end module CommandFormInputProcessor_m

