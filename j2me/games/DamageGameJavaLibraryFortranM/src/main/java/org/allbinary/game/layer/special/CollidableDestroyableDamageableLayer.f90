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
! package org.allbinary.game.layer.special
module CollidableDestroyableDamageableLayer_m
  use JR_m
  use CollidableNeverCollideBehaviorFactory_m
  use DamageableInterface_m
  use DestroyableInterface_m
  use DestroyedEvent_m
  use BasicGroupFactory_m
  use Group_m
  use GameKeyEvent_m
  use AllBinaryGameLayerManager_m
  use CollidableCompositeLayer_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickupBehavior_m
  use PickupCompositeInterface_m
  use PartInterface_m
  use PartInterfaceUtil_m
  use Rectangle_m
  use RectangleFactory_m
  use AllBinaryLayerManager_m
  use NullUtil_m
  use StringMaker_m
  use StringUtil_m
  use PositionStrings_m
  use CommonSeps_m
  use ViewPositionBase_m
  use SpecialGameInputInterface_m
  implicit none

  type, extends(CollidableCompositeLayer) :: CollidableDestroyableDamageableLayer
    type(JRef), allocatable :: f_groupInterface(:)
    logical :: f_readyForExplosion_u2 = .false.
    integer(4) :: f_initWidth = 0
    integer(4) :: f_initHeight = 0
    integer(4) :: f_initX = 0
    integer(4) :: f_initY = 0
    integer(4) :: f_initZ = 0
    type(JRef), allocatable :: f_partInterfaceArrayP(:)
    class(PickupBehavior), pointer :: f_pickupBehavior => null()
    class(AllBinaryGameLayerManager), pointer :: f_allBinaryGameLayerManagerP => null()
    logical :: f_isDraggable = .false.
    logical :: f_isDragged = .false.
    logical :: f_isDropped = .false.
  contains
    procedure :: jm_initPosition_0 => CollidableDestroyableDamageableLayer_jm_initPosition_0
    procedure :: jm_initPositionXYZ_3 => CollidableDestroyableDamageableLayer_jm_initPositionXYZ_3
    procedure :: jm_paint_1 => CollidableDestroyableDamageableLayer_jm_paint_1
    procedure :: jm_damage_2 => CollidableDestroyableDamageableLayer_jm_damage_2
    procedure :: jm_getDamage_1 => CollidableDestroyableDamageableLayer_jm_getDamage_1
    procedure :: jm_isDestroyed_0 => CollidableDestroyableDamageableLayer_jm_isDestroyed_0
    procedure :: jm_getGroupInterface_0 => CollidableDestroyableDamageableLayer_jm_getGroupInterface_0
    procedure :: jm_setGroupInterface_1 => CollidableDestroyableDamageableLayer_jm_setGroupInterface_1
    procedure :: jm_setAllBinaryGameLayerManager_1 => CollidableDestroyableDamageableLayer_jm_setAllBinaryGameLayerManager_1
    procedure :: jm_isReadyForExplosion_0 => CollidableDestroyableDamageableLayer_jm_isReadyForExplosion_0
    procedure :: jm_setReadyForExplosion_1 => CollidableDestroyableDamageableLayer_jm_setReadyForExplosion_1
    procedure :: jm_getInitWidth_0 => CollidableDestroyableDamageableLayer_jm_getInitWidth_0
    procedure :: jm_getInitHeight_0 => CollidableDestroyableDamageableLayer_jm_getInitHeight_0
    procedure :: jm_getInitX_0 => CollidableDestroyableDamageableLayer_jm_getInitX_0
    procedure :: jm_getInitY_0 => CollidableDestroyableDamageableLayer_jm_getInitY_0
    procedure :: jm_up_0 => CollidableDestroyableDamageableLayer_jm_up_0
    procedure :: jm_down_0 => CollidableDestroyableDamageableLayer_jm_down_0
    procedure :: jm_right_0 => CollidableDestroyableDamageableLayer_jm_right_0
    procedure :: jm_left_0 => CollidableDestroyableDamageableLayer_jm_left_0
    procedure :: jm_strafeLeft_0 => CollidableDestroyableDamageableLayer_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => CollidableDestroyableDamageableLayer_jm_strafeRight_0
    procedure :: jm_fire_2 => CollidableDestroyableDamageableLayer_jm_fire_2
    procedure :: jm_special1_2 => CollidableDestroyableDamageableLayer_jm_special1_2
    procedure :: jm_special2_2 => CollidableDestroyableDamageableLayer_jm_special2_2
    procedure :: jm_special3_2 => CollidableDestroyableDamageableLayer_jm_special3_2
    procedure :: jm_special4_2 => CollidableDestroyableDamageableLayer_jm_special4_2
    procedure :: jm_special5_2 => CollidableDestroyableDamageableLayer_jm_special5_2
    procedure :: jm_upAnalog_1 => CollidableDestroyableDamageableLayer_jm_upAnalog_1
    procedure :: jm_downAnalog_1 => CollidableDestroyableDamageableLayer_jm_downAnalog_1
    procedure :: jm_rightAnalog_1 => CollidableDestroyableDamageableLayer_jm_rightAnalog_1
    procedure :: jm_leftAnalog_1 => CollidableDestroyableDamageableLayer_jm_leftAnalog_1
    procedure :: jm_rightTrigger_3 => CollidableDestroyableDamageableLayer_jm_rightTrigger_3
    procedure :: jm_leftTrigger_3 => CollidableDestroyableDamageableLayer_jm_leftTrigger_3
    procedure :: jm_onDestroyed_1 => CollidableDestroyableDamageableLayer_jm_onDestroyed_1
    procedure :: jm_getPickupBehavior_0 => CollidableDestroyableDamageableLayer_jm_getPickupBehavior_0
    procedure :: jm_setPickupBehavior_1 => CollidableDestroyableDamageableLayer_jm_setPickupBehavior_1
    procedure :: jm_addPart_1 => CollidableDestroyableDamageableLayer_jm_addPart_1
    procedure :: jm_setPartInterfaceArray_1 => CollidableDestroyableDamageableLayer_jm_setPartInterfaceArray_1
    procedure :: jm_getPartInterfaceArray_0 => CollidableDestroyableDamageableLayer_jm_getPartInterfaceArray_0
    procedure :: jm_toStringAppend_1 => CollidableDestroyableDamageableLayer_jm_toStringAppend_1
    procedure :: jm_toString_0 => CollidableDestroyableDamageableLayer_jm_toString_0
  end type

  ! CollidableDestroyableDamageableLayer used as a DestroyableInterface
  type, extends(DestroyableInterface) :: CollidableDestroyableDamageableLayer_jas_DestroyableInterface
    class(CollidableDestroyableDamageableLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_isDestroyed_0 => CollidableDestroyableDamageableLayer_jas_DestroyableInterface_jm_isDestroyed_0
  end type

  ! CollidableDestroyableDamageableLayer used as a DamageableInterface
  type, extends(DamageableInterface) :: CollidableDestroyableDamageableLayer_jas_DamageableInterface
    class(CollidableDestroyableDamageableLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_damage_2 => CollidableDestroyableDamageableLayer_jas_DamageableInterface_jm_damage_2
    procedure :: jm_getDamage_1 => CollidableDestroyableDamageableLayer_jas_DamageableInterface_jm_getDamage_1
  end type

  ! CollidableDestroyableDamageableLayer used as a PickupCompositeInterface
  type, extends(PickupCompositeInterface) :: CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface
    class(CollidableDestroyableDamageableLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_getPickupBehavior_0 => CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface_jm_getPickupBehavior_0
    procedure :: jm_setPickupBehavior_1 => CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface_jm_setPickupBehavior_1
  end type

  ! CollidableDestroyableDamageableLayer used as a SpecialGameInputInterface
  type, extends(SpecialGameInputInterface) :: CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface
    class(CollidableDestroyableDamageableLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_up_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_up_0
    procedure :: jm_down_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_down_0
    procedure :: jm_right_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_right_0
    procedure :: jm_left_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_left_0
    procedure :: jm_strafeLeft_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_strafeLeft_0
    procedure :: jm_strafeRight_0 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_strafeRight_0
    procedure :: jm_fire_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_fire_2
    procedure :: jm_special1_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special1_2
    procedure :: jm_special2_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special2_2
    procedure :: jm_special3_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special3_2
    procedure :: jm_special4_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special4_2
    procedure :: jm_special5_2 => CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special5_2
  end type

  class(JObject), pointer, save :: CollidableDestroyableDamageableLayer_jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER => null()
  logical, save :: CollidableDestroyableDamageableLayer_jset_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = .false.
  character(len=:), allocatable, save :: CollidableDestroyableDamageableLayer_jcell_READYFOREXPLOSION
  logical, save :: CollidableDestroyableDamageableLayer_jset_READYFOREXPLOSION = .false.

contains

  function CollidableDestroyableDamageableLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableDestroyableDamageableLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableDestroyableDamageableLayer)
      jresult => object
    end select
  end function

  function CollidableDestroyableDamageableLayer_jas_DestroyableInterface_jnew(object) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: object
    class(CollidableDestroyableDamageableLayer_jas_DestroyableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CollidableDestroyableDamageableLayer'
    jresult%jtarget => object
  end function

  recursive function CollidableDestroyableDamageableLayer_jas_DestroyableInterface_jm_isDestroyed_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer_jas_DestroyableInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isDestroyed_0()
  end function

  function CollidableDestroyableDamageableLayer_jas_DamageableInterface_jnew(object) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: object
    class(CollidableDestroyableDamageableLayer_jas_DamageableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CollidableDestroyableDamageableLayer'
    jresult%jtarget => object
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jas_DamageableInterface_jm_damage_2(this, j_damage, j_damageType)
    class(CollidableDestroyableDamageableLayer_jas_DamageableInterface), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
    call this%jtarget%jm_damage_2(j_damage, j_damageType)
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jas_DamageableInterface_jm_getDamage_1(this, j_damageType) result(jresult)
    class(CollidableDestroyableDamageableLayer_jas_DamageableInterface), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
    jresult = this%jtarget%jm_getDamage_1(j_damageType)
  end function

  function CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface_jnew(object) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: object
    class(CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CollidableDestroyableDamageableLayer'
    jresult%jtarget => object
  end function

  recursive function CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface_jm_getPickupBehavior_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface), target :: this
    class(PickupBehavior), pointer :: jresult
    jresult => this%jtarget%jm_getPickupBehavior_0()
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface_jm_setPickupBehavior_1(this, j_pickupBehavior)
    class(CollidableDestroyableDamageableLayer_jas_PickupCompositeInterface), target :: this
    class(PickupBehavior), target, optional :: j_pickupBehavior
    call this%jtarget%jm_setPickupBehavior_1(j_pickupBehavior)
  end subroutine

  function CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jnew(object) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: object
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CollidableDestroyableDamageableLayer'
    jresult%jtarget => object
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_up_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_up_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_down_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_down_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_right_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_right_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_left_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_left_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_strafeLeft_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_strafeLeft_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_strafeRight_0(this)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    call this%jtarget%jm_strafeRight_0()
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_fire_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_fire_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special1_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_special1_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special2_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_special2_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special3_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_special3_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special4_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_special4_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface_jm_special5_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer_jas_SpecialGameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    call this%jtarget%jm_special5_2(j_layerManager, j_gameKeyEvent)
  end subroutine

  function CollidableDestroyableDamageableLayer_jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. CollidableDestroyableDamageableLayer_jset_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER) then
      CollidableDestroyableDamageableLayer_jset_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    CollidableDestroyableDamageableLayer_jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER => jtemp1%f_NULL_OBJECT
    end if
    jresult => CollidableDestroyableDamageableLayer_jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER
  end function

  subroutine CollidableDestroyableDamageableLayer_jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(jvalue)
    class(JObject), target, optional :: jvalue
    CollidableDestroyableDamageableLayer_jset_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER = .true.
    if (present(jvalue)) then
      CollidableDestroyableDamageableLayer_jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER => jvalue
    else
      CollidableDestroyableDamageableLayer_jcell_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER => null()
    end if
  end subroutine

  function CollidableDestroyableDamageableLayer_jstatic_READYFOREXPLOSION() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. CollidableDestroyableDamageableLayer_jset_READYFOREXPLOSION) then
      CollidableDestroyableDamageableLayer_jset_READYFOREXPLOSION = .true.
      CollidableDestroyableDamageableLayer_jcell_READYFOREXPLOSION = 'ReadyForExplosion: '
    end if
    jresult = CollidableDestroyableDamageableLayer_jcell_READYFOREXPLOSION
  end function

  subroutine CollidableDestroyableDamageableLayer_jsetstatic_READYFOREXPLOSION(jvalue)
    character(len=*), intent(in) :: jvalue
    CollidableDestroyableDamageableLayer_jset_READYFOREXPLOSION = .true.
    CollidableDestroyableDamageableLayer_jcell_READYFOREXPLOSION = jvalue
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jnew_4(j_groupInterface, j_name, j_layerInfo, j_viewPosition) result(this)
    type(JRef) :: j_groupInterface(:)
    character(len=*), intent(in) :: j_name
    class(Rectangle), target, optional :: j_layerInfo
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(CollidableDestroyableDamageableLayer), pointer :: this
    allocate(this)
    this%jclass = 'CollidableDestroyableDamageableLayer'
    
    
    
    
    
    
    
    this%f_partInterfaceArrayP = PartInterfaceUtil_jm_getZeroArray_0()
    
    this%f_allBinaryGameLayerManagerP => AllBinaryGameLayerManager_jm_getNullInstance_0()
    this%f_isDraggable = .false.
    this%f_isDragged = .false.
    this%f_isDropped = .false.
        continue ! super()
        this%f_initWidth = j_layerInfo%jm_getWidth_0()
        this%f_initHeight = j_layerInfo%jm_getHeight_0()
        this%f_groupInterface = j_groupInterface
        this%f_pickupBehavior => PickupBehavior_jm_getNullInstance_0()
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_getNullInstance_0() result(jresult)
    class(CollidableDestroyableDamageableLayer), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(BasicGroupFactory), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(CollidableDestroyableDamageableLayer_jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => BasicGroupFactory_jm_getInstance_0()
            jtemp4 => StringUtil_jm_getInstance_0()
            call CollidableDestroyableDamageableLayer_jsetstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER(CollidableDestroyableDamageableLayer_jnew_4(jtemp3%f_NONE_ARRAY, jtemp4%f_EMPTY_STRING, RectangleFactory_jstatic_SINGLETON(), ViewPositionBase_jstatic_NULL_VIEW_POSITION()))
        end if
        jresult => CollidableDestroyableDamageableLayer_jcast(CollidableDestroyableDamageableLayer_jstatic_NULL_COLLIDABLE_DESTROYABLE_DAMAGE_LAYER())
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_initPosition_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setPosition_3(this%f_initX, this%f_initY, this%f_initZ)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_initPositionXYZ_3(this, j_x, j_y, j_z)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        this%f_initX = j_x
        this%f_initY = j_y
        this%f_initZ = j_z
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_paint_1(this, j_graphics)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%CollidableCompositeLayer%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_damage_2(this, j_damage, j_damageType)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_getDamage_1(this, j_damageType) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_isDestroyed_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    logical :: jresult
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_getGroupInterface_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_groupInterface
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_setGroupInterface_1(this, j_teamInterface)
    class(CollidableDestroyableDamageableLayer), target :: this
    type(JRef) :: j_teamInterface(:)
        this%f_groupInterface = j_teamInterface
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_setAllBinaryGameLayerManager_1(this, j_allBinaryGameLayerManager)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryGameLayerManager), target, optional :: j_allBinaryGameLayerManager
        this%f_allBinaryGameLayerManagerP => j_allBinaryGameLayerManager
        if ((.not. associated(this%f_allBinaryGameLayerManagerP))) then
            error stop JR_toString(JR_newJObject('RuntimeException'))
        end if
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_isReadyForExplosion_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    logical :: jresult
        jresult = this%f_readyForExplosion_u2
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_setReadyForExplosion_1(this, j_isReadyForExplosion)
    class(CollidableDestroyableDamageableLayer), target :: this
    logical, value :: j_isReadyForExplosion
        this%f_readyForExplosion_u2 = j_isReadyForExplosion
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_getInitWidth_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_initWidth
        return
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_getInitHeight_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_initHeight
        return
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_getInitX_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_initX
        return
  end function

  recursive function CollidableDestroyableDamageableLayer_jm_getInitY_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_initY
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_up_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_down_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_right_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_left_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_strafeLeft_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_strafeRight_0(this)
    class(CollidableDestroyableDamageableLayer), target :: this
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_fire_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_special1_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_special2_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_special3_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_special4_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_special5_2(this, j_layerManager, j_gameKeyEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_upAnalog_1(this, j_yAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_yAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_downAnalog_1(this, j_yAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_yAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_rightAnalog_1(this, j_xAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_xAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_leftAnalog_1(this, j_xAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    integer(4), value :: j_xAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_rightTrigger_3(this, j_layerManager, j_gameKeyEvent, j_xAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    integer(4), value :: j_xAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_leftTrigger_3(this, j_layerManager, j_gameKeyEvent, j_xAnalogValue)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    integer(4), value :: j_xAnalogValue
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_onDestroyed_1(this, j_destroyedEvent)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(DestroyedEvent), target, optional :: j_destroyedEvent
    continue
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_getPickupBehavior_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(PickupBehavior), pointer :: jresult
        jresult => this%f_pickupBehavior
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_setPickupBehavior_1(this, j_pickupBehavior)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(PickupBehavior), target, optional :: j_pickupBehavior
        this%f_pickupBehavior => j_pickupBehavior
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_addPart_1(this, j_pickedUpLayerInterfaceFactoryInterface)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: j_pickedUpLayerInterfaceFactoryInterface
    continue
  end subroutine

  recursive subroutine CollidableDestroyableDamageableLayer_jm_setPartInterfaceArray_1(this, j_partInterfaceArray)
    class(CollidableDestroyableDamageableLayer), target :: this
    type(JRef) :: j_partInterfaceArray(:)
        this%f_partInterfaceArrayP = j_partInterfaceArray
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_getPartInterfaceArray_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_partInterfaceArrayP
        return
  end function

  recursive subroutine CollidableDestroyableDamageableLayer_jm_toStringAppend_1(this, j_stringBuffer)
    class(CollidableDestroyableDamageableLayer), target :: this
    class(StringMaker), target, optional :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(PositionStrings), pointer :: j_positionStrings
    type(JRef), allocatable :: j_groupInterfaceArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(PickupBehavior), pointer :: j_pickupBehavior
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_positionStrings => PositionStrings_jm_getInstance_0()
        call this%CollidableCompositeLayer%jm_toStringAppend_1(j_stringBuffer)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
        j_groupInterfaceArray = this%jm_getGroupInterface_0()
        j_size = size(j_groupInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            jdiscardRef => j_stringBuffer%jm_append_1(JR_toString(Group_jcast(j_groupInterfaceArray((j_index) + 1)%v)))
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COMMA)
            j_index = j_index + 1
        end do
        j_pickupBehavior => this%jm_getPickupBehavior_0()
        if (associated(j_pickupBehavior)) then
            jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
            jdiscardRef => j_stringBuffer%jm_append_1(j_pickupBehavior%jm_toString_0())
        end if
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
        jdiscardRef => j_stringBuffer%jm_append_1(CollidableDestroyableDamageableLayer_jstatic_READYFOREXPLOSION())
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%f_readyForExplosion_u2)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_commonStrings%f_INIT)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_X_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_initX)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Y_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_initX)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Z_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_initZ)
  end subroutine

  recursive function CollidableDestroyableDamageableLayer_jm_toString_0(this) result(jresult)
    class(CollidableDestroyableDamageableLayer), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        call this%jm_toStringAppend_1(j_stringBuffer)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module CollidableDestroyableDamageableLayer_m

