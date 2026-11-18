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
module BasicProjectileWeaponPart_m
  use JR_m
  use Animation_m
  use WeaponProperties_m
  use WeaponLayer_m
  use WeaponLayerCircularPool_m
  use NoScoreable_m
  use ScoreableInterface_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use BasicWeaponPart_m
  implicit none

  type, extends(BasicWeaponPart) :: BasicProjectileWeaponPart
    class(WeaponLayerCircularPool), pointer :: f_weaponLayerCircularStaticPool => null()
  contains
    procedure :: jm_processScore_5 => BasicProjectileWeaponPart_jm_processScore_5
  end type


contains

  function BasicProjectileWeaponPart_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicProjectileWeaponPart), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicProjectileWeaponPart)
      jresult => object
    end select
  end function

  recursive function BasicProjectileWeaponPart_jnew_6(j_animationInterface, j_sourceLayerInterface, j_weaponLayerCircularStaticPool, j_weaponProperties, j_scoreableInterface, j_relativeRelationship) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponLayerCircularPool), target, optional :: j_weaponLayerCircularStaticPool
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(BasicProjectileWeaponPart), pointer :: this
    allocate(this)
    this%jclass = 'BasicProjectileWeaponPart'
    
        continue ! super()
        this%f_weaponLayerCircularStaticPool => j_weaponLayerCircularStaticPool
  end function

  recursive function BasicProjectileWeaponPart_jm_createBasicProjectileWeaponPart_2(j_animationInterface, j_weaponLayerCircularStaticPool) result(jresult)
    class(Animation), target, optional :: j_animationInterface
    class(WeaponLayerCircularPool), target, optional :: j_weaponLayerCircularStaticPool
    class(BasicProjectileWeaponPart), pointer :: jresult
        jresult => BasicProjectileWeaponPart_jnew_6(j_animationInterface, AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER(), j_weaponLayerCircularStaticPool, WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable_jm_getInstance_0(), RelativeRelationship_jstatic_NULL_RELATIVE_RELATIONSHIP())
        return
  end function

  recursive subroutine BasicProjectileWeaponPart_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(BasicProjectileWeaponPart), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(WeaponLayer), pointer :: j_weaponLayer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_weaponLayer => this%f_weaponLayerCircularStaticPool%jm_getInstanceWeaponLayer_8(this%jm_getOwnerLayerInterface_0(), this%f_relativeRelationship%jm_getX_0(), this%f_relativeRelationship%jm_getY_0(), this%f_relativeRelationship%jm_getZ_0(), j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
        call j_allbinaryLayerManager%jm_append_1(j_weaponLayer)
  end subroutine
end module BasicProjectileWeaponPart_m

