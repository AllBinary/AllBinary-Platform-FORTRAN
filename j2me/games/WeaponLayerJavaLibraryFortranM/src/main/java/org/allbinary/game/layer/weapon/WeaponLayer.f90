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
! package org.allbinary.game.layer.weapon
module WeaponLayer_m
  use JR_m
  use GL_m
  use Animation_m
  use IndexedAnimation_m
  use NullAnimationFactory_m
  use CollidableBaseBehavior_m
  use DestroyedLayerProcessor_m
  use WeaponProperties_m
  use GameConfigurationUtil_m
  use BasicGroupFactory_m
  use MultiPlayerGameLayer_m
  use RemoteInfo_m
  use NoScoreable_m
  use ScoreableInterface_m
  use TickableInterface_m
  use Rectangle_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use Movement_m
  use ViewPositionBase_m
  use CollidableWeaponBehavior_m
  implicit none

  type, extends(MultiPlayerGameLayer) :: WeaponLayer
    class(Animation), pointer :: f_animationInterface => null()
    class(Animation), pointer :: f_initAnimationInterface => null()
    class(Animation), pointer :: f_destroyedAnimationInterface => null()
    class(AllBinaryLayer), pointer :: f_sourceLayerInterface => null()
    integer(4) :: f_totalDamage = 0
    integer(4) :: f_initDamage = 0
    logical :: f_destroyed = .false.
    class(ScoreableInterface), pointer :: f_scoreableInterface => null()
    class(Movement), pointer :: f_movement => null()
    class(WeaponProperties), pointer :: f_weaponProperties => null()
    integer(4) :: f_multiPlayerType = 0
    class(CollidableWeaponBehavior), pointer :: f_collidableWeaponBehavior => null()
  contains
    procedure :: jm_setCollidableInferface_1 => WeaponLayer_jm_setCollidableInferface_1
    procedure :: jm_initXYZ_3 => WeaponLayer_jm_initXYZ_3
    procedure :: jm_init_5 => WeaponLayer_jm_init_5
    procedure :: jm_setGroupInterfaces_0 => WeaponLayer_jm_setGroupInterfaces_0
    procedure :: jm_processTick_1 => WeaponLayer_jm_processTick_1
    procedure :: jm_isDestroyed_0 => WeaponLayer_jm_isDestroyed_0
    procedure :: jm_damage_2 => WeaponLayer_jm_damage_2
    procedure :: jm_givePoints_1 => WeaponLayer_jm_givePoints_1
    procedure :: jm_isExhausted_0 => WeaponLayer_jm_isExhausted_0
    procedure :: jm_getDamage_1 => WeaponLayer_jm_getDamage_1
    procedure :: jm_setDestroyed_1 => WeaponLayer_jm_setDestroyed_1
    procedure :: jm_getInitDamage_0 => WeaponLayer_jm_getInitDamage_0
    procedure :: jm_setAnimationInterface_1 => WeaponLayer_jm_setAnimationInterface_1
    procedure :: jm_getAnimationInterface_0 => WeaponLayer_jm_getAnimationInterface_0
    procedure :: jm_getInitAnimationInterfaceP_0 => WeaponLayer_jm_getInitAnimationInterfaceP_0
    procedure :: jm_setInitAnimationInterfaceP_1 => WeaponLayer_jm_setInitAnimationInterfaceP_1
    procedure :: jm_getDestroyedAnimationInterface_0 => WeaponLayer_jm_getDestroyedAnimationInterface_0
    procedure :: jm_getOwnerLayerInterface_0 => WeaponLayer_jm_getOwnerLayerInterface_0
    procedure :: jm_setOwnerLayerInterface_1 => WeaponLayer_jm_setOwnerLayerInterface_1
    procedure :: jm_paint_1 => WeaponLayer_jm_paint_1
    procedure :: jm_paintThreed_1 => WeaponLayer_jm_paintThreed_1
    procedure :: jm_getMovement_0 => WeaponLayer_jm_getMovement_0
    procedure :: jm_setMovement_1 => WeaponLayer_jm_setMovement_1
    procedure :: jm_getType_0 => WeaponLayer_jm_getType_0
    procedure :: jm_getMultiPlayerType_0 => WeaponLayer_jm_getMultiPlayerType_0
    procedure :: jm_setWeaponPropertiesP_1 => WeaponLayer_jm_setWeaponPropertiesP_1
    procedure :: jm_getWeaponPropertiesP_0 => WeaponLayer_jm_getWeaponPropertiesP_0
    procedure :: jm_implmentsTickableInterface_0 => WeaponLayer_jm_implmentsTickableInterface_0
    procedure :: jm_set_1 => WeaponLayer_jm_set_1
  end type

  ! WeaponLayer used as a TickableInterface
  type, extends(TickableInterface) :: WeaponLayer_jas_TickableInterface
    class(WeaponLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_processTick_1 => WeaponLayer_jas_TickableInterface_jm_processTick_1
  end type


contains

  function WeaponLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WeaponLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WeaponLayer)
      jresult => object
    end select
  end function

  function WeaponLayer_jas_TickableInterface_jnew(object) result(jresult)
    class(WeaponLayer), target :: object
    class(WeaponLayer_jas_TickableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'WeaponLayer'
    jresult%jtarget => object
  end function

  recursive subroutine WeaponLayer_jas_TickableInterface_jm_processTick_1(this, j_allBinaryLayerManager)
    class(WeaponLayer_jas_TickableInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    call this%jtarget%jm_processTick_1(j_allBinaryLayerManager)
  end subroutine

  recursive function WeaponLayer_jnew_8(j_name, j_remoteInfo, j_multiPlayerType, j_movement, j_animationInterface, j_destroyedAnimationInterface, j_rectangle, j_viewPosition) result(this)
    character(len=*), intent(in) :: j_name
    class(RemoteInfo), target, optional :: j_remoteInfo
    integer(4), value :: j_multiPlayerType
    class(Movement), target, optional :: j_movement
    class(Animation), target, optional :: j_animationInterface
    class(Animation), target, optional :: j_destroyedAnimationInterface
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(WeaponLayer), pointer :: this
    class(BasicGroupFactory), pointer :: jtemp2
    class(NullAnimationFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'WeaponLayer'
    jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
    this%f_animationInterface => jtemp1%jm_getInstance_1(0)
    
    
    this%f_sourceLayerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
    
    
    this%f_destroyed = .true.
    this%f_scoreableInterface => NoScoreable_jm_getInstance_0()
    
    this%f_weaponProperties => WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES()
    
    this%f_collidableWeaponBehavior => CollidableWeaponBehavior_jm_getNullInstance_0()
        jtemp2 => BasicGroupFactory_jm_getInstance_0()
        continue ! super()
        this%f_initAnimationInterface => j_animationInterface
        call this%jm_setAnimationInterface_1(j_animationInterface)
        this%f_destroyedAnimationInterface => j_destroyedAnimationInterface
        this%f_movement => j_movement
        this%f_multiPlayerType = j_multiPlayerType
  end function

  recursive subroutine WeaponLayer_jm_setCollidableInferface_1(this, j_collidableInferface)
    class(WeaponLayer), target :: this
    class(CollidableBaseBehavior), target, optional :: j_collidableInferface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%MultiPlayerGameLayer%jm_setCollidableInferface_1(j_collidableInferface)
        this%f_collidableWeaponBehavior => CollidableWeaponBehavior_jcast(this%jm_getCollidableInferface_0())
  end subroutine

  recursive subroutine WeaponLayer_jm_initXYZ_3(this, j_x, j_y, j_z)
    class(WeaponLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
        this%f_x = j_x
        this%f_y = j_y
        this%f_z = j_z
  end subroutine

  recursive subroutine WeaponLayer_jm_init_5(this, j_sourceLayerInterface, j_angle, j_otherAngle, j_weaponProperties, j_scoreable)
    class(WeaponLayer), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setWeaponPropertiesP_1(j_weaponProperties)
        call this%jm_setReadyForExplosion_1(.false.)
        call this%jm_setAnimationInterface_1(this%jm_getInitAnimationInterfaceP_0())
        call this%jm_setOwnerLayerInterface_1(j_sourceLayerInterface)
        call this%f_collidableWeaponBehavior%jm_init_1(j_sourceLayerInterface)
        call this%jm_setGroupInterfaces_0()
        if (present(j_scoreable)) then
            this%f_scoreableInterface => j_scoreable
        end if
        this%f_totalDamage = 0
        this%f_initDamage = j_weaponProperties%jm_getDamage_0()
        call this%jm_setDestroyed_1(.false.)
        call this%f_movement%jm_init_3(j_weaponProperties%jm_getSpeed_0(), j_angle, j_otherAngle)
  end subroutine

  recursive subroutine WeaponLayer_jm_setGroupInterfaces_0(this)
    class(WeaponLayer), target :: this
    class(BasicGroupFactory), pointer :: j_basicGroupFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_basicGroupFactory => BasicGroupFactory_jm_getInstance_0()
        if ((this%f_sourceLayerInterface%jm_getGroupInterface_0()((0) + 1) == j_basicGroupFactory%f_ENEMY)) then
            call this%jm_setGroupInterface_1(j_basicGroupFactory%f_ENEMY_ARRAY)
        else
            call this%jm_setGroupInterface_1(this%f_sourceLayerInterface%jm_getGroupInterface_0())
        end if
  end subroutine

  recursive subroutine WeaponLayer_jm_processTick_1(this, j_allBinaryLayerManager)
    class(WeaponLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(CollidableWeaponBehavior), pointer :: j_collidableWeaponBehavior
    class(IndexedAnimation), pointer :: j_indexedAnimationInterface
    integer(4) :: j_currentFrame
    class(Movement), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%jm_isExhausted_0() .and. (.not. this%jm_isDestroyed_0()))) then
            if (this%jm_isReadyForExplosion_0()) then
                j_indexedAnimationInterface => IndexedAnimation_jcast(this%jm_getAnimationInterface_0())
                j_currentFrame = j_indexedAnimationInterface%jm_getFrame_0()
                if ((j_currentFrame < (j_indexedAnimationInterface%jm_getAnimationSize_0() - 1))) then
                    call j_indexedAnimationInterface%jm_nextFrame_0()
                else
                    call this%jm_setDestroyed_1(.true.)
                end if
            else
                j_collidableWeaponBehavior => CollidableWeaponBehavior_jcast(this%jm_getCollidableInferface_0())
                if (j_collidableWeaponBehavior%jm_isCollided_0()) then
                    call this%jm_setAnimationInterface_1(this%f_destroyedAnimationInterface)
                    jtemp3 => this%jm_getMovement_0()
                    call jtemp3%jm_stop_0()
                    call this%jm_setReadyForExplosion_1(.true.)
                else
                    call this%jm_setDestroyed_1(.true.)
                end if
            end if
        end if
        call this%f_movement%jm_process_1(this)
        this%f_totalDamage = (this%f_totalDamage + this%f_weaponProperties%jm_getDissipation_0())
  end subroutine

  recursive function WeaponLayer_jm_isDestroyed_0(this) result(jresult)
    class(WeaponLayer), target :: this
    logical :: jresult
        jresult = this%f_destroyed
        return
  end function

  recursive subroutine WeaponLayer_jm_damage_2(this, j_damage, j_damageType)
    class(WeaponLayer), target :: this
    integer(4), value :: j_damage
    integer(4), value :: j_damageType
        this%f_totalDamage = (this%f_totalDamage + (j_damage * j_damage))
  end subroutine

  recursive subroutine WeaponLayer_jm_givePoints_1(this, j_total)
    class(WeaponLayer), target :: this
    integer(4), value :: j_total
    class(GameConfigurationUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => GameConfigurationUtil_jm_getInstance_0()
        call this%f_scoreableInterface%jm_addPoints_1((jtemp4%jm_getCompetitionValue_0() * j_total))
  end subroutine

  recursive function WeaponLayer_jm_isExhausted_0(this) result(jresult)
    class(WeaponLayer), target :: this
    logical :: jresult
        if (((this%f_totalDamage > this%jm_getInitDamage_0()) .or. (this%f_totalDamage < 0))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function WeaponLayer_jm_getDamage_1(this, j_damageType) result(jresult)
    class(WeaponLayer), target :: this
    integer(4), value :: j_damageType
    integer(4) :: jresult
    integer(4) :: j_total
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%jm_isExhausted_0())) then
            j_total = (this%jm_getInitDamage_0() - this%f_totalDamage)
            call this%jm_givePoints_1(j_total)
            jresult = j_total
            return
        end if
        jresult = 0
        return
  end function

  recursive subroutine WeaponLayer_jm_setDestroyed_1(this, j_destroyed)
    class(WeaponLayer), target :: this
    logical, value :: j_destroyed
    class(DestroyedLayerProcessor), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_destroyed = j_destroyed
        if (this%jm_isDestroyed_0()) then
            this%f_scoreableInterface => NoScoreable_jm_getInstance_0()
            jtemp5 => DestroyedLayerProcessor_jm_getInstance_0()
            call jtemp5%jm_add_1(this)
        end if
  end subroutine

  recursive function WeaponLayer_jm_getInitDamage_0(this) result(jresult)
    class(WeaponLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_initDamage
        return
  end function

  recursive subroutine WeaponLayer_jm_setAnimationInterface_1(this, j_animationInterface)
    class(WeaponLayer), target :: this
    class(Animation), target, optional :: j_animationInterface
        this%f_animationInterface => j_animationInterface
  end subroutine

  recursive function WeaponLayer_jm_getAnimationInterface_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive function WeaponLayer_jm_getInitAnimationInterfaceP_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_initAnimationInterface
        return
  end function

  recursive subroutine WeaponLayer_jm_setInitAnimationInterfaceP_1(this, j_initAnimationInterface)
    class(WeaponLayer), target :: this
    class(Animation), target, optional :: j_initAnimationInterface
        this%f_initAnimationInterface => j_initAnimationInterface
  end subroutine

  recursive function WeaponLayer_jm_getDestroyedAnimationInterface_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_destroyedAnimationInterface
        return
  end function

  recursive function WeaponLayer_jm_getOwnerLayerInterface_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_sourceLayerInterface
        return
  end function

  recursive subroutine WeaponLayer_jm_setOwnerLayerInterface_1(this, j_sourceLayerInterface)
    class(WeaponLayer), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
        this%f_sourceLayerInterface => j_sourceLayerInterface
  end subroutine

  recursive subroutine WeaponLayer_jm_paint_1(this, j_graphics)
    class(WeaponLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%jm_getViewPosition_0()
        call this%f_animationInterface%jm_paintXY_3(j_graphics, (j_viewPosition%jm_getX_0() - this%jm_getHalfWidth_0()), (j_viewPosition%jm_getY_0() - this%jm_getHalfHeight_0()))
  end subroutine

  recursive subroutine WeaponLayer_jm_paintThreed_1(this, j_graphics)
    class(WeaponLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%jm_getViewPosition_0()
        call this%f_animationInterface%jm_paintThreedXYZ_4(j_graphics, (j_viewPosition%jm_getX_0() - this%jm_getHalfWidth_0()), (j_viewPosition%jm_getY_0() - this%jm_getHalfHeight_0()), (j_viewPosition%jm_getZ_0() - this%jm_getHalfDepth_0()))
  end subroutine

  recursive function WeaponLayer_jm_getMovement_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(Movement), pointer :: jresult
        jresult => this%f_movement
        return
  end function

  recursive subroutine WeaponLayer_jm_setMovement_1(this, j_movement)
    class(WeaponLayer), target :: this
    class(Movement), target, optional :: j_movement
        this%f_movement => j_movement
  end subroutine

  recursive function WeaponLayer_jm_getType_0(this) result(jresult)
    class(WeaponLayer), target :: this
    integer(4) :: jresult
        jresult = WeaponLayer_jm_getStaticType_0()
        return
  end function

  recursive function WeaponLayer_jm_getStaticType_0() result(jresult)
    integer(4) :: jresult
        jresult = 0
        return
  end function

  recursive function WeaponLayer_jm_getMultiPlayerType_0(this) result(jresult)
    class(WeaponLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_multiPlayerType
        return
  end function

  recursive subroutine WeaponLayer_jm_setWeaponPropertiesP_1(this, j_weaponProperties)
    class(WeaponLayer), target :: this
    class(WeaponProperties), target, optional :: j_weaponProperties
        this%f_weaponProperties => j_weaponProperties
  end subroutine

  recursive function WeaponLayer_jm_getWeaponPropertiesP_0(this) result(jresult)
    class(WeaponLayer), target :: this
    class(WeaponProperties), pointer :: jresult
        jresult => this%f_weaponProperties
        return
  end function

  recursive function WeaponLayer_jm_implmentsTickableInterface_0(this) result(jresult)
    class(WeaponLayer), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine WeaponLayer_jm_set_1(this, j_gl)
    class(WeaponLayer), target :: this
    class(GL), target, optional :: j_gl
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_initAnimationInterface%jm_set_1(j_gl)
  end subroutine
end module WeaponLayer_m

