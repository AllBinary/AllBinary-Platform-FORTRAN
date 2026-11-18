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
! package org.allbinary.game.ai
module BasicAI_m
  use JR_m
  use ArtificialIntelligence_m
  use CanvasUtil_m
  use GameInput_m
  use GameKeyEventSourceInterface_m
  use GameKeyEventFactory_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use CommonSeps_m
  use CommonStrings_m
  use Integer_m
  implicit none

  type, extends(ArtificialIntelligence) :: BasicAI
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(GameKeyEventFactory), pointer :: f_gameKeyEventFactory => null()
    class(AllBinaryLayer), pointer :: f_ownerLayerInterface => null()
    class(GameInput), pointer :: f_gameInput => null()
    integer(4) :: f_lastKey = 0
  contains
    procedure :: jm_processAI_1 => BasicAI_jm_processAI_1
    procedure :: jm_processKeyAI_1 => BasicAI_jm_processKeyAI_1
    procedure :: jm_setLastKey_1 => BasicAI_jm_setLastKey_1
    procedure :: jm_getLastKey_0 => BasicAI_jm_getLastKey_0
    procedure :: jm_getOwnerLayerInterface_0 => BasicAI_jm_getOwnerLayerInterface_0
    procedure :: jm_getGameInput_0 => BasicAI_jm_getGameInput_0
    procedure :: jm_getName_0 => BasicAI_jm_getName_0
    procedure :: jm_toString_0 => BasicAI_jm_toString_0
    procedure :: jm_getSourceId_0 => BasicAI_jm_getSourceId_0
  end type

  ! BasicAI used as a GameKeyEventSourceInterface
  type, extends(GameKeyEventSourceInterface) :: BasicAI_jas_GameKeyEventSourceInterface
    class(BasicAI), pointer :: jtarget => null()
  contains
    procedure :: jm_getSourceId_0 => BasicAI_jas_GameKeyEventSourceInterface_jm_getSourceId_0
  end type

  integer(4), save :: BasicAI_jcell_AI_VISITOR
  logical, save :: BasicAI_jset_AI_VISITOR = .false.
  integer(4), save :: BasicAI_jcell_ID
  logical, save :: BasicAI_jset_ID = .false.

contains

  function BasicAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicAI)
      jresult => object
    end select
  end function

  function BasicAI_jas_GameKeyEventSourceInterface_jnew(object) result(jresult)
    class(BasicAI), target :: object
    class(BasicAI_jas_GameKeyEventSourceInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicAI'
    jresult%jtarget => object
  end function

  recursive function BasicAI_jas_GameKeyEventSourceInterface_jm_getSourceId_0(this) result(jresult)
    class(BasicAI_jas_GameKeyEventSourceInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getSourceId_0()
  end function

  function BasicAI_jstatic_AI_VISITOR() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    if (.not. BasicAI_jset_AI_VISITOR) then
      BasicAI_jset_AI_VISITOR = .true.
      jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasicAI_jcell_AI_VISITOR = jtemp1%jm_getAt_1(2)
    end if
    jresult = BasicAI_jcell_AI_VISITOR
  end function

  subroutine BasicAI_jsetstatic_AI_VISITOR(jvalue)
    integer(4), value :: jvalue
    BasicAI_jset_AI_VISITOR = .true.
    BasicAI_jcell_AI_VISITOR = jvalue
  end subroutine

  function BasicAI_jstatic_ID() result(jresult)
    integer(4) :: jresult
    class(SmallIntegerSingletonFactory), pointer :: jtemp2
    if (.not. BasicAI_jset_ID) then
      BasicAI_jset_ID = .true.
      jtemp2 => SmallIntegerSingletonFactory_jm_getInstance_0()
    BasicAI_jcell_ID = jtemp2%jm_getAt_1(1)
    end if
    jresult = BasicAI_jcell_ID
  end function

  subroutine BasicAI_jsetstatic_ID(jvalue)
    integer(4), value :: jvalue
    BasicAI_jset_ID = .true.
    BasicAI_jcell_ID = jvalue
  end subroutine

  recursive function BasicAI_jnew_2(j_ownerLayerInterface, j_gameInput) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(BasicAI), pointer :: this
    allocate(this)
    this%jclass = 'BasicAI'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_gameKeyEventFactory => GameKeyEventFactory_jm_getInstance_0()
    
    
    this%f_lastKey = (-1)
        this%f_ownerLayerInterface => j_ownerLayerInterface
        this%f_gameInput => j_gameInput
  end function

  recursive subroutine BasicAI_jm_processAI_1(this, j_layerManager)
    class(BasicAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine BasicAI_jm_processKeyAI_1(this, j_key)
    class(BasicAI), target :: this
    integer(4), value :: j_key
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((j_key /= (-1))) then
            call this%f_gameInput%jm_add_1(this%f_gameKeyEventFactory%jm_getInstanceForKey_2(BasicAI_jas_GameKeyEventSourceInterface_jnew(this), j_key))
        end if
  end subroutine

  recursive subroutine BasicAI_jm_setLastKey_1(this, j_lastKey)
    class(BasicAI), target :: this
    integer(4), value :: j_lastKey
        this%f_lastKey = j_lastKey
  end subroutine

  recursive function BasicAI_jm_getLastKey_0(this) result(jresult)
    class(BasicAI), target :: this
    integer(4) :: jresult
        jresult = this%f_lastKey
        return
  end function

  recursive function BasicAI_jm_getOwnerLayerInterface_0(this) result(jresult)
    class(BasicAI), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_ownerLayerInterface
        return
  end function

  recursive function BasicAI_jm_getGameInput_0(this) result(jresult)
    class(BasicAI), target :: this
    class(GameInput), pointer :: jresult
        jresult => this%f_gameInput
        return
  end function

  recursive function BasicAI_jm_getName_0(this) result(jresult)
    class(BasicAI), target :: this
    character(len=:), allocatable :: jresult
    character(len=:), allocatable :: jtemp3
        jtemp3 = JR_className(this)
        jresult = jtemp3
        return
  end function

  recursive function BasicAI_jm_toString_0(this) result(jresult)
    class(BasicAI), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jtemp4 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_NEW_LINE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' LastKey: ')
        jdiscardRef => j_stringBuffer%jm_append_1(CanvasUtil_jm_getKeyName_1(this%jm_getLastKey_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function BasicAI_jm_getSourceId_0(this) result(jresult)
    class(BasicAI), target :: this
    integer(4) :: jresult
        jresult = 1
        return
  end function
end module BasicAI_m

