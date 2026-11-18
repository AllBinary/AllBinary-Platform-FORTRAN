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
module RandomPatrolAI_m
  use JR_m
  use GameInput_m
  use MyRandomFactory_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use ABHashtable_m
  use BasePatrolAI_m
  implicit none

  type, extends(BasePatrolAI) :: RandomPatrolAI
    logical :: f_changedDirection = .false.
  contains
    procedure :: jm_updateRandomDistance_0 => RandomPatrolAI_jm_updateRandomDistance_0
    procedure :: jm_processAI_1 => RandomPatrolAI_jm_processAI_1
    procedure :: jm_nextDirection_0 => RandomPatrolAI_jm_nextDirection_0
  end type


contains

  function RandomPatrolAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RandomPatrolAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RandomPatrolAI)
      jresult => object
    end select
  end function

  recursive function RandomPatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(RandomPatrolAI), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'RandomPatrolAI'
    this%f_changedDirection = .true.
        continue ! super()
        call this%jm_updateRandomDistance_0()
  end function

  recursive subroutine RandomPatrolAI_jm_updateRandomDistance_0(this)
    class(RandomPatrolAI), target :: this
    class(MyRandomFactory), pointer :: jtemp1
        jtemp1 => MyRandomFactory_jm_getInstance_0()
        this%f_currentDistance = jtemp1%jm_getAbsoluteNextInt_1(this%f_maxDistance%jm_intValue_0())
  end subroutine

  recursive subroutine RandomPatrolAI_jm_processAI_1(this, j_layerManager)
    class(RandomPatrolAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasePatrolAI%jm_update_0()
        call this%BasePatrolAI%jm_processKeyAI_1(this%f_keyDirection)
        if (this%f_changedDirection) then
            call this%BasePatrolAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
            call this%jm_updateRandomDistance_0()
            this%f_changedDirection = .false.
        end if
  end subroutine

  recursive subroutine RandomPatrolAI_jm_nextDirection_0(this)
    class(RandomPatrolAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasePatrolAI%jm_nextDirection_0()
        this%f_changedDirection = .true.
  end subroutine
end module RandomPatrolAI_m

