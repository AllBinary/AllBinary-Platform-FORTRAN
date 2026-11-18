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
! package org.allbinary.game.ag.layer.weapon.mine
module MineCountedPickedUpLayerInterfaceFactory_m
  use JR_m
  use FeaturedAnimationInterfaceFactoryInterfaceFactory_m
  use WeaponProperties_m
  use CountedPickedUpLayerInterfaceFactory_m
  use IconLayerFactory_m
  use PickedUpLayerInterfaceFactoryInterface_m
  use PickedUpLayerTypeFactory_m
  use WeaponLayerCircularPool_m
  use ScoreableInterface_m
  use AllBinaryLayer_m
  use SmallIntegerSingletonFactory_m
  use ABHashtable_m
  use Integer_m
  use MineLayerCircularStaticPool_m
  use MineWeaponResources_m
  implicit none

  type, extends(CountedPickedUpLayerInterfaceFactory) :: MineCountedPickedUpLayerInterfaceFactory
    class(WeaponLayerCircularPool), pointer :: f_weaponLayerCircularStaticPool => null()
    class(WeaponProperties), pointer :: f_weaponProperties => null()
    class(SmallIntegerSingletonFactory), pointer :: f_smallIntegerSingletonFactory => null()
  contains
    procedure :: jm_getTotal_0 => MineCountedPickedUpLayerInterfaceFactory_jm_getTotal_0
    procedure :: jm_getNextInstance_4 => MineCountedPickedUpLayerInterfaceFactory_jm_getNextInstance_4
  end type

  class(PickedUpLayerInterfaceFactoryInterface), pointer, save :: MineCountedPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
  logical, save :: MineCountedPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .false.

contains

  function MineCountedPickedUpLayerInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineCountedPickedUpLayerInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineCountedPickedUpLayerInterfaceFactory)
      jresult => object
    end select
  end function

  function MineCountedPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
    if (.not. MineCountedPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface) then
      MineCountedPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
      MineCountedPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => CountedPickedUpLayerInterfaceFactory_jstatic_NULL_COUNTED_PICKUP_LAYER_FACTORY()
    end if
    jresult => MineCountedPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface
  end function

  subroutine MineCountedPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(jvalue)
    class(PickedUpLayerInterfaceFactoryInterface), target, optional :: jvalue
    MineCountedPickedUpLayerInterfaceFactory_jset_pickedUpLayerInterfaceFactoryInterface = .true.
    if (present(jvalue)) then
      MineCountedPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => jvalue
    else
      MineCountedPickedUpLayerInterfaceFactory_jcell_pickedUpLayerInterfaceFactoryInterface => null()
    end if
  end subroutine

  recursive function MineCountedPickedUpLayerInterfaceFactory_jnew_0() result(this)
    class(MineCountedPickedUpLayerInterfaceFactory), pointer :: this
    class(PickedUpLayerTypeFactory), pointer :: jtemp1
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp2
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp3
    class(MineWeaponResources), pointer :: jtemp4
    class(AnimationInterfaceFactoryInterface), pointer :: jtemp5
    class(FeaturedAnimationInterfaceFactoryInterfaceFactory), pointer :: jtemp6
    class(MineWeaponResources), pointer :: jtemp7
    allocate(this)
    this%jclass = 'MineCountedPickedUpLayerInterfaceFactory'
    this%f_weaponLayerCircularStaticPool => MineLayerCircularStaticPool_jm_getInstance_0()
    this%f_weaponProperties => WeaponProperties_jnew_5((-1_8), (-1_8), int(0, 8), 8000, JR_i16(10))
    this%f_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        jtemp4 => MineWeaponResources_jm_getInstance_0()
        jtemp3 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp7 => MineWeaponResources_jm_getInstance_0()
        jtemp2 => jtemp3%jm_get_1(jtemp4%f_DROP_ICON_RESOURCE)
        jtemp6 => FeaturedAnimationInterfaceFactoryInterfaceFactory_jm_getInstance_0()
        jtemp1 => PickedUpLayerTypeFactory_jm_getInstance_0()
        jtemp5 => jtemp6%jm_get_1(jtemp7%f_DROP_RESOURCE)
        continue ! super()
  end function

  recursive subroutine MineCountedPickedUpLayerInterfaceFactory_jm_init_0()
        call MineCountedPickedUpLayerInterfaceFactory_jsetstatic_pickedUpLayerInterfaceFactoryInterface(MineCountedPickedUpLayerInterfaceFactory_jnew_0())
  end subroutine

  recursive function MineCountedPickedUpLayerInterfaceFactory_jm_getInstance_0() result(jresult)
    class(PickedUpLayerInterfaceFactoryInterface), pointer :: jresult
        jresult => MineCountedPickedUpLayerInterfaceFactory_jstatic_pickedUpLayerInterfaceFactoryInterface()
        return
  end function

  recursive function MineCountedPickedUpLayerInterfaceFactory_jm_getTotal_0(this) result(jresult)
    class(MineCountedPickedUpLayerInterfaceFactory), target :: this
    integer(4) :: jresult
        jresult = 3
        return
  end function

  recursive function MineCountedPickedUpLayerInterfaceFactory_jm_getNextInstance_4(this, j_hashtable, j_x, j_y, j_z) result(jresult)
    class(MineCountedPickedUpLayerInterfaceFactory), target :: this
    class(ABHashtable), target, optional :: j_hashtable
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(AllBinaryLayer), pointer :: jresult
    class(AllBinaryLayer), pointer :: j_sourceLayerInterface
    integer(4) :: j_angle
    class(ScoreableInterface), pointer :: j_scoreableInterface
        j_sourceLayerInterface => AllBinaryLayer_jcast(j_hashtable%jm_get_1(this%f_smallIntegerSingletonFactory%jm_getAt_1(0)))
        j_angle = JR_unboxInt(j_hashtable%jm_get_1(this%f_smallIntegerSingletonFactory%jm_getAt_1(1)))
        j_scoreableInterface => ScoreableInterface_jcast(j_sourceLayerInterface)
        jresult => this%f_weaponLayerCircularStaticPool%jm_getInstanceWeaponLayer_8(j_sourceLayerInterface, j_x, j_y, j_z, int(j_angle, 4), 0, this%f_weaponProperties, j_scoreableInterface)
        return
  end function
end module MineCountedPickedUpLayerInterfaceFactory_m

function MineCountedPickedUpLayerInterfaceFactory_jnew_0_jext() result(this)
  use MineCountedPickedUpLayerInterfaceFactory_m, only: JObject, MineCountedPickedUpLayerInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MineCountedPickedUpLayerInterfaceFactory_jnew_0()
end function

