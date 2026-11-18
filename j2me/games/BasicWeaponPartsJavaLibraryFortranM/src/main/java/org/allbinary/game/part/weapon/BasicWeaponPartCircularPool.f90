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
module BasicWeaponPartCircularPool_m
  use JR_m
  use WeaponProperties_m
  use ScoreableInterface_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use BasicWeaponPart_m
  use BasicWeaponPartFactoryInterface_m
  implicit none

  type, extends(JObject) :: BasicWeaponPartCircularPool
    class(BasicWeaponPart), pointer :: f_basicWeaponPart => null()
  contains
    procedure :: jm_init_1 => BasicWeaponPartCircularPool_jm_init_1
    procedure :: jm_getInstance_4 => BasicWeaponPartCircularPool_jm_getInstance_4
  end type

  class(BasicWeaponPartCircularPool), pointer, save :: BasicWeaponPartCircularPool_jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL => null()
  logical, save :: BasicWeaponPartCircularPool_jset_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = .false.

contains

  function BasicWeaponPartCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicWeaponPartCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicWeaponPartCircularPool)
      jresult => object
    end select
  end function

  function BasicWeaponPartCircularPool_jstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL() result(jresult)
    class(BasicWeaponPartCircularPool), pointer :: jresult
    if (.not. BasicWeaponPartCircularPool_jset_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL) then
      BasicWeaponPartCircularPool_jset_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = .true.
      BasicWeaponPartCircularPool_jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL => BasicWeaponPartCircularPool_jnew_0()
    end if
    jresult => BasicWeaponPartCircularPool_jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL
  end function

  subroutine BasicWeaponPartCircularPool_jsetstatic_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL(jvalue)
    class(BasicWeaponPartCircularPool), target, optional :: jvalue
    BasicWeaponPartCircularPool_jset_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL = .true.
    if (present(jvalue)) then
      BasicWeaponPartCircularPool_jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL => jvalue
    else
      BasicWeaponPartCircularPool_jcell_NULL_BASIC_WEAPON_PART_CIRCULAR_POOL => null()
    end if
  end subroutine

  function BasicWeaponPartCircularPool_jnew_0() result(this)
    class(BasicWeaponPartCircularPool), pointer :: this
    allocate(this)
    this%jclass = 'BasicWeaponPartCircularPool'
    this%f_basicWeaponPart => BasicWeaponPart_jstatic_NULL_BASIC_WEAPON_PART()
  end function

  recursive subroutine BasicWeaponPartCircularPool_jm_init_1(this, j_basicWeaponPartFactoryInterface)
    class(BasicWeaponPartCircularPool), target :: this
    class(BasicWeaponPartFactoryInterface), target, optional :: j_basicWeaponPartFactoryInterface
        this%f_basicWeaponPart => j_basicWeaponPartFactoryInterface%jm_getInstance_0()
  end subroutine

  recursive function BasicWeaponPartCircularPool_jm_getInstance_4(this, j_sourceLayerInterface, j_weaponProperties, j_scoreableInterface, j_relativeRelationship) result(jresult)
    class(BasicWeaponPartCircularPool), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreableInterface
    class(RelativeRelationship), target, optional :: j_relativeRelationship
    class(BasicWeaponPart), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_basicWeaponPart%jm_init_4(j_sourceLayerInterface, j_weaponProperties, j_scoreableInterface, j_relativeRelationship)
        jresult => this%f_basicWeaponPart
        return
  end function
end module BasicWeaponPartCircularPool_m

