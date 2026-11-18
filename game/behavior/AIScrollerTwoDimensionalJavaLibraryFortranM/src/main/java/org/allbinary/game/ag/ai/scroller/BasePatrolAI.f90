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
module BasePatrolAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use BasicVelocityProperties_m
  use VelocityInterfaceCompositeInterface_m
  use AllBinaryLayer_m
  use MathUtil_m
  use SmallIntegerSingletonFactory_m
  use ABHashtable_m
  use Integer_m
  implicit none

  type, extends(BasicAI) :: BasePatrolAI
    integer(4) :: f_maxDistance = 0
    integer(4) :: f_currentDistance = 0
    integer(4) :: f_xTotalDistance = 0
    integer(4) :: f_lastKeyDirection = 0
    integer(4) :: f_keyDirection = 0
  contains
    procedure :: jm_update_0 => BasePatrolAI_jm_update_0
    procedure :: jm_updateTotalDistance_0 => BasePatrolAI_jm_updateTotalDistance_0
    procedure :: jm_changeDirectionIfReachedPacingAreaMax_0 => BasePatrolAI_jm_changeDirectionIfReachedPacingAreaMax_0
    procedure :: jm_nextDirection_0 => BasePatrolAI_jm_nextDirection_0
    procedure :: jm_disable_0 => BasePatrolAI_jm_disable_0
  end type

  integer(4), save :: BasePatrolAI_jcell_MAX_DISTANCE
  logical, save :: BasePatrolAI_jset_MAX_DISTANCE = .false.
  integer(4), save :: BasePatrolAI_jcell_DIRECTION_ARRAY
  logical, save :: BasePatrolAI_jset_DIRECTION_ARRAY = .false.
  integer(4), save :: BasePatrolAI_jcell_FIRING_DISTANCE
  logical, save :: BasePatrolAI_jset_FIRING_DISTANCE = .false.
  integer(4), save :: BasePatrolAI_jcell_SPEED
  logical, save :: BasePatrolAI_jset_SPEED = .false.

contains

  function BasePatrolAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasePatrolAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasePatrolAI)
      jresult => object
    end select
  end function

  function BasePatrolAI_jstatic_MAX_DISTANCE() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. BasePatrolAI_jset_MAX_DISTANCE) then
      BasePatrolAI_jset_MAX_DISTANCE = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasePatrolAI_jcell_MAX_DISTANCE = jtemp1%jm_getAt_1(2)
    end if
    jresult = BasePatrolAI_jcell_MAX_DISTANCE
  end function

  subroutine BasePatrolAI_jsetstatic_MAX_DISTANCE(jvalue)
    integer(4), value :: jvalue
    BasePatrolAI_jset_MAX_DISTANCE = .true.
    BasePatrolAI_jcell_MAX_DISTANCE = jvalue
  end subroutine

  function BasePatrolAI_jstatic_DIRECTION_ARRAY() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp2
    if (.not. BasePatrolAI_jset_DIRECTION_ARRAY) then
      BasePatrolAI_jset_DIRECTION_ARRAY = .true.
      jtemp2 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasePatrolAI_jcell_DIRECTION_ARRAY = jtemp2%jm_getAt_1(3)
    end if
    jresult = BasePatrolAI_jcell_DIRECTION_ARRAY
  end function

  subroutine BasePatrolAI_jsetstatic_DIRECTION_ARRAY(jvalue)
    integer(4), value :: jvalue
    BasePatrolAI_jset_DIRECTION_ARRAY = .true.
    BasePatrolAI_jcell_DIRECTION_ARRAY = jvalue
  end subroutine

  function BasePatrolAI_jstatic_FIRING_DISTANCE() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp3
    if (.not. BasePatrolAI_jset_FIRING_DISTANCE) then
      BasePatrolAI_jset_FIRING_DISTANCE = .true.
      jtemp3 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasePatrolAI_jcell_FIRING_DISTANCE = jtemp3%jm_getAt_1(4)
    end if
    jresult = BasePatrolAI_jcell_FIRING_DISTANCE
  end function

  subroutine BasePatrolAI_jsetstatic_FIRING_DISTANCE(jvalue)
    integer(4), value :: jvalue
    BasePatrolAI_jset_FIRING_DISTANCE = .true.
    BasePatrolAI_jcell_FIRING_DISTANCE = jvalue
  end subroutine

  function BasePatrolAI_jstatic_SPEED() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp4
    if (.not. BasePatrolAI_jset_SPEED) then
      BasePatrolAI_jset_SPEED = .true.
      jtemp4 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasePatrolAI_jcell_SPEED = jtemp4%jm_getAt_1(5)
    end if
    jresult = BasePatrolAI_jcell_SPEED
  end function

  subroutine BasePatrolAI_jsetstatic_SPEED(jvalue)
    integer(4), value :: jvalue
    BasePatrolAI_jset_SPEED = .true.
    BasePatrolAI_jcell_SPEED = jvalue
  end subroutine

  recursive function BasePatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(BasePatrolAI), pointer :: this
    allocate(this)
    this%jclass = 'BasePatrolAI'
    
    
    
    this%f_lastKeyDirection = Canvas_jstatic_RIGHT()
    this%f_keyDirection = Canvas_jstatic_RIGHT()
        continue ! super()
        this%f_maxDistance = JR_unboxInt(j_hashtable%jm_get_1(BasePatrolAI_jstatic_MAX_DISTANCE()))
        this%f_currentDistance = int(this%f_maxDistance, 4)
  end function

  recursive subroutine BasePatrolAI_jm_update_0(this)
    class(BasePatrolAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_updateTotalDistance_0()
        call this%jm_changeDirectionIfReachedPacingAreaMax_0()
  end subroutine

  recursive subroutine BasePatrolAI_jm_updateTotalDistance_0(this)
    class(BasePatrolAI), target :: this
    class(VelocityInterfaceCompositeInterface), pointer :: j_velocityInterfaceCompositeInterface
    class(BasicVelocityProperties), pointer :: j_velocityProperties
    class(BasicDecimal), pointer :: jtemp5
        j_velocityInterfaceCompositeInterface => VelocityInterfaceCompositeInterface_jcast(this%jm_getOwnerLayerInterface_0())
        j_velocityProperties => j_velocityInterfaceCompositeInterface%jm_getVelocityProperties_0()
        jtemp5 => j_velocityProperties%jm_getVelocityXBasicDecimalP_0()
        this%f_xTotalDistance = (this%f_xTotalDistance + jtemp5%jm_getScaled_0())
  end subroutine

  recursive subroutine BasePatrolAI_jm_changeDirectionIfReachedPacingAreaMax_0(this)
    class(BasePatrolAI), target :: this
    class(MathUtil), pointer :: j_mathUtil
    integer(4) :: j_totalDistance
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_mathUtil => MathUtil_jm_getInstance_0()
        j_totalDistance = j_mathUtil%jm_abs_1(this%f_xTotalDistance)
        if ((j_totalDistance > this%f_currentDistance)) then
            call this%jm_nextDirection_0()
        end if
  end subroutine

  recursive subroutine BasePatrolAI_jm_nextDirection_0(this)
    class(BasePatrolAI), target :: this
        if ((this%f_lastKeyDirection == Canvas_jstatic_LEFT())) then
            this%f_keyDirection = Canvas_jstatic_RIGHT()
            this%f_lastKeyDirection = this%f_keyDirection
            this%f_xTotalDistance = 0
        else if ((this%f_lastKeyDirection == Canvas_jstatic_RIGHT())) then
            this%f_keyDirection = Canvas_jstatic_LEFT()
            this%f_lastKeyDirection = this%f_keyDirection
            this%f_xTotalDistance = 0
        end if
  end subroutine

  recursive subroutine BasePatrolAI_jm_disable_0(this)
    class(BasePatrolAI), target :: this
    continue
  end subroutine
end module BasePatrolAI_m

