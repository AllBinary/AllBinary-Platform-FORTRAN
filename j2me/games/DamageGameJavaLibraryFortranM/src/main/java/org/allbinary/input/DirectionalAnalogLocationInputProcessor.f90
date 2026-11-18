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
! package org.allbinary.input
module DirectionalAnalogLocationInputProcessor_m
  use JR_m
  use AnalogLocationInputProcessor_m
  use GameInputProcessor_m
  use GameKeyEventSourceInterface_m
  use GameKeyFactory_m
  use AnalogLocationInput_m
  use GameKeyEvent_m
  use GameKeyEventFactory_m
  use CustomGPoint_m
  use AllBinaryLayerManager_m
  use LogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(AnalogLocationInputProcessor) :: DirectionalAnalogLocationInputProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    type(JRef), allocatable :: f_inputProcessorArray(:)
    class(GameKeyFactory), pointer :: f_gameKeyFactory => null()
    class(GameKeyEvent), pointer :: f_leftGameKeyEvent => null()
    class(GameKeyEvent), pointer :: f_rightGameKeyEvent => null()
    class(GameKeyEvent), pointer :: f_upGameKeyEvent => null()
    class(GameKeyEvent), pointer :: f_downGameKeyEvent => null()
    class(GameKeyEvent), pointer :: f_leftTriggerGameKeyEvent => null()
    class(GameKeyEvent), pointer :: f_rightTriggerGameKeyEvent => null()
  contains
    procedure :: jm_process_2 => DirectionalAnalogLocationInputProcessor_jm_process_2
    procedure :: jm_getSourceId_0 => DirectionalAnalogLocationInputProcessor_jm_getSourceId_0
  end type

  ! DirectionalAnalogLocationInputProcessor used as a GameKeyEventSourceInterface
  type, extends(GameKeyEventSourceInterface) :: DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface
    class(DirectionalAnalogLocationInputProcessor), pointer :: jtarget => null()
  contains
    procedure :: jm_getSourceId_0 => DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jm_getSourceId_0
  end type


contains

  function DirectionalAnalogLocationInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionalAnalogLocationInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionalAnalogLocationInputProcessor)
      jresult => object
    end select
  end function

  function DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(object) result(jresult)
    class(DirectionalAnalogLocationInputProcessor), target :: object
    class(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DirectionalAnalogLocationInputProcessor'
    jresult%jtarget => object
  end function

  recursive function DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jm_getSourceId_0(this) result(jresult)
    class(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getSourceId_0()
  end function

  recursive function DirectionalAnalogLocationInputProcessor_jnew_1(j_inputProcessorArray) result(this)
    type(JRef) :: j_inputProcessorArray(:)
    class(DirectionalAnalogLocationInputProcessor), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(GameKeyEventFactory), pointer :: jtemp1
    class(GameKeyEventFactory), pointer :: jtemp2
    class(GameKeyEventFactory), pointer :: jtemp3
    class(GameKeyEventFactory), pointer :: jtemp4
    class(GameKeyEventFactory), pointer :: jtemp5
    class(GameKeyEventFactory), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DirectionalAnalogLocationInputProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
    this%f_leftGameKeyEvent => GameKeyEvent_jstatic_NONE()
    this%f_rightGameKeyEvent => GameKeyEvent_jstatic_NONE()
    this%f_upGameKeyEvent => GameKeyEvent_jstatic_NONE()
    this%f_downGameKeyEvent => GameKeyEvent_jstatic_NONE()
    this%f_leftTriggerGameKeyEvent => GameKeyEvent_jstatic_NONE()
    this%f_rightTriggerGameKeyEvent => GameKeyEvent_jstatic_NONE()
        this%f_inputProcessorArray = j_inputProcessorArray
        continue ! try
            jtemp1 => GameKeyEventFactory_jm_getInstance_0()
            this%f_leftGameKeyEvent => jtemp1%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_LEFT)
            jtemp2 => GameKeyEventFactory_jm_getInstance_0()
            this%f_rightGameKeyEvent => jtemp2%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_RIGHT)
            jtemp3 => GameKeyEventFactory_jm_getInstance_0()
            this%f_upGameKeyEvent => jtemp3%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_UP)
            jtemp4 => GameKeyEventFactory_jm_getInstance_0()
            this%f_downGameKeyEvent => jtemp4%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_DOWN)
            jtemp5 => GameKeyEventFactory_jm_getInstance_0()
            this%f_leftTriggerGameKeyEvent => jtemp5%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_KEY_NUM0)
            jtemp6 => GameKeyEventFactory_jm_getInstance_0()
            this%f_rightTriggerGameKeyEvent => jtemp6%jm_getInstanceForInput_2(DirectionalAnalogLocationInputProcessor_jas_GameKeyEventSourceInterface_jnew(this), this%f_gameKeyFactory%f_KEY_NUM5)
  end function

  recursive subroutine DirectionalAnalogLocationInputProcessor_jm_process_2(this, j_allbinaryLayerManager, j_analogLocationInput)
    class(DirectionalAnalogLocationInputProcessor), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(AnalogLocationInput), target, optional :: j_analogLocationInput
    class(CustomGPoint), pointer :: j_customGPoint
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_leftTrigger
    integer(4) :: j_rightTrigger
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            continue
            j_customGPoint => j_analogLocationInput%jm_getCustomGPoint_0()
            j_x = j_customGPoint%jm_getX_0()
            j_y = j_customGPoint%jm_getY_0()
            j_leftTrigger = j_analogLocationInput%jm_getLeftTrigger_0()
            j_rightTrigger = j_analogLocationInput%jm_getRightTrigger_0()
            if ((j_x < 0)) then
                associate (jstaticref1 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_leftGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref1%jm_processAnalog_3(j_allbinaryLayerManager, this%f_leftGameKeyEvent, j_x)
                end associate
            else if ((j_x > 0)) then
                associate (jstaticref2 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_rightGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref2%jm_processAnalog_3(j_allbinaryLayerManager, this%f_rightGameKeyEvent, j_x)
                end associate
            end if
            if ((j_y < 0)) then
                associate (jstaticref3 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_downGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref3%jm_processAnalog_3(j_allbinaryLayerManager, this%f_downGameKeyEvent, j_y)
                end associate
            else if ((j_y > 0)) then
                associate (jstaticref4 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_upGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref4%jm_processAnalog_3(j_allbinaryLayerManager, this%f_upGameKeyEvent, j_y)
                end associate
            end if
            if ((j_leftTrigger > 0)) then
                associate (jstaticref5 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_leftTriggerGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref5%jm_processAnalog_3(j_allbinaryLayerManager, this%f_leftTriggerGameKeyEvent, j_leftTrigger)
                end associate
            end if
            if ((j_rightTrigger > 0)) then
                associate (jstaticref6 => GameInputProcessor_jcast(this%f_inputProcessorArray((this%f_rightTriggerGameKeyEvent%jm_getKey_0()) + 1)%v))
                call jstaticref6%jm_processAnalog_3(j_allbinaryLayerManager, this%f_rightTriggerGameKeyEvent, j_rightTrigger)
                end associate
            end if
  end subroutine

  recursive function DirectionalAnalogLocationInputProcessor_jm_getSourceId_0(this) result(jresult)
    class(DirectionalAnalogLocationInputProcessor), target :: this
    integer(4) :: jresult
        jresult = 0
        return
  end function
end module DirectionalAnalogLocationInputProcessor_m

