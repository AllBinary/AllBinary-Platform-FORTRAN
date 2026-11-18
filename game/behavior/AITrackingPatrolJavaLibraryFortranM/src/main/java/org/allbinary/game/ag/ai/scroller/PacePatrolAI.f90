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
! package org.allbinary.game.ag.ai.scroller
module PacePatrolAI_m
  use JR_m
  use Direction_m
  use DirectionCompositeInterface_m
  use DirectionFactory_m
  use GameInput_m
  use TrackingEvent_m
  use TrackingEventHandler_m
  use TrackingEventListenerInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LayerInterface_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasePatrolAI_m
  implicit none

  type, extends(BasePatrolAI) :: PacePatrolAI
    class(BasicArrayList), pointer :: f_trackingList => null()
    integer(4) :: f_firingDistance = 0
    logical :: f_isFollowLimitedByTerrain = .false.
  contains
    procedure :: jm_processAI_1 => PacePatrolAI_jm_processAI_1
    procedure :: jm_setFiringDirectionForTargetIfInRange_0 => PacePatrolAI_jm_setFiringDirectionForTargetIfInRange_0
    procedure :: jm_disable_0 => PacePatrolAI_jm_disable_0
    procedure :: jm_onEvent_1 => PacePatrolAI_jm_onEvent_1
    procedure :: jm_onMovement_1 => PacePatrolAI_jm_onMovement_1
    procedure :: jm_getFiringDistance_0 => PacePatrolAI_jm_getFiringDistance_0
    procedure :: jm_setFiringDistance_1 => PacePatrolAI_jm_setFiringDistance_1
  end type

  ! PacePatrolAI used as a TrackingEventListenerInterface
  type, extends(TrackingEventListenerInterface) :: PacePatrolAI_jas_TrackingEventListenerInterface
    class(PacePatrolAI), pointer :: jtarget => null()
  contains
    procedure :: jm_onMovement_1 => PacePatrolAI_jas_TrackingEventListenerInterface_jm_onMovement_1
  end type


contains

  function PacePatrolAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PacePatrolAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PacePatrolAI)
      jresult => object
    end select
  end function

  function PacePatrolAI_jas_TrackingEventListenerInterface_jnew(object) result(jresult)
    class(PacePatrolAI), target :: object
    class(PacePatrolAI_jas_TrackingEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'PacePatrolAI'
    jresult%jtarget => object
  end function

  recursive subroutine PacePatrolAI_jas_TrackingEventListenerInterface_jm_onMovement_1(this, j_trackingEvent)
    class(PacePatrolAI_jas_TrackingEventListenerInterface), target :: this
    class(TrackingEvent), target, optional :: j_trackingEvent
    call this%jtarget%jm_onMovement_1(j_trackingEvent)
  end subroutine

  recursive function PacePatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(PacePatrolAI), pointer :: this
    class(TrackingEventHandler), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'PacePatrolAI'
    
    
    this%f_isFollowLimitedByTerrain = .false.
        continue ! super()
        jtemp1 => TrackingEventHandler_jm_getInstance_0()
        call jtemp1%jm_addListenerInterface_1(this)
        this%f_trackingList => BasicArrayListD_jnew_0()
  end function

  recursive subroutine PacePatrolAI_jm_processAI_1(this, j_layerManager)
    class(PacePatrolAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(Direction), pointer :: j_direction
    class(DirectionFactory), pointer :: j_directionFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_update_0()
        j_direction => this%jm_setFiringDirectionForTargetIfInRange_0()
        j_directionFactory => DirectionFactory_jm_getInstance_0()
        if (JR_same(j_direction, j_directionFactory%f_LEFT)) then
            if (((this%f_lastKeyDirection /= this%f_keyDirection) .or. (.not. this%f_isFollowLimitedByTerrain))) then
                call this%BasePatrolAI%jm_processKeyAI_1(Canvas_jstatic_LEFT())
            end if
            this%f_keyDirection = Canvas_jstatic_LEFT()
            this%f_lastKeyDirection = this%f_keyDirection
            this%f_xTotalDistance = 0
            call this%BasePatrolAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
        else if (JR_same(j_direction, j_directionFactory%f_RIGHT)) then
            if (((this%f_lastKeyDirection /= this%f_keyDirection) .or. (.not. this%f_isFollowLimitedByTerrain))) then
                call this%BasePatrolAI%jm_processKeyAI_1(Canvas_jstatic_RIGHT())
            end if
            this%f_keyDirection = Canvas_jstatic_RIGHT()
            this%f_lastKeyDirection = this%f_keyDirection
            this%f_xTotalDistance = 0
            call this%BasePatrolAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
        else
            call this%BasePatrolAI%jm_processKeyAI_1(this%f_keyDirection)
        end if
  end subroutine

  recursive function PacePatrolAI_jm_setFiringDirectionForTargetIfInRange_0(this) result(jresult)
    class(PacePatrolAI), target :: this
    class(Direction), pointer :: jresult
    class(DirectionFactory), pointer :: j_directionFactory
    class(AllBinaryLayer), pointer :: j_ownerLayerInterface
    class(Direction), pointer :: j_direction
    class(TrackingEvent), pointer :: j_lastTrackingEvent
    class(LayerInterface), pointer :: j_lastTrackingLayerInterface
    class(DirectionCompositeInterface), pointer :: j_directionCompositeInterface
    integer(4) :: j_size
    integer(4) :: j_x
    integer(4) :: j_y
    integer(4) :: j_yDistance
    integer(4) :: j_xDistance
    integer(4) :: j_absXDistance
    integer(4) :: j_absYDistance
    integer(4) :: j_index
        j_directionFactory => DirectionFactory_jm_getInstance_0()
        j_ownerLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_direction => j_directionFactory%f_NOT_BORDERED_WITH
        continue
        continue
        continue
        j_size = this%f_trackingList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_lastTrackingEvent => TrackingEvent_jcast(this%f_trackingList%jm_get_1(0))
            j_lastTrackingLayerInterface => j_lastTrackingEvent%jm_getLayerInterface_0()
            j_x = j_lastTrackingLayerInterface%jm_getXP_0()
            j_y = j_lastTrackingLayerInterface%jm_getYP_0()
            j_yDistance = ((j_ownerLayerInterface%jm_getYP_0() - j_y) - j_ownerLayerInterface%jm_getHeight_0())
            j_xDistance = ((j_ownerLayerInterface%jm_getXP_0() - j_x) - j_ownerLayerInterface%jm_getWidth_0())
            j_absXDistance = abs(j_xDistance)
            j_absYDistance = abs(j_yDistance)
            if ((j_absYDistance <= 100)) then
                if ((j_absXDistance < (this%jm_getFiringDistance_0() / 2))) then
                    j_directionCompositeInterface => DirectionCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
                    if (((j_xDistance < 0) .and. (j_directionCompositeInterface%jm_getDirection_0() == j_directionFactory%f_RIGHT))) then
                        j_direction => j_directionFactory%f_RIGHT
                    else if (((j_xDistance > 0) .and. (j_directionCompositeInterface%jm_getDirection_0() == j_directionFactory%f_LEFT))) then
                        j_direction => j_directionFactory%f_LEFT
                    end if
                end if
            end if
            j_index = j_index + 1
        end do
        jresult => j_direction
        return
  end function

  recursive subroutine PacePatrolAI_jm_disable_0(this)
    class(PacePatrolAI), target :: this
    continue
  end subroutine

  recursive subroutine PacePatrolAI_jm_onEvent_1(this, j_eventObject)
    class(PacePatrolAI), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp2%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine PacePatrolAI_jm_onMovement_1(this, j_trackingEvent)
    class(PacePatrolAI), target :: this
    class(TrackingEvent), target, optional :: j_trackingEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_trackingList%jm_clear_0()
        jdiscardBoolean = this%f_trackingList%jm_add_1(j_trackingEvent)
  end subroutine

  recursive function PacePatrolAI_jm_getFiringDistance_0(this) result(jresult)
    class(PacePatrolAI), target :: this
    integer(4) :: jresult
        jresult = this%f_firingDistance
        return
  end function

  recursive subroutine PacePatrolAI_jm_setFiringDistance_1(this, j_firingDistance)
    class(PacePatrolAI), target :: this
    integer(4), value :: j_firingDistance
        this%f_firingDistance = j_firingDistance
  end subroutine
end module PacePatrolAI_m

