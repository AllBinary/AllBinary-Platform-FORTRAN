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
module HorizontalScreenPatrolAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use AllBinaryGameLayerManager_m
  use MyRandomFactory_m
  use DisplayInfoSingleton_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use SmallIntegerSingletonFactory_m
  use PlayerQueue_m
  use SecondaryPlayerQueueFactory_m
  use Sound_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use Integer_m
  implicit none

  type, extends(BasicAI) :: HorizontalScreenPatrolAI
    integer(4) :: f_keyDirection = 0
    class(DisplayInfoSingleton), pointer :: f_displayInfoSingleton => null()
    integer(4) :: f_firingX = 0
    integer(4) :: f_firedIndex = 0
    integer(4) :: f_MAX_FIRE = 0
    class(TimeDelayHelper), pointer :: f_timeDelayHelper => null()
    class(PlayerQueue), pointer :: f_secondaryPlayerQueue => null()
    class(Sound), pointer :: f_sound_u0 => null()
  contains
    procedure :: jm_processAI_1 => HorizontalScreenPatrolAI_jm_processAI_1
    procedure :: jm_nextDirection_0 => HorizontalScreenPatrolAI_jm_nextDirection_0
  end type

  integer(4), save :: HorizontalScreenPatrolAI_jcell_SOUND
  logical, save :: HorizontalScreenPatrolAI_jset_SOUND = .false.

contains

  function HorizontalScreenPatrolAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HorizontalScreenPatrolAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HorizontalScreenPatrolAI)
      jresult => object
    end select
  end function

  function HorizontalScreenPatrolAI_jstatic_SOUND() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. HorizontalScreenPatrolAI_jset_SOUND) then
      HorizontalScreenPatrolAI_jset_SOUND = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    HorizontalScreenPatrolAI_jcell_SOUND = jtemp1%jm_getAt_1(433)
    end if
    jresult = HorizontalScreenPatrolAI_jcell_SOUND
  end function

  subroutine HorizontalScreenPatrolAI_jsetstatic_SOUND(jvalue)
    integer(4), value :: jvalue
    HorizontalScreenPatrolAI_jset_SOUND = .true.
    HorizontalScreenPatrolAI_jcell_SOUND = jvalue
  end subroutine

  recursive function HorizontalScreenPatrolAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(HorizontalScreenPatrolAI), pointer :: this
    allocate(this)
    this%jclass = 'HorizontalScreenPatrolAI'
    this%f_keyDirection = Canvas_jstatic_LEFT()
    this%f_displayInfoSingleton => DisplayInfoSingleton_jm_getInstance_0()
    this%f_firingX = this%f_displayInfoSingleton%jm_getLastHalfWidth_0()
    this%f_firedIndex = 0
    this%f_MAX_FIRE = 28
    this%f_timeDelayHelper => TimeDelayHelper_jnew_1(240)
    this%f_secondaryPlayerQueue => SecondaryPlayerQueueFactory_jm_getInstance_0()
    
        continue ! super()
        this%f_sound_u0 => Sound_jcast(j_hashtable%jm_get_1(HorizontalScreenPatrolAI_jstatic_SOUND()))
        if ((.not. associated(this%f_sound_u0))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive subroutine HorizontalScreenPatrolAI_jm_processAI_1(this, j_layerManager)
    class(HorizontalScreenPatrolAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(AllBinaryLayer), pointer :: j_layerInterface
    integer(4) :: j_currentOwnerLayerX
    integer(4) :: j_y
    class(AllBinaryGameLayerManager), pointer :: j_gameLayerManager
    integer(4) :: j_FIRE
    class(MyRandomFactory), pointer :: jtemp2
    class(MyRandomFactory), pointer :: jtemp3
    class(GameInfo), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BasicAI%jm_processKeyAI_1(this%f_keyDirection)
        if (this%f_timeDelayHelper%jm_isTimeTNT_0()) then
            j_layerInterface => this%jm_getOwnerLayerInterface_0()
            j_currentOwnerLayerX = j_layerInterface%jm_getXP_0()
            if ((j_currentOwnerLayerX < (-j_layerInterface%jm_getWidth_0()))) then
                jtemp2 => MyRandomFactory_jm_getInstance_0()
                j_y = jtemp2%jm_getAbsoluteNextIntAllowZero_1(50)
                call j_layerInterface%jm_setPosition_3(((this%f_displayInfoSingleton%jm_getLastWidth_0() + j_layerInterface%jm_getWidth_0()) + 50), j_y, j_layerInterface%jm_getZP_0())
                this%f_firedIndex = 0
                jtemp3 => MyRandomFactory_jm_getInstance_0()
                this%f_firingX = (this%f_displayInfoSingleton%jm_getLastHalfWidth_0() + jtemp3%jm_getNextInt_1(this%f_displayInfoSingleton%jm_getLastHalfWidth_0()))
                call this%f_secondaryPlayerQueue%jm_add_1(this%f_sound_u0)
            end if
            if (((j_currentOwnerLayerX < this%f_firingX) .and. (j_currentOwnerLayerX > (-j_layerInterface%jm_getWidth_0())))) then
                call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
                j_gameLayerManager => AllBinaryGameLayerManager_jcast(j_layerManager)
                jtemp4 => j_gameLayerManager%jm_getGameInfo_0()
                j_FIRE = shifta(((jtemp4%jm_getCurrentLevel_0() + 12)), iand(2, 31))
                if ((j_FIRE > this%f_MAX_FIRE)) then
                    j_FIRE = this%f_MAX_FIRE
                end if
                if ((this%f_firedIndex > j_FIRE)) then
                    this%f_firedIndex = 0
                    this%f_firingX = Integer_jstatic_MIN_VALUE()
                end if
                this%f_firedIndex = this%f_firedIndex + 1
            end if
        end if
  end subroutine

  recursive subroutine HorizontalScreenPatrolAI_jm_nextDirection_0(this)
    class(HorizontalScreenPatrolAI), target :: this
    continue
  end subroutine
end module HorizontalScreenPatrolAI_m

