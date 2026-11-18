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
module StraightMultiProjectileWeaponPart_m
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
  use NoDecimalTrigTable_m
  use BasicWeaponPart_m
  implicit none

  type, extends(BasicWeaponPart) :: StraightMultiProjectileWeaponPart
    class(WeaponLayerCircularPool), pointer :: f_weaponLayerCircularStaticPool => null()
    integer(4) :: f_total = 0
    class(NoDecimalTrigTable), pointer :: f_noDecimalTrigTable => null()
  contains
    procedure :: jm_processScore_5 => StraightMultiProjectileWeaponPart_jm_processScore_5
  end type


contains

  function StraightMultiProjectileWeaponPart_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StraightMultiProjectileWeaponPart), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StraightMultiProjectileWeaponPart)
      jresult => object
    end select
  end function

  recursive function StraightMultiProjectileWeaponPart_jnew_7(j_animationInterface, j_sourceLayerInterface, j_weaponLayerCircularStaticPool, j_total, j_weaponProperties, j_scoreableInterface, j_relativeRelationship) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponLayerCircularPool), target, optional :: j_weaponLayerCircularStaticPool
    integer(4), value :: j_total
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(StraightMultiProjectileWeaponPart), pointer :: this
    allocate(this)
    this%jclass = 'StraightMultiProjectileWeaponPart'
    
    
    this%f_noDecimalTrigTable => NoDecimalTrigTable_jm_getInstance_0()
        continue ! super()
        this%f_total = j_total
        this%f_weaponLayerCircularStaticPool => j_weaponLayerCircularStaticPool
  end function

  recursive function StraightMultiProjectileWeaponPart_jm_createStraightMultiProjectileWeaponPart_2(j_animationInterface, j_weaponLayerCircularStaticPool) result(jresult)
    class(Animation), target, optional :: j_animationInterface
    class(WeaponLayerCircularPool), target, optional :: j_weaponLayerCircularStaticPool
    class(StraightMultiProjectileWeaponPart), pointer :: jresult
        jresult => StraightMultiProjectileWeaponPart_jnew_7(j_animationInterface, AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER(), j_weaponLayerCircularStaticPool, 2, WeaponProperties_jstatic_NULL_WEAPON_PROPERTIES(), NoScoreable_jm_getInstance_0(), RelativeRelationship_jstatic_NULL_RELATIVE_RELATIONSHIP())
        return
  end function

  recursive subroutine StraightMultiProjectileWeaponPart_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(StraightMultiProjectileWeaponPart), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(AllBinaryLayer), pointer :: j_sourceLayerInterface
    integer(4) :: j_reducedWidth
    integer(4) :: j_halfWidth
    integer(4) :: j_x
    integer(4) :: j_y
    integer(8) :: j_sine
    integer(4) :: j_beamX
    integer(8) :: j_cosine
    integer(4) :: j_beamY
    class(WeaponLayer), pointer :: j_weaponLayer
    integer(4) :: j_increment
    integer(4) :: j_next
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_sourceLayerInterface => this%jm_getOwnerLayerInterface_0()
        j_reducedWidth = (((j_sourceLayerInterface%jm_getWidth_0() * 8) / 10))
        j_halfWidth = (shifta(j_reducedWidth, iand(1, 31)))
        j_x = this%f_relativeRelationship%jm_getX_0()
        j_y = this%f_relativeRelationship%jm_getY_0()
        continue
        continue
        continue
        continue
        continue
        j_increment = (j_reducedWidth / ((this%f_total - 1)))
        j_next = (-j_halfWidth)
        j_index = 0
        do while ((j_index < this%f_total))
            j_sine = ((int(j_next, 8) * this%f_noDecimalTrigTable%jm_sin_1(j_angle)))
            j_beamX = JR_l2i(((j_sine / int(this%f_noDecimalTrigTable%f_SCALE, 8))))
            j_cosine = ((int(j_next, 8) * this%f_noDecimalTrigTable%jm_cos_1(j_angle)))
            j_beamY = (-JR_l2i(((j_cosine / int(this%f_noDecimalTrigTable%f_SCALE, 8)))))
            j_weaponLayer => this%f_weaponLayerCircularStaticPool%jm_getInstanceWeaponLayer_8(j_sourceLayerInterface, (j_x + j_beamX), (j_y + j_beamY), 0, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
            call j_allbinaryLayerManager%jm_append_1(j_weaponLayer)
            j_next = (j_next + j_increment)
            j_index = j_index + 1
        end do
  end subroutine
end module StraightMultiProjectileWeaponPart_m

