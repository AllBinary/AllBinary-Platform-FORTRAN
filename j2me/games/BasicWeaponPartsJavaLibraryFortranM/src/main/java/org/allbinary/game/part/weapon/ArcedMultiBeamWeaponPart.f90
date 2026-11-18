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
module ArcedMultiBeamWeaponPart_m
  use JR_m
  use Animation_m
  use WeaponProperties_m
  use WeaponLayer_m
  use WeaponLayerCircularPool_m
  use ScoreableInterface_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use AngleFactory_m
  use BasicWeaponPart_m
  implicit none

  type, extends(BasicWeaponPart) :: ArcedMultiBeamWeaponPart
    class(WeaponLayerCircularPool), pointer :: f_weaponLayerCircularStaticPool => null()
    integer(4) :: f_total = 0
    integer(4) :: f_TOTAL_ANGLE = 0
  contains
    procedure :: jm_processScore_5 => ArcedMultiBeamWeaponPart_jm_processScore_5
  end type


contains

  function ArcedMultiBeamWeaponPart_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArcedMultiBeamWeaponPart), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArcedMultiBeamWeaponPart)
      jresult => object
    end select
  end function

  recursive function ArcedMultiBeamWeaponPart_jnew_7(j_animationInterface, j_sourceLayerInterface, j_weaponLayerCircularStaticPool, j_total, j_weaponProperties, j_scoreableInterface, j_relativeRelationship) result(this)
    class(Animation), target, optional :: j_animationInterface
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponLayerCircularPool), target, optional :: j_weaponLayerCircularStaticPool
    integer(4), value :: j_total
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(ArcedMultiBeamWeaponPart), pointer :: this
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ArcedMultiBeamWeaponPart'
    
    
    jtemp1 => AngleFactory_jm_getInstance_0()
    this%f_TOTAL_ANGLE = jtemp1%f_TOTAL_ANGLE
        continue ! super()
        this%f_total = j_total
        this%f_weaponLayerCircularStaticPool => j_weaponLayerCircularStaticPool
  end function

  recursive subroutine ArcedMultiBeamWeaponPart_jm_processScore_5(this, j_allbinaryLayerManager, j_angle, j_otherAngle, j_weaponProperties, j_scoreableInterface)
    class(ArcedMultiBeamWeaponPart), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    integer(4) :: j_increment
    integer(4) :: j_minAngle
    integer(4) :: j_next
    class(WeaponLayer), pointer :: j_weaponLayer
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_increment = JR_i16(((((this%f_total - 1)) / this%f_TOTAL_ANGLE)))
        j_minAngle = JR_i16(((j_angle - (shifta(((j_increment * this%f_total)), iand(1, 31))))))
        j_next = 0
        continue
        j_index = 0
        do while ((j_index < this%f_total))
            j_weaponLayer => this%f_weaponLayerCircularStaticPool%jm_getInstanceWeaponLayer_8(this%jm_getOwnerLayerInterface_0(), this%f_relativeRelationship%jm_getX_0(), this%f_relativeRelationship%jm_getY_0(), 0, ((j_minAngle + j_increment)), j_otherAngle, j_weaponProperties, j_scoreableInterface)
            call j_allbinaryLayerManager%jm_append_1(j_weaponLayer)
            j_next = (j_next + j_increment)
            j_index = j_index + 1
        end do
  end subroutine
end module ArcedMultiBeamWeaponPart_m

