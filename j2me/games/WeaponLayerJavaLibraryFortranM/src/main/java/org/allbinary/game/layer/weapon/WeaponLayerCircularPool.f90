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
module WeaponLayerCircularPool_m
  use JR_m
  use WeaponProperties_m
  use ScoreableInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerCircularPool_m
  use WeaponLayer_m
  implicit none

  type, extends(AllBinaryLayerCircularPool) :: WeaponLayerCircularPool
  contains
    procedure :: jm_getInstanceWeaponLayer_8 => WeaponLayerCircularPool_jm_getInstanceWeaponLayer_8
  end type


contains

  function WeaponLayerCircularPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WeaponLayerCircularPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WeaponLayerCircularPool)
      jresult => object
    end select
  end function

  recursive function WeaponLayerCircularPool_jnew_0() result(this)
    class(WeaponLayerCircularPool), pointer :: this
    allocate(this)
    this%jclass = 'WeaponLayerCircularPool'
        continue
  end function

  recursive function WeaponLayerCircularPool_jm_getInstanceWeaponLayer_8(this, j_sourceLayerInterface, j_x, j_y, j_z, j_angle, j_otherAngle, j_weaponProperties, j_scoreable) result(jresult)
    class(WeaponLayerCircularPool), target :: this
    class(AllBinaryLayer), target, optional :: j_sourceLayerInterface
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    integer(4), value :: j_angle
    integer(4), value :: j_otherAngle
    class(WeaponProperties), target, optional :: j_weaponProperties
    class(ScoreableInterface), target, optional :: j_scoreable
    class(WeaponLayer), pointer :: jresult
    class(WeaponLayer), pointer :: j_weaponLayer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_weaponLayer => WeaponLayer_jcast(this%AllBinaryLayerCircularPool%jm_getNextInstance_0())
        call j_weaponLayer%jm_initXYZ_3(j_x, j_y, j_z)
        call j_weaponLayer%jm_init_5(j_sourceLayerInterface, j_angle, j_otherAngle, j_weaponProperties, j_scoreable)
        jresult => j_weaponLayer
        return
  end function
end module WeaponLayerCircularPool_m

function WeaponLayerCircularPool_jnew_0_jext() result(this)
  use WeaponLayerCircularPool_m, only: JObject, WeaponLayerCircularPool_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => WeaponLayerCircularPool_jnew_0()
end function

