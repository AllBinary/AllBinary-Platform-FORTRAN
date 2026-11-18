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
! package org.allbinary.game.ag.ai
module DiveAndDirectionalTrackingAI_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use Direction_m
  use DirectionFactory_m
  use DirectionalCompositeInterface_m
  use DirectionalInterface_m
  use BasicAI_m
  use DestroyedEvent_m
  use DestroyedEventHandler_m
  use DestroyedEventListenerInterface_m
  use Group_m
  use GameInput_m
  use BasicVelocityProperties_m
  use VelocityInterfaceCompositeInterface_m
  use TrackingEvent_m
  use TrackingEventHandler_m
  use TrackingEventListenerInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use ForcedLogUtil_m
  use MathUtil_m
  use StringMaker_m
  use StringUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use Visitor_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(BasicAI) :: DiveAndDirectionalTrackingAI
    class(MathUtil), pointer :: f_mathUtil => null()
    class(DirectionFactory), pointer :: f_directionFactory => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(BasicArrayList), pointer :: f_list => null()
    class(DirectionalInterface), pointer :: f_directionalInterface => null()
    class(BasicVelocityProperties), pointer :: f_velocityInterface => null()
    integer(4), allocatable :: f_directionToKeyMap(:)
    logical :: f_initialDropped = .false.
    logical :: f_diveP = .false.
    class(Direction), pointer :: f_directionOfTarget => null()
    integer(4) :: f_MIN_DISTANCE = 0
    class(AllBinaryLayer), pointer :: f_lastTrackingLayerInterface => null()
    class(ArtificialIntelligenceInterface), pointer :: f_artificialIntelligenceInterface => null()
    class(Visitor), pointer :: f_aiVistor => null()
    class(Direction), pointer :: f_lastDirection => null()
  contains
    procedure :: jm_processAI_1 => DiveAndDirectionalTrackingAI_jm_processAI_1
    procedure :: jm_init_0 => DiveAndDirectionalTrackingAI_jm_init_0
    procedure :: jm_target_1 => DiveAndDirectionalTrackingAI_jm_target_1
    procedure :: jm_verticalTargeting_1 => DiveAndDirectionalTrackingAI_jm_verticalTargeting_1
    procedure :: jm_horizontalTargeting_1 => DiveAndDirectionalTrackingAI_jm_horizontalTargeting_1
    procedure :: jm_setDive_0 => DiveAndDirectionalTrackingAI_jm_setDive_0
    procedure :: jm_moveRight_0 => DiveAndDirectionalTrackingAI_jm_moveRight_0
    procedure :: jm_moveLeft_0 => DiveAndDirectionalTrackingAI_jm_moveLeft_0
    procedure :: jm_moveDown_0 => DiveAndDirectionalTrackingAI_jm_moveDown_0
    procedure :: jm_moveUp_0 => DiveAndDirectionalTrackingAI_jm_moveUp_0
    procedure :: jm_dive_0 => DiveAndDirectionalTrackingAI_jm_dive_0
    procedure :: jm_attack_0 => DiveAndDirectionalTrackingAI_jm_attack_0
    procedure :: jm_drop_0 => DiveAndDirectionalTrackingAI_jm_drop_0
    procedure :: jm_isBeyondTarget_0 => DiveAndDirectionalTrackingAI_jm_isBeyondTarget_0
    procedure :: jm_onEvent_1 => DiveAndDirectionalTrackingAI_jm_onEvent_1
    procedure :: jm_onMovement_1 => DiveAndDirectionalTrackingAI_jm_onMovement_1
    procedure :: jm_onDestroyed_1 => DiveAndDirectionalTrackingAI_jm_onDestroyed_1
    procedure :: jm_setLastDirection_1 => DiveAndDirectionalTrackingAI_jm_setLastDirection_1
    procedure :: jm_setLastKey_1 => DiveAndDirectionalTrackingAI_jm_setLastKey_1
    procedure :: jm_getLastDirection_0 => DiveAndDirectionalTrackingAI_jm_getLastDirection_0
    procedure :: jm_toString_0 => DiveAndDirectionalTrackingAI_jm_toString_0
  end type

  ! DiveAndDirectionalTrackingAI used as a TrackingEventListenerInterface
  type, extends(TrackingEventListenerInterface) :: DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface
    class(DiveAndDirectionalTrackingAI), pointer :: jtarget => null()
  contains
    procedure :: jm_onMovement_1 => DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface_jm_onMovement_1
  end type

  ! DiveAndDirectionalTrackingAI used as a DestroyedEventListenerInterface
  type, extends(DestroyedEventListenerInterface) :: DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface
    class(DiveAndDirectionalTrackingAI), pointer :: jtarget => null()
  contains
    procedure :: jm_onDestroyed_1 => DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface_jm_onDestroyed_1
  end type


contains

  function DiveAndDirectionalTrackingAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DiveAndDirectionalTrackingAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DiveAndDirectionalTrackingAI)
      jresult => object
    end select
  end function

  function DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface_jnew(object) result(jresult)
    class(DiveAndDirectionalTrackingAI), target :: object
    class(DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DiveAndDirectionalTrackingAI'
    jresult%jtarget => object
  end function

  recursive subroutine DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface_jm_onMovement_1(this, j_trackingEvent)
    class(DiveAndDirectionalTrackingAI_jas_TrackingEventListenerInterface), target :: this
    class(TrackingEvent), target, optional :: j_trackingEvent
    call this%jtarget%jm_onMovement_1(j_trackingEvent)
  end subroutine

  function DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface_jnew(object) result(jresult)
    class(DiveAndDirectionalTrackingAI), target :: object
    class(DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'DiveAndDirectionalTrackingAI'
    jresult%jtarget => object
  end function

  recursive subroutine DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface_jm_onDestroyed_1(this, j_destroyedEvent)
    class(DiveAndDirectionalTrackingAI_jas_DestroyedEventListenerInterface), target :: this
    class(DestroyedEvent), target, optional :: j_destroyedEvent
    call this%jtarget%jm_onDestroyed_1(j_destroyedEvent)
  end subroutine

  recursive function DiveAndDirectionalTrackingAI_jnew_4(j_ownerLayerInterface, j_artificialIntelligenceInterface, j_gameInput, j_visitor) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(ArtificialIntelligenceInterface), target, optional :: j_artificialIntelligenceInterface
    class(GameInput), target, optional :: j_gameInput
    class(Visitor), target, optional :: j_visitor
    class(DiveAndDirectionalTrackingAI), pointer :: this
    class(DirectionalCompositeInterface), pointer :: j_directionalCompositeInterface
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(DestroyedEventHandler), pointer :: jtemp2
    class(DirectionFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'DiveAndDirectionalTrackingAI'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
    this%f_directionFactory => DirectionFactory_jm_getInstance_0()
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(500)
    this%f_list => BasicArrayListD_jnew_0()
    
    
    this%f_directionToKeyMap = [integer(4) :: Canvas_jstatic_LEFT(), Canvas_jstatic_DOWN(), Canvas_jstatic_UP(), Canvas_jstatic_RIGHT()]
    
    
    this%f_directionOfTarget => Direction_jm_getInstance_1(0)
    this%f_MIN_DISTANCE = 40
    this%f_lastTrackingLayerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
    
    
    jtemp1 => DirectionFactory_jm_getInstance_0()
    this%f_lastDirection => jtemp1%f_NO_DIRECTION
        continue ! super()
        this%f_aiVistor => j_visitor
        this%f_artificialIntelligenceInterface => j_artificialIntelligenceInterface
        j_directionalCompositeInterface => DirectionalCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_directionalInterface => j_directionalCompositeInterface%jm_getDirectionalInterface_0()
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        this%f_velocityInterface => j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0()
        jtemp2 => DestroyedEventHandler_jm_getInstance_0()
        call jtemp2%jm_addListenerInterface_1(this)
        call this%jm_init_0()
  end function

  recursive subroutine DiveAndDirectionalTrackingAI_jm_processAI_1(this, j_layerManager)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%jm_isBeyondTarget_0()) then
            call this%jm_init_0()
            call this%f_velocityInterface%jm_zero_0()
        end if
        if ((.not. this%f_diveP)) then
            call this%jm_target_1(j_layerManager)
        else
            call this%jm_dive_0()
            call this%jm_attack_0()
        end if
        call this%f_list%jm_clear_0()
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_init_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(DirectionFactory), pointer :: jtemp3
    class(TrackingEventHandler), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_diveP = .false.
        jtemp3 => DirectionFactory_jm_getInstance_0()
        this%f_directionOfTarget => jtemp3%f_NOT_BORDERED_WITH
        jtemp4 => TrackingEventHandler_jm_getInstance_0()
        call jtemp4%jm_addListenerInterface_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_target_1(this, j_allBinaryLayerManager)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(TrackingEvent), pointer :: j_lastTrackingEvent
    class(AllBinaryLayer), pointer :: j_layerInterface
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    type(JRef), allocatable :: j_groupArray(:)
    type(JRef), allocatable :: j_ownerGroupArray(:)
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_yDistance
    integer(4) :: j_xDistance
    class(DirectionFactory), pointer :: j_directionFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_list%jm_size_0() == 0)) then
            return
        end if
        j_lastTrackingEvent => TrackingEvent_jcast(this%f_list%jm_removeAt_1(0))
        this%f_lastTrackingLayerInterface => j_lastTrackingEvent%jm_getLayerInterface_0()
        j_layerInterface => this%f_lastTrackingLayerInterface
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_groupArray = j_layerInterface%jm_getGroupInterface_0()
        j_ownerGroupArray = j_ownerLayerInterface%jm_getGroupInterface_0()
        if ((j_groupArray == j_ownerGroupArray)) then
            return
        end if
        j_x = this%f_lastTrackingLayerInterface%jm_getXP_0()
        j_y = this%f_lastTrackingLayerInterface%jm_getYP_0()
        j_yDistance = ((j_ownerLayerInterface%jm_getYP_0() - j_y) - j_ownerLayerInterface%jm_getHeight_0())
        j_xDistance = ((j_ownerLayerInterface%jm_getXP_0() - j_x) - j_ownerLayerInterface%jm_getWidth_0())
        j_directionFactory => DirectionFactory_jm_getInstance_0()
        if ((this%f_mathUtil%jm_abs_1(j_yDistance) > this%f_mathUtil%jm_abs_1(j_xDistance))) then
            if ((j_yDistance > this%f_MIN_DISTANCE)) then
                this%f_directionOfTarget => j_directionFactory%f_UP
            else if ((j_yDistance < (-this%f_MIN_DISTANCE))) then
                this%f_directionOfTarget => j_directionFactory%f_DOWN
            end if
        else
            if ((j_xDistance > this%f_MIN_DISTANCE)) then
                this%f_directionOfTarget => j_directionFactory%f_LEFT
            else if ((j_xDistance < (-this%f_MIN_DISTANCE))) then
                this%f_directionOfTarget => j_directionFactory%f_RIGHT
            end if
        end if
        if (((.not. this%f_initialDropped) .and. (.not. JR_same(this%f_directionOfTarget, j_directionFactory%f_NOT_BORDERED_WITH)))) then
            call this%jm_drop_0()
        end if
        if (this%f_initialDropped) then
            if ((JR_same(this%f_directionOfTarget, j_directionFactory%f_UP) .or. JR_same(this%f_directionOfTarget, j_directionFactory%f_DOWN))) then
                call this%jm_verticalTargeting_1(j_x)
            else if ((JR_same(this%f_directionOfTarget, j_directionFactory%f_LEFT) .or. JR_same(this%f_directionOfTarget, j_directionFactory%f_RIGHT))) then
                call this%jm_horizontalTargeting_1(j_y)
            else
                call this%f_artificialIntelligenceInterface%jm_processAI_1(j_allBinaryLayerManager)
            end if
        end if
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_verticalTargeting_1(this, j_x)
    class(DiveAndDirectionalTrackingAI), target :: this
    integer(4), value :: j_x
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        if ((j_ownerLayerInterface%jm_getXP_0() < j_x)) then
            call this%jm_moveRight_0()
        end if
        if ((j_ownerLayerInterface%jm_getXP_0() > j_x)) then
            call this%jm_moveLeft_0()
        end if
        if (((j_ownerLayerInterface%jm_getXP_0() > (j_x - 3)) .and. (j_ownerLayerInterface%jm_getXP_0() < (j_x + 3)))) then
            call this%jm_setDive_0()
        end if
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_horizontalTargeting_1(this, j_y)
    class(DiveAndDirectionalTrackingAI), target :: this
    integer(4), value :: j_y
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        if ((j_ownerLayerInterface%jm_getYP_0() < j_y)) then
            call this%jm_moveDown_0()
        end if
        if ((j_ownerLayerInterface%jm_getYP_0() > j_y)) then
            call this%jm_moveUp_0()
        end if
        if (((j_ownerLayerInterface%jm_getYP_0() > (j_y - 3)) .and. (j_ownerLayerInterface%jm_getYP_0() < (j_y + 3)))) then
            call this%jm_setDive_0()
        end if
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_setDive_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(TrackingEventHandler), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_diveP = .true.
        call this%f_velocityInterface%jm_zero_0()
        jtemp5 => TrackingEventHandler_jm_getInstance_0()
        call jtemp5%jm_removeListener_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_moveRight_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setLastDirection_1(this%f_directionFactory%f_RIGHT)
        call this%f_directionalInterface%jm_setFrameByDirection_1(this%f_lastDirection)
        jdiscardRef => this%f_aiVistor%jm_visit_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_moveLeft_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setLastDirection_1(this%f_directionFactory%f_LEFT)
        call this%f_directionalInterface%jm_setFrameByDirection_1(this%f_lastDirection)
        jdiscardRef => this%f_aiVistor%jm_visit_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_moveDown_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setLastDirection_1(this%f_directionFactory%f_DOWN)
        call this%f_directionalInterface%jm_setFrameByDirection_1(this%f_lastDirection)
        jdiscardRef => this%f_aiVistor%jm_visit_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_moveUp_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setLastDirection_1(this%f_directionFactory%f_UP)
        call this%f_directionalInterface%jm_setFrameByDirection_1(this%f_lastDirection)
        jdiscardRef => this%f_aiVistor%jm_visit_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_dive_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_directionalInterface%jm_setFrameByDirection_1(this%f_directionOfTarget)
        jdiscardRef => this%f_aiVistor%jm_visit_1(this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_attack_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_drop_0(this)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_timeDelayHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
            this%f_initialDropped = .true.
            jdiscardRef => this%f_aiVistor%jm_visit_1(this)
        end if
  end subroutine

  recursive function DiveAndDirectionalTrackingAI_jm_isBeyondTarget_0(this) result(jresult)
    class(DiveAndDirectionalTrackingAI), target :: this
    logical :: jresult
    class(AllBinaryLayer), pointer :: jtemp6
    class(AllBinaryLayer), pointer :: jtemp7
    class(AllBinaryLayer), pointer :: jtemp8
    class(AllBinaryLayer), pointer :: jtemp9
        if (JR_same(this%f_directionOfTarget, this%f_directionFactory%f_DOWN)) then
            jtemp9 => this%jm_getOwnerLayerInterface_0()
            if ((jtemp9%jm_getYP_0() > (this%f_lastTrackingLayerInterface%jm_getYP_0() + this%f_MIN_DISTANCE))) then
                jresult = .true.
                return
            else
                jresult = .false.
                return
            end if
        else if (JR_same(this%f_directionOfTarget, this%f_directionFactory%f_UP)) then
            jtemp8 => this%jm_getOwnerLayerInterface_0()
            if ((jtemp8%jm_getYP_0() < (this%f_lastTrackingLayerInterface%jm_getYP_0() + this%f_MIN_DISTANCE))) then
                jresult = .true.
                return
            else
                jresult = .false.
                return
            end if
        else if (JR_same(this%f_directionOfTarget, this%f_directionFactory%f_RIGHT)) then
            jtemp7 => this%jm_getOwnerLayerInterface_0()
            if ((jtemp7%jm_getXP_0() > (this%f_lastTrackingLayerInterface%jm_getXP_0() + this%f_MIN_DISTANCE))) then
                jresult = .true.
                return
            else
                jresult = .false.
                return
            end if
        else if (JR_same(this%f_directionOfTarget, this%f_directionFactory%f_LEFT)) then
            jtemp6 => this%jm_getOwnerLayerInterface_0()
            if ((jtemp6%jm_getXP_0() < (this%f_lastTrackingLayerInterface%jm_getXP_0() + this%f_MIN_DISTANCE))) then
                jresult = .true.
                return
            else
                jresult = .false.
                return
            end if
        else
            jresult = .false.
            return
        end if
  end function

  recursive subroutine DiveAndDirectionalTrackingAI_jm_onEvent_1(this, j_eventObject)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp10
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp10 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp10%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_onMovement_1(this, j_trackingEvent)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(TrackingEvent), target, optional :: j_trackingEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_trackingEvent)
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_onDestroyed_1(this, j_destroyedEvent)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(DestroyedEvent), target, optional :: j_destroyedEvent
    class(TrackingEventHandler), pointer :: jtemp11
    class(DestroyedEventHandler), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_getOwnerLayerInterface_0() == j_destroyedEvent%jm_getLayerInterface_0())) then
            jtemp11 => TrackingEventHandler_jm_getInstance_0()
            call jtemp11%jm_removeListener_1(this)
            jtemp12 => DestroyedEventHandler_jm_getInstance_0()
            call jtemp12%jm_removeListener_1(this)
        end if
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_setLastDirection_1(this, j_lastDirection)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(Direction), target, optional :: j_lastDirection
    integer(4) :: j_value
    class(Direction), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_lastDirection => j_lastDirection
        jtemp13 => this%jm_getLastDirection_0()
        j_value = jtemp13%jm_getValue_0()
        if ((j_value < 4)) then
            call this%BasicAI%jm_setLastKey_1(this%f_directionToKeyMap((j_value) + 1))
        end if
  end subroutine

  recursive subroutine DiveAndDirectionalTrackingAI_jm_setLastKey_1(this, j_lastKey)
    class(DiveAndDirectionalTrackingAI), target :: this
    integer(4), value :: j_lastKey
    class(DirectionFactory), pointer :: jtemp14
    class(DirectionFactory), pointer :: jtemp15
    class(DirectionFactory), pointer :: jtemp16
    class(DirectionFactory), pointer :: jtemp17
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicAI%jm_setLastKey_1(j_lastKey)
        if ((this%jm_getLastKey_0() == Canvas_jstatic_LEFT())) then
            jtemp17 => DirectionFactory_jm_getInstance_0()
            this%f_lastDirection => jtemp17%f_LEFT
        else if ((this%jm_getLastKey_0() == Canvas_jstatic_DOWN())) then
            jtemp16 => DirectionFactory_jm_getInstance_0()
            this%f_lastDirection => jtemp16%f_DOWN
        else if ((this%jm_getLastKey_0() == Canvas_jstatic_UP())) then
            jtemp15 => DirectionFactory_jm_getInstance_0()
            this%f_lastDirection => jtemp15%f_UP
        else if ((this%jm_getLastKey_0() == Canvas_jstatic_RIGHT())) then
            jtemp14 => DirectionFactory_jm_getInstance_0()
            this%f_lastDirection => jtemp14%f_RIGHT
        end if
  end subroutine

  recursive function DiveAndDirectionalTrackingAI_jm_getLastDirection_0(this) result(jresult)
    class(DiveAndDirectionalTrackingAI), target :: this
    class(Direction), pointer :: jresult
        jresult => this%f_lastDirection
        return
  end function

  recursive function DiveAndDirectionalTrackingAI_jm_toString_0(this) result(jresult)
    class(DiveAndDirectionalTrackingAI), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%BasicAI%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' LastDirection: ')
        jtemp18 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp18%jm_toString_1(this%jm_getLastDirection_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module DiveAndDirectionalTrackingAI_m

