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
! package org.allbinary.game.part.weapon
module BasicWeaponPart_m
  use JR_m
  use Animation_m
  use NullAnimationFactory_m
  use WeaponProperties_m
  use PartInterface_m
  use NoScoreable_m
  use ScoreableInterface_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use CommonStrings_m
  use ViewPositionBase_m
  use SalvoInterface_m
  implicit none

  type, extends(PartInterface) :: BasicWeaponPart
    class(Animation), pointer :: f_animationInterface => null()
    class(AllBinaryLayer), pointer :: f_ownerLayerInterface => null()
    class(WeaponProperties), pointer :: f_weaponProperties => null()
    class(ScoreableInterface), pointer :: f_scoreableInterface => null()
    class(RelativeRelationship), pointer :: f_relativeRelationship => null()
  contains
    procedure :: jm_init_4 => BasicWeaponPart_jm_init_4
    procedure :: jm_process_3 => BasicWeaponPart_jm_process_3
    procedure :: jm_processScore_5 => BasicWeaponPart_jm_processScore_5
    procedure :: jm_getOwnerLayerInterface_0 => BasicWeaponPart_jm_getOwnerLayerInterface_0
    procedure :: jm_setOwnerLayerInterface_1 => BasicWeaponPart_jm_setOwnerLayerInterface_1
    procedure :: jm_getAnimationInterface_0 => BasicWeaponPart_jm_getAnimationInterface_0
    procedure :: jm_setAnimationInterface_1 => BasicWeaponPart_jm_setAnimationInterface_1
    procedure :: jm_paint_1 => BasicWeaponPart_jm_paint_1
    procedure :: jm_paintThreed_1 => BasicWeaponPart_jm_paintThreed_1
    procedure :: jm_getWeaponProperties_0 => BasicWeaponPart_jm_getWeaponProperties_0
    procedure :: jm_setWeaponProperties_1 => BasicWeaponPart_jm_setWeaponProperties_1
  end type

  ! BasicWeaponPart used as a SalvoInterface
  type, extends(SalvoInterface) :: BasicWeaponPart_jas_SalvoInterface
    class(BasicWeaponPart), pointer :: jtarget => null()
  contains
    procedure :: jm_process_3 => BasicWeaponPart_jas_SalvoInterface_jm_process_3
    procedure :: jm_processScore_5 => BasicWeaponPart_jas_SalvoInterface_jm_processScore_5
  end type

  class(BasicWeaponPart), pointer, save :: BasicWeaponPart_jcell_NULL_BASIC_WEAPON_PART => null()
  logical, save :: BasicWeaponPart_jset_NULL_BASIC_WEAPON_PART = .false.

contains

  function BasicWeaponPart_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicWeaponPart), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicWeaponPart)
      jresult => object
    end select
  end function

  function BasicWeaponPart_jas_SalvoInterface_jnew(object) result(jresult)
    class(BasicWeaponPart), target :: object
    class(BasicWeaponPart_jas_SalvoInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'BasicWeaponPart'
    jresult%jtarget => object
  end function

  recursive subroutine BasicWeaponPart_jas_SalvoInterface_jm_process_3(this, j_allbinaryLayerManager, j_angle, j_otherAngle)
    class(BasicWeaponPart_jas_SalvoInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    call this%jtarget%jm_process_3(j_allbinaryLayerManager, j_angle, j_otherAngle)
  end subroutine

  recursive subroutine BasicWeaponPart_jas_SalvoInterface_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(BasicWeaponPart_jas_SalvoInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    call this%jtarget%jm_processScore_5(j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
  end subroutine

  function BasicWeaponPart_jstatic_NULL_BASIC_WEAPON_PART() result(jresult)
    class(BasicWeaponPart), pointer :: jresult
    class(NullAnimationFactory), pointer :: jtemp1
    if (.not. BasicWeaponPart_jset_NULL_BASIC_WEAPON_PART) then
      BasicWeaponPart_jset_NULL_BASIC_WEAPON_PART = .true.
      jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
    BasicWeaponPart_jcell_NULL_BASIC_WEAPON_PART => BasicWeaponPart_jm_createBasicWeaponPart_1(jtemp1%jm_getInstance_1(0))
    end if
    jresult => BasicWeaponPart_jcell_NULL_BASIC_WEAPON_PART
  end function

  subroutine BasicWeaponPart_jsetstatic_NULL_BASIC_WEAPON_PART(jvalue)
    class(BasicWeaponPart), target, optional :: jvalue
    BasicWeaponPart_jset_NULL_BASIC_WEAPON_PART = .true.
    if (present(jvalue)) then
      BasicWeaponPart_jcell_NULL_BASIC_WEAPON_PART => jvalue
    else
      BasicWeaponPart_jcell_NULL_BASIC_WEAPON_PART => null()
    end if
  end subroutine

  recursive function BasicWeaponPart_jnew_5(j_animationInterface, j_sourceLayerInterface, j_weaponProperties, j_scoreableInterface, j_relativeRelationship) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(BasicWeaponPart), pointer :: this
    class(NullAnimationFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicWeaponPart'
    jtemp2 => NullAnimationFactory_jm_getFactoryInstance_0()
    this%f_animationInterface => jtemp2%jm_getInstance_1(0)
    this%f_ownerLayerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
    this%f_weaponProperties => WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES()
    this%f_scoreableInterface => NoScoreable_jm_getInstance_0()
    this%f_relativeRelationship => RelativeRelationship_jstatic_NULL_RELATIVE_RELATIONSHIP()
        call this%jm_init_4(j_sourceLayerInterface, j_weaponProperties, j_scoreableInterface, j_relativeRelationship)
        call this%jm_setAnimationInterface_1(j_animationInterface)
  end function

  recursive function BasicWeaponPart_jm_createBasicWeaponPart_1(j_animationInterface) result(jresult)
    class(Animation), target, optional :: j_animationInterface
    class(BasicWeaponPart), pointer :: jresult
        jresult => BasicWeaponPart_jnew_5(j_animationInterface, AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER(), WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable_jm_getInstance_0(), RelativeRelationship_jstatic_NULL_RELATIVE_RELATIONSHIP())
        return
  end function

  recursive subroutine BasicWeaponPart_jm_init_4(this, j_sourceLayerInterface, j_weaponProperties, j_scoreableInterface, j_relativeRelationship)
    class(BasicWeaponPart), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setOwnerLayerInterface_1(j_sourceLayerInterface)
        call this%jm_setWeaponProperties_1(j_weaponProperties)
        this%f_scoreableInterface => j_scoreableInterface
        this%f_relativeRelationship => j_relativeRelationship
  end subroutine

  recursive subroutine BasicWeaponPart_jm_process_3(this, j_allbinaryLayerManager, j_angle, j_otherAngle)
    class(BasicWeaponPart), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_processScore_5(j_allbinaryLayerManager, j_angle, j_otherAngle, this%jm_getWeaponProperties_0(), this%f_scoreableInterface)
  end subroutine

  recursive subroutine BasicWeaponPart_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(BasicWeaponPart), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(CommonStrings), pointer :: jtemp3
        jtemp3 => CommonStrings_jm_getInstance_0()
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive function BasicWeaponPart_jm_getOwnerLayerInterface_0(this) result(jresult)
    class(BasicWeaponPart), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_ownerLayerInterface
        return
  end function

  recursive subroutine BasicWeaponPart_jm_setOwnerLayerInterface_1(this, j_ownerLayerInterface)
    class(BasicWeaponPart), target :: this
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
        this%f_ownerLayerInterface => j_ownerLayerInterface
  end subroutine

  recursive function BasicWeaponPart_jm_getAnimationInterface_0(this) result(jresult)
    class(BasicWeaponPart), target :: this
    class(Animation), pointer :: jresult
        jresult => this%f_animationInterface
        return
  end function

  recursive subroutine BasicWeaponPart_jm_setAnimationInterface_1(this, j_animationInterface)
    class(BasicWeaponPart), target :: this
    class(Animation), target, optional :: j_animationInterface
        this%f_animationInterface => j_animationInterface
  end subroutine

  recursive subroutine BasicWeaponPart_jm_paint_1(this, j_graphics)
    class(BasicWeaponPart), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_viewX
    integer(4) :: j_viewY
    class(AllBinaryLayer), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => this%jm_getOwnerLayerInterface_0()
        j_viewPosition => jtemp4%jm_getViewPosition_0()
        j_viewX = j_viewPosition%jm_getX_0()
        j_viewY = j_viewPosition%jm_getY_0()
        call this%f_animationInterface%jm_paintXY_3(j_graphics, j_viewX, j_viewY)
  end subroutine

  recursive subroutine BasicWeaponPart_jm_paintThreed_1(this, j_graphics)
    class(BasicWeaponPart), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function BasicWeaponPart_jm_getWeaponProperties_0(this) result(jresult)
    class(BasicWeaponPart), target :: this
    class(WeaponProperties), pointer :: jresult
        jresult => this%f_weaponProperties
        return
  end function

  recursive subroutine BasicWeaponPart_jm_setWeaponProperties_1(this, j_weaponProperties)
    class(BasicWeaponPart), target :: this
    class(WeaponProperties), target, optional :: j_weaponProperties
        this%f_weaponProperties => j_weaponProperties
  end subroutine
end module BasicWeaponPart_m

