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
module MineLayerCircularStaticPool_m
  use JR_m
  use WeaponLayerCircularPool_m
  use ViewPositionFactoryInterface_m
  use MineCountedPickedUpLayerInterfaceFactory_m
  use MineLayerFactory_m
  implicit none

  type, extends(JObject) :: MineLayerCircularStaticPool
  end type

  class(WeaponLayerCircularPool), pointer, save :: MineLayerCircularStaticPool_jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL => null()
  logical, save :: MineLayerCircularStaticPool_jset_WEAPON_LAYER_CIRCULAR_STATIC_POOL = .false.

contains

  function MineLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineLayerCircularStaticPool)
      jresult => object
    end select
  end function

  function MineLayerCircularStaticPool_jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL() result(jresult)
    class(WeaponLayerCircularPool), pointer :: jresult
    if (.not. MineLayerCircularStaticPool_jset_WEAPON_LAYER_CIRCULAR_STATIC_POOL) then
      MineLayerCircularStaticPool_jset_WEAPON_LAYER_CIRCULAR_STATIC_POOL = .true.
      MineLayerCircularStaticPool_jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL => WeaponLayerCircularPool_jnew_0()
    end if
    jresult => MineLayerCircularStaticPool_jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL
  end function

  subroutine MineLayerCircularStaticPool_jsetstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL(jvalue)
    class(WeaponLayerCircularPool), target, optional :: jvalue
    MineLayerCircularStaticPool_jset_WEAPON_LAYER_CIRCULAR_STATIC_POOL = .true.
    if (present(jvalue)) then
      MineLayerCircularStaticPool_jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL => jvalue
    else
      MineLayerCircularStaticPool_jcell_WEAPON_LAYER_CIRCULAR_STATIC_POOL => null()
    end if
  end subroutine

  function MineLayerCircularStaticPool_jnew_0() result(this)
    class(MineLayerCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'MineLayerCircularStaticPool'
  end function

  recursive subroutine MineLayerCircularStaticPool_jm_init_1(j_viewPositionFactoryInterface)
    class(ViewPositionFactoryInterface), target, optional :: j_viewPositionFactoryInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call MineCountedPickedUpLayerInterfaceFactory_jm_init_0()
        associate (jstatic_N68409 => MineLayerCircularStaticPool_jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL())
        call jstatic_N68409%jm_initAllBinaryLayerCircularPool_2(MineLayerFactory_jnew_1(j_viewPositionFactoryInterface), 20)
        end associate
  end subroutine

  recursive function MineLayerCircularStaticPool_jm_getInstance_0() result(jresult)
    class(WeaponLayerCircularPool), pointer :: jresult
        jresult => MineLayerCircularStaticPool_jstatic_WEAPON_LAYER_CIRCULAR_STATIC_POOL()
        return
  end function
end module MineLayerCircularStaticPool_m

